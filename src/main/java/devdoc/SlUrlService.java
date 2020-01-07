/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package devdoc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Inzimam Tariq
 */
@Service
public class SlUrlService {

    @Autowired
    UserRepository userRepository;
    @Autowired
    UrlRepository urlRepository;

    public String getShortenUrl() {
        String url = AppUtils.randomString(6);
        System.out.println("UUId = " + url);
        if (urlRepository.findByShortUrlLink(url) != null) {
            getShortenUrl();
        }
        return url;
    }

//    public Long getListOfShortlinksBetweenDates(User user) {
//
//        return urlRepository.getListOfShortlinksBetweenDates(user);
//    }
}
