/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package devdoc;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 *
 * @author Inzimam Tariq
 */
@Entity
public class SlUrl implements Serializable {
    
    @Id
    @GeneratedValue
    private long id;
    private String destinationUrl;
    private String username;
    private String authToken;
    private boolean isValidVisit;

    public SlUrl() {
    }

    public SlUrl(String destinationUrl, String username) {
        this.destinationUrl = destinationUrl;
        this.username = username;
    }    

    public String getDestinationUrl() {
        return destinationUrl;
    }

    public void setDestinationUrl(String destinationUrl) {
        this.destinationUrl = destinationUrl;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
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

    @Override
    public String toString() {
        return "SlUrl{" + "destinationUrl=" + destinationUrl + ", username=" + username + ", authToken=" + authToken + ", isValidVisit=" + isValidVisit + '}';
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    
    
    
}
