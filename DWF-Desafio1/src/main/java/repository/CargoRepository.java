package repository;

import model.cargo;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

public class CargoRepository {
    private EntityManager em;

    public List<cargo> findAll() {
        return em.createQuery("SELECT c FROM Cargo c", cargo.class).getResultList();
    }

    public cargo findById(Long id) {
        return em.find(cargo.class, id);
    }


    public void deleteById(Long id) {
        cargo cargo = findById(id);
        if (cargo != null) {
            em.remove(cargo);
        }
    }
}
