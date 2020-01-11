/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package devdoc.controller;

import devdoc.model.SlUrl;
import devdoc.model.User;
import devdoc.repo.UrlRepository;
import devdoc.service.SlUrlService;
import devdoc.service.UserService;
import devdoc.util.AppUtils;
import devdoc.util.Pager;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Inzimam Tariq
 */
@Controller
public class HomeController {

    UserService userService;
    SlUrlService slUrlService;
    UrlRepository urlRepository;
    BCryptPasswordEncoder bCryptPasswordEncoder;

    @Autowired
    public HomeController(UserService userService, SlUrlService slUrlService,
            UrlRepository urlRepository, BCryptPasswordEncoder bCryptPasswordEncoder) {
        this.userService = userService;
        this.slUrlService = slUrlService;
        this.urlRepository = urlRepository;
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
    }

    @RequestMapping("/MailTemplate")
    public String openMailTemp() {
        return "emailspecimen";
    }

    @RequestMapping("/faqs")
    public ModelAndView openFaqs(ModelAndView mv) {
        String sitename = AppUtils.getSiteName();
        mv.addObject("sitename", sitename);
        mv.setViewName("faqs");
        return mv;
    }

    @RequestMapping("/dashboard")
    public ModelAndView dashboard(ModelAndView mv) {
        String username = userService.getCurrentLoggedinUsername();
        System.out.println("Inside /dashboard\nuNameFrom Auth = " + username);
        User user = userService.getUserlByEmailOrUsername(username, "Dashboard");
//        List<SlUrl> urlTotal = urlRepository.findLinkByUser(u);
//        System.out.println("\nList size = " + urlTotal.size());
        Date today = new Date();

        Date days30 = AppUtils.getDateByDays(-30);
        Date days7 = AppUtils.getDateByDays(-7);
        Date hour24 = AppUtils.getDateByHours(-23);


        System.out.println("URL Count by User = " + urlRepository.countUrls(user));
        System.out.println("URL Count by User between dates= " + urlRepository.countUrlsBetweenDates(user, days7, today));

        mv.setViewName("dashboard");
        mv.addObject("username", username);
        mv.addObject("urlTotal", urlRepository.countUrls(user));
        mv.addObject("url30days", urlRepository.countUrlsBetweenDates(user, days30, today));
        mv.addObject("url7days", urlRepository.countUrlsBetweenDates(user, days7, today));
        mv.addObject("urlToday", urlRepository.countUrlsBetweenDates(user, hour24, today));
        mv.addObject("user", user);
        return mv;
    }

    @RequestMapping("/userProfile/{username}")
    public ModelAndView viewProfile(ModelAndView mv, @ModelAttribute("user") User user,
            @PathVariable("username") String username) {

        if (userService.userHasRight(username)) {
            user = userService.getUserlByEmailOrUsername(username, "UserProfile");

            System.out.println("Inside /profile\nUsername = " + user.getUsername());
            mv.setViewName("profile");
        }

        mv.addObject("user", user);

        return mv;
    }

    @PostMapping("/userProfile/{username}")
    public ModelAndView updateProfile(ModelAndView mv, User userFromInput,
            @PathVariable String username) {
        String currentUsername = userService.getCurrentLoggedinUsername();

        System.out.println("Inside /updateProfile\nUsername = " + userFromInput.getUsername());
        User userFromDb = userService.getUserlByEmailOrUsername(username, "FromUpdateProfile");
        if (userFromInput.getPassword() != null) {
            userFromDb.setPassword(bCryptPasswordEncoder.encode(userFromInput.getPassword()));
        }
        userFromDb.setEmail(userFromInput.getEmail());
        userFromDb.setFullName(userFromInput.getFullName());

        userService.updateUser(userFromDb);
        return new ModelAndView("redirect:" + "/dashboard", "msg", "Profile Updated Successfully!");

//        return mv;
    }

    @RequestMapping("/createSl")
    public ModelAndView openCreateSl(ModelAndView mv) {
        System.out.println("Inside /createSl");
        mv.setViewName("create_sl");

        return mv;
    }

    @PostMapping("/createSl")
    public ModelAndView createSl(SlUrl slUrl) {
        System.out.println("Inside /createSl Post\nDestUrl = " + slUrl.getDestinationUrlLink());

        String username = userService.getCurrentLoggedinUsername();
        User user = userService.getUserlByEmailOrUsername(username, "FromCreateSl");
        slUrl.setUser(user);
        slUrl.setShortUrlLink(slUrlService.getShortenUrl());
        slUrl.setCreationDate(new Date());
        urlRepository.save(slUrl);

        return new ModelAndView("redirect:/userLinks");
    }

    @RequestMapping("/userLinks")
    public ModelAndView userLinks(ModelAndView mv, HttpServletRequest request) {
        System.out.println("Inside /userLinks");

        String username = userService.getCurrentLoggedinUsername();
        User user = userService.getUserlByEmailOrUsername(username, "FromUserLinks");
        List<SlUrl> urlList = urlRepository.findLinkByUser(user);

        mv.addObject("data", urlList);
        mv.addObject("baseUrl", AppUtils.getBaseUrl(request));
        mv.setViewName("userlinks");

        System.out.println("\nURL = " + AppUtils.getBaseUrl(request));

        return mv;
    }

    @RequestMapping("/deleteUserAccount/{username}")
    public ModelAndView deleteAccount(ModelAndView mv, @PathVariable String username) {
        System.out.println("Inside /deleteUserAccount /username = " + username);
        mv.setViewName("delete_user");

        return mv;
    }

    @PostMapping("/deleteUserAccount/{username}")
    public ModelAndView deleteUserAccount(ModelAndView mv, @PathVariable String username) {
        System.out.println("Inside /deleteUserAccount /username = " + username);
        User user = userService.getUserlByEmailOrUsername(username, "FromDeleteAccount");
        userService.deleteUser(user);
        mv.setViewName("register");
        mv.addObject("error", "You have deleted your account. If you want to login, you have to register a new account! ");

        return mv;
    }

    @GetMapping("/urls")
    public ModelAndView openPageableUrls(ModelAndView mv, HttpServletRequest request,
            @RequestParam(defaultValue = "0") int page) {
        System.out.println("Inside /urls");
        Page<SlUrl> urls = slUrlService.getUrlsByPage(page, 5);
        List<SlUrl> urlList = urls.getContent();
        System.out.println("Url count = " + urls.getSize()
                + " Number = " + urls.getNumber() + " Elements = " + urls.getNumberOfElements());
        Pager pager = new Pager(urls);

        mv.addObject("baseUrl", AppUtils.getBaseUrl(request));
        mv.addObject("pager", pager);
        urls.getTotalPages();
        mv.addObject("page", urls);
        mv.setViewName("pagination");

        for (int i = 0; i < urlList.size(); i++) {
            System.out.println("\nURLs Details:"
                    + "\nid = " + urlList.get(i).getId()
                    + "\nid = " + urlList.get(i).getDestinationUrlLink()
                    + "\nid = " + urlList.get(i).getShortUrlLink()
                    + "\nid = " + urlList.get(i).getUser().getUsername());
        }

        return mv;
    }

    @RequestMapping("/contactUs")
    public ModelAndView contactUs(ModelAndView mv) {
        System.out.println("Inside /contactUs");
        mv.setViewName("contactus");

        return mv;
    }
}
