/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package devdoc.controller;

import devdoc.model.User;
import devdoc.repo.UserRepository;
import devdoc.service.UserService;
import static devdoc.util.ViewNameConstants.INDEX;
import static devdoc.util.ViewNameConstants.LOGIN;
import static devdoc.util.ViewNameConstants.REGISTER;
import java.util.Iterator;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Inzimam Tariq
 */
@Controller
public class RegisterController {

    @Autowired
    UserRepository repo;

    @Autowired
    UserService userService;

    @RequestMapping("/")
    public String home() {
        System.out.println("/ Working!!!!");
        return "redirect:" + REGISTER;
    }

    @RequestMapping(INDEX)
    public String index() {
        System.out.println("Index Working!!!!");
        return REGISTER;
    }

    @RequestMapping("/register")
    public String register() {
        System.out.println("register Working!!!!");
        return REGISTER;
    }

    @PostMapping("/register")
    public ModelAndView registerUser(@Valid User user, BindingResult result) {
        System.out.println("\n\nInside registerUser Method\n\n");

        ModelAndView mv = new ModelAndView();
        String validaError = "You need to fix these errors:";
        for (Object object : result.getAllErrors()) {
            if (object instanceof FieldError) {
                FieldError fieldError = (FieldError) object;
                validaError += "\n" + fieldError.getField() + ", " + fieldError.getDefaultMessage();

                System.out.println("Error from bindingResult = " + fieldError.getDefaultMessage());
            }
        }
        System.out.println("Total validationError = " + validaError);

        System.out.println("\nprocessUserRegistration"
                + "\nThese records are from user input"
                + "\nUsername = " + user.getUsername() + "\nEmail = " + user.getEmail()
                + "\nFull Name = " + user.getFullName() + "\nPassword = " + user.getPassword()
                + "\nIP Address = " + user.getIpAddress());
        if (result.hasErrors()) {
            mv.setViewName(REGISTER);
            return new ModelAndView("redirect:" + REGISTER, "validationError", validaError);
        }
        boolean isUsernamePresent = userService.isUserByUsernamePresent(user.getUsername());
        boolean isEmailPresent = userService.isUserByEmailPresent(user.getEmail());

        //check if username or email already present in database
        if (isUsernamePresent || isEmailPresent) {
            return new ModelAndView("redirect:" + REGISTER, "error", "This username or email alreary exit!");
        } else {
            try {
                userService.saveUser(user);
            } catch (Exception e) {
                return new ModelAndView("redirect:" + REGISTER, "error", "Error saving data!");
//                mv.addObject("error", "Something went wrong!");
            }

            // check if the user successfully have been added to database by getting current user
            User newUser = userService.getUserlByEmailOrUsername(user.getUsername(), "fromProcessUserRegistration");
            if (user.getUsername().equals(newUser.getUsername())) {
                String msg = "You have successfully created an account! check your email to confirm your registration";
                return new ModelAndView("redirect:" + LOGIN, "msg", msg);
            }
        }

        return mv;
    }

    @RequestMapping(LOGIN)
    public String login() {
        System.out.println("login Working!!!!");

        return LOGIN;
    }

    //for 403 access denied page
    @RequestMapping(value = "/403", method = RequestMethod.GET)
    public ModelAndView accesssDenied() {

        ModelAndView model = new ModelAndView();

        //check if user is login
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (!(auth instanceof AnonymousAuthenticationToken)) {
            UserDetails userDetail = (UserDetails) auth.getPrincipal();
            model.addObject("username", userDetail.getUsername());
        }

        model.setViewName("403");
        return model;

    }

//    //for 404 page not found
//    @RequestMapping(value = "/error", method = RequestMethod.GET)
//    public ModelAndView pageNotFound() {
//
//        ModelAndView model = new ModelAndView();
//        model.setViewName("error");
//        return model;
//
//    }
//    @RequestMapping("/logout")
//    public String login_logout(Model model) {
//        model.addAttribute("message", "Successfully Logged Out!");
//        System.out.println("Login working!!!!");
//        return LOGIN;
//    }
}
