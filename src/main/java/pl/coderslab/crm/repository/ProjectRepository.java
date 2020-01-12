package pl.coderslab.crm.repository;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.crm.model.Project;
import pl.coderslab.crm.model.User;

import java.util.List;

@Transactional
public interface ProjectRepository extends JpaRepository<Project, Long> {
    List<Project> findAll();


    @Query("select p from Project p order by p.created desc")
    List<Project> findLastFive(Pageable pageable);

    @Query("select p from Project p where p.active=true")
    List<Project> findActiveProjects();

    @Query("select p.users from Project p where p.id = :projectId")
    List<User> findUsersByProjectId(Long projectId);

    @Modifying
    @Query("update Project p set p.name = ?1, p.description = ?2, p.identifier = ?3, p.www = ?4, p.active = ?5, p.users =?6 where p.id = ?7")
    void setProjectDataById(String name, String description, String identifier, String www, Boolean active, List<User> users, Long id);

}
