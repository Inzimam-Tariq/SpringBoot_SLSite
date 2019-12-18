/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package devdoc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Inzimam Tariq
 */
@Controller
public class PublicContentController {
    
    @RequestMapping("privacy_policy")
    public String privacyPolicy() {
        System.out.println("Inside /privacy_policy");
        return "privacy_policy";
    }
    
    @RequestMapping("terms_of_use")
    public String termsOfUse() {
        System.out.println("Inside /terms_of_use");
        return "terms_of_use";
    }
    
}
