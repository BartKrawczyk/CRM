package pl.coderslab.crm.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

@Transactional
public abstract class AbstractDao<T>{

    @PersistenceContext
    protected EntityManager entityManager;

    public abstract T findById(Long id);

    public void save(T entity) {
        entityManager.persist(entity);
    }
}
