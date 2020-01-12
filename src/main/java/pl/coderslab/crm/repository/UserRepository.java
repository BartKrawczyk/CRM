package pl.coderslab.crm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.coderslab.crm.model.User;

import java.util.List;

public interface UserRepository extends JpaRepository<User, Long> {

    List<User> findAll();

}
