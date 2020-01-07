/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package devdoc;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

/**
 *
 * @author Inzimam Tariq
 */
@Entity
@Table(name = "sl_url")
public class SlUrl implements Serializable {

    @Id
    @GeneratedValue
    private long id;
    private String destinationUrlLink;
    private String shortUrlLink;
    private String authToken;
    private boolean isValidVisit;
    @Column(name = "createDate")
    @Temporal(javax.persistence.TemporalType.TIMESTAMP)
    private Date creationDate;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "username", nullable = false)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JsonIgnore
    private User user;

    public SlUrl() {
    }

    public SlUrl(String destinationUrl, User user) {
        this.destinationUrlLink = destinationUrl;
        this.user = user;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getDestinationUrlLink() {
        return destinationUrlLink;
    }

    public void setDestinationUrlLink(String destinationUrlLink) {
        this.destinationUrlLink = destinationUrlLink;
    }

    public String getShortUrlLink() {
        return shortUrlLink;
    }

    public void setShortUrlLink(String shortUrlLink) {
        this.shortUrlLink = shortUrlLink;
    }

    public String getAuthToken() {
        return authToken;
    }

    public void setAuthToken(String authToken) {
        this.authToken = authToken;
    }

    public boolean isIsValidVisit() {
        return isValidVisit;
    }

    public void setIsValidVisit(boolean isValidVisit) {
        this.isValidVisit = isValidVisit;
    }

    public Date getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "SlUrl{" + "id=" + id + ", destinationUrlLink=" + destinationUrlLink + ", shortUrlLink=" + shortUrlLink
                + ", authToken=" + authToken + ", isValidVisit=" + isValidVisit + ", user=" + user + '}';
    }

}
