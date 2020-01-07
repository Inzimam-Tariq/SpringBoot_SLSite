/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package devdoc;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

/**
 *
 * @author Inzimam Tariq
 */
@Entity
@Table(name = "sl_user")
public class User implements Serializable {

    @Id
    @Column(name = "username", nullable = false, unique = true)
    @NotEmpty(message = "Please provide a username")
    private String username;

    @Column(name = "email", nullable = false, unique = true)
    @Email(message = "Please provide a valid e-mail")
    @NotEmpty(message = "Please provide an e-mail")
    private String email;

    @Column(name = "fullName")
    @Size(min = 5, max = 30)
    @NotEmpty(message = "Please provide your full name")
    private String fullName;
    
    @Column(name = "password")
    private String password;

    @Column(name = "enabled")
    private boolean enabled;

    @Column(name = "uuid")
    private String uuid;

    @Column(name = "ipAddress")
    private String ipAddress;

    @Column(name = "regDate")
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date regDate;

    @Column(name = "access")
    private boolean access;

    public User() {
    }
    
    public User(String username) {
        this.username = username;
    }

    public User(String username, String email, String fullName, String password, boolean enabled,
            String uuid, String ipAddress, Date regDate, boolean access) {
        this.username = username;
        this.email = email;
        this.fullName = fullName;
        this.password = password;
        this.enabled = enabled;
        this.uuid = uuid;
        this.ipAddress = ipAddress;
        this.regDate = regDate;
        this.access = access;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public String getIpAddress() {
        return ipAddress;
    }

    public void setIpAddress(String ipAddress) {
        this.ipAddress = ipAddress;
    }

    public Date getRegDate() {
        return regDate;
    }

    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }

    public boolean isAccess() {
        return access;
    }

    public void setAccess(boolean access) {
        this.access = access;
    }

    

    @Override
    public String toString() {
        return "User{" + "username=" + username + ", email=" + email + ", fullName=" + fullName
                + ", password=" + password + ", enabled=" + enabled + ", uuid=" + uuid
                + ", ipAddress=" + ipAddress + ", regDate=" + regDate + ", access=" + access + '}';
    }

}
