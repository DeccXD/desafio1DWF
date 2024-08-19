package repository;

import model.TipoContratacion;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

public class TipoContratacionReposity {
    private EntityManager em;

    public List<TipoContratacion> findAll() {
        return em.createQuery("SELECT t FROM TipoContratacion t", TipoContratacion.class).getResultList();
    }

    public TipoContratacion findById(Long id) {
        return em.find(TipoContratacion.class, id);
    }

    public void deleteById(Long id) {
        TipoContratacion tipoContratacion = findById(id);
        if (tipoContratacion != null) {
            em.remove(tipoContratacion);
        }
    }
}
