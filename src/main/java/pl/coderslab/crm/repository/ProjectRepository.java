package pl.coderslab.crm.repository;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.coderslab.crm.model.Project;
import pl.coderslab.crm.model.User;

import java.util.List;

public interface ProjectRepository extends JpaRepository<Project, Long> {
    List<Project> findAll();


    @Query("select p from Project p order by p.created desc")
    List<Project> findLastFive(Pageable pageable);

    @Query("select p from Project p where p.active=true")
    List<Project> findActiveProjects();

    @Query("select p.users from Project p where p.id = :projectId")
    List<User> findUsersByProjectId(Long projectId);

}
