package pl.coderslab.crm.dao;

import org.springframework.stereotype.Repository;
import pl.coderslab.crm.model.Project;

import javax.persistence.TypedQuery;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class ProjectDao extends AbstractDao<Project> {

    @Override
    public Project findById(Long id) {
        return null;
    }

    public List findAll() {
        TypedQuery<Project> projects = entityManager.createQuery("select p from Project p", Project.class);
        return projects.getResultList();
    }
}
