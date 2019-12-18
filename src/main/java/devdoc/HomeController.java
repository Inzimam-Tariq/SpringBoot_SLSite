/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package devdoc;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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

    @Autowired
    UserService userService;

    SlUrl slUrl = new SlUrl();

//    @RequestMapping("/")
//    public ModelAndView homePage(ModelAndView mv, HttpServletRequest request) throws IOException {
//        System.out.println("Inside /");
//
//        mv.setViewName("home");
//        String ip = AppUtils.getCurrentIp();
//        mv.addObject("ip", ip);
//        mv.addObject("city", AppUtils.getCurrentCity());
//        System.err.println(AppUtils.getCurrentCity());
//        System.out.println("IP from request Addr = " + request.getRemoteAddr());
//        System.out.println("IP from request Host = " + request.getRemoteHost());
//        return mv;
//    }
    @RequestMapping("/home")
    public ModelAndView homePageWithParams(ModelAndView mv, @RequestParam(value = "username",
            required = false) String username,
            @RequestParam(value = "destinationUrl", required = false) String destinationUrl,
            HttpServletRequest request) throws IOException {
        System.out.println("Inside /home Get\nDestinationUrl = " + destinationUrl
                + "\nclaimerUsername = " + username);
        slUrl.setDestinationUrl(destinationUrl);
        slUrl.setUsername(username);

        mv.setViewName("home");

        return mv;
    }

    @PostMapping("/home")
    public ModelAndView submitHomeResponse(ModelAndView mv, HttpServletRequest request,
            HttpServletResponse httpResponse) throws IOException {
        System.out.println("Inside /home Post\n" + slUrl.getUsername());

        mv.setViewName("confirm_sl");
        String ip = AppUtils.getCurrentIp();
        mv.addObject("isValid", true);
        System.out.println("IP from request Addr = " + request.getRemoteAddr());
        System.out.println("IP from request Host = " + request.getRemoteHost());
        return mv;
    }

    @RequestMapping("/confirm_sl")
    public ModelAndView openConfirmSl(ModelAndView mv, HttpServletRequest request) throws IOException {
        System.out.println("Inside /confirmSl Get");

        mv.setViewName("confirm_sl");
        String ip = AppUtils.getCurrentIp();
        mv.addObject("isValid", true);
        System.out.println("IP from request Addr = " + request.getRemoteAddr());
        System.out.println("IP from request Host = " + request.getRemoteHost());
        return mv;
    }

    @PostMapping("/confirm_sl")
    public ModelAndView submitConfirmSl(ModelAndView mv, HttpServletRequest request) throws IOException {
        System.out.println("Inside /confirmSl Post");

        mv.setViewName("home");
        String ip = AppUtils.getCurrentIp();
        mv.addObject("ip", ip);
        mv.addObject("city", AppUtils.getCurrentCity());
        System.err.println(AppUtils.getCurrentCity());
        request.getRemoteAddr();

        return mv;
    }

    @RequestMapping("/shortUrl")
    public ModelAndView shortUrl(ModelAndView mv) {
        System.out.println("Inside /shorURL");
        mv.setViewName("short_url");

        return mv;
    }

    @RequestMapping("/dashboard")
    public ModelAndView dashboard(ModelAndView mv) {
        String username = userService.getCurrentLoggedinUsername();

        System.out.println("Inside /dashboard\nuNameFrom Auth = " + username);
        mv.setViewName("dashboard");
        mv.addObject("username", username);
        return mv;
    }

    @RequestMapping("/userProfile/{username}")
    public ModelAndView profile(@ModelAttribute("user") User user, @PathVariable("username") String username, ModelAndView mv) {

        user = userService.getUserDetailByEmailOrUsername(username, "UserProfile");

        System.out.println("Inside /profile\nUsername = " + user.getUsername());
        mv.setViewName("profile");

        mv.addObject("user", user);

        return mv;
    }
    

//    @RequestMapping("/customError")
//    public ModelAndView error(ModelAndView mv, HttpServletRequest request) throws IOException {
//        System.out.println("Inside /error");
//        mv.setViewName("error");
//
//        return mv;
//    }
}
