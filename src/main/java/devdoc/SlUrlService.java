/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package devdoc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
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

    public Page<SlUrl> getUrlsByPage(int pageNumber, int numberOfElementsPerPage) {

        return urlRepository.findAllByOrderByCreationDateDesc(PageRequest.of(subtractPageByOne(pageNumber), numberOfElementsPerPage));
    }

    private int subtractPageByOne(int page) {
        return (page < 1) ? 0 : page - 1;
    }

//    public Long getListOfShortlinksBetweenDates(User user) {
//
//        return urlRepository.getListOfShortlinksBetweenDates(user);
//    }
}
