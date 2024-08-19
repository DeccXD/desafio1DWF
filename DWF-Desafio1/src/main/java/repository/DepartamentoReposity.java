package repository;

import model.Departamento;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

public class DepartamentoReposity {
    private EntityManager em;

    public List<Departamento> findAll() {
        return em.createQuery("SELECT d FROM Departamento d", Departamento.class).getResultList();
    }

    public Departamento findById(Long id) {
        return em.find(Departamento.class, id);
    }


    public void deleteById(Long id) {
        Departamento departamento = findById(id);
        if (departamento != null) {
            em.remove(departamento);
        }
    }
}
