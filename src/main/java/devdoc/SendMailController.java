/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package devdoc;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Inzimam Tariq
 */
@Controller
public class SendMailController {

    @Autowired
    EmailService emailServiceImpl;
    @Autowired
    UserService userService;

//    @RequestMapping("/sendmail")
//    public String open() {
//
//        return "sendmail";
//    }
    @RequestMapping("/sendMail")
    public String sendMail(HttpServletRequest request) throws MessagingException {
        String username = userService.getCurrentLoggedinUsername();
        User user = userService.getUserlByEmailOrUsername(username, "SendMailController");

        emailServiceImpl.sendWelcomeMessage(user.getEmail(), user.getFullName(), request);
        return "dashboard";
    }

}
