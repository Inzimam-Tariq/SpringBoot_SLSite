/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package devdoc;

import java.util.UUID;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

/**
 *
 * @author Inzimam Tariq
 */
@Service
public class UserService implements UserDetailsService {

    @Autowired
    UserRepository userRepository;

    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userRepository.findUserByUsername(username);
        if (user == null) {
            throw new UsernameNotFoundException("User 404: User not found!");
        }
        return new UserImplementation(user);
    }

    public User findByUuid(String uuid) {
        return userRepository.findByUuid(uuid);
    }

    public String getCurrentLoggedinUsername() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        UserImplementation implementation = (UserImplementation) auth.getPrincipal();
        return implementation.getUsername();
    }

    public void saveUser(User user) {
        user.setIpAddress(AppUtils.getCurrentIp());
        user.setRegDate(AppUtils.getCurrentDate());
        user.setEnabled(true);
        user.setAccess(true);
        user.setUuid(getUUId());
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        userRepository.save(user);
    }

    public String getUUId() {
        String uuid = UUID.randomUUID().toString().replace("-", "");
        System.out.println("UUId = " + uuid);
        if (userRepository.findByUuid(uuid) != null) {
            getUUId();
        }
        return uuid;
    }

    public User getUserDetailByEmailOrUsername(String usernameOrEmail, String callingFrom) {
        User user;
        if (usernameOrEmail.contains("@")) {
            user = userRepository.findByEmail(usernameOrEmail);
        } else {
            user = userRepository.findUserByUsername(usernameOrEmail);
        }
        System.out.println("Calling From " + callingFrom
                + "\n\n"
                + "\nThese records are from Database: Username = " + user.getUsername()
                + "\nEmail = " + user.getEmail()
                + "\nFull Name = " + user.getFullName()
                + "\nPassword = " + user.getPassword()
                + "\nIP Address = " + user.getIpAddress());

        return user;
    }

    public boolean isUserByUsernamePresent(String username) {

        return userRepository.existsById(username);
    }

    public boolean isUserByEmailPresent(String email) {

        return userRepository.existsByEmail(email);
    }
}
