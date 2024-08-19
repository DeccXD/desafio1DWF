package repository;

import model.Contratacion;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

public class ContratacionReposity {
    private EntityManager em;

    public List<Contratacion> findAll() {
        return em.createQuery("SELECT c FROM Contratacion c", Contratacion.class).getResultList();
    }

    public Contratacion findById(Long id) {
        return em.find(Contratacion.class, id);
    }

    public void deleteById(Long id) {
        Contratacion contratacion = findById(id);
        if (contratacion != null) {
            em.remove(contratacion);
        }
    }
}
