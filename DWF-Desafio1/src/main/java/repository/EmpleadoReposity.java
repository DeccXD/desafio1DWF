package repository;

import model.Empleado;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

public class EmpleadoReposity {
    private EntityManager em;

    public List<Empleado> findAll() {
        return em.createQuery("SELECT e FROM Empleado e", Empleado.class).getResultList();
    }

    public Empleado findById(Long id) {
        return em.find(Empleado.class, id);
    }

    public void deleteById(Long id) {
        Empleado empleado = findById(id);
        if (empleado != null) {
            em.remove(empleado);
        }
    }
}
