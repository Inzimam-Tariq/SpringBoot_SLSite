/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package devdoc.repo;

import devdoc.model.SlUrl;
import devdoc.model.User;
import java.util.Date;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Inzimam Tariq
 */
@Repository
public interface UrlRepository extends JpaRepository<SlUrl, Long> {

    @Query
    List<SlUrl> findLinkByUser(User user);

    @Query("from SlUrl sl where sl.user =?1 And sl.creationDate between ?2 And ?3")
    List<Object> getListOfShortlinksBetweenDates(User user, Date date1, Date date2);

    @Query("select count(sl) from SlUrl sl where sl.user =?1")
    long countUrls(User user);

    @Query("select count(sl) from SlUrl sl where sl.user =?1 And sl.creationDate between ?2 And ?3")
    long countUrlsBetweenDates(User user, Date date1, Date date2);

//    @Query ("from SlUrl sl where sl.user =?1 And sl.creationDate between ?2 And ?3")
//    List<Object> getListOfShortlinkToday(User user, Date date1, Date date2);
    List<SlUrl> findAllByCreationDateBetween(
            Date startDate,
            Date endDate);

    Page<SlUrl> findAllByOrderByCreationDateDesc(Pageable pageable);

    SlUrl findByShortUrlLink(String shortenUrl);
//
//    @Modifying
//    @Query(value = "UPDATE Users u set email =?1 where u.username = ?2",
//            nativeQuery = true)
//    void updateUser(String email, String username);
}
