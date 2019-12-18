/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package devdoc;


import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Inzimam Tariq
 */
@Repository
public interface UserRepository extends JpaRepository<User, String> {

    User findUserByUsername(String username);

    User findByEmail(String email);

    List<User> findByFullName(String fullName);

    public boolean existsByEmail(String email);

    User findByUuid(String confirmationToken);
}
