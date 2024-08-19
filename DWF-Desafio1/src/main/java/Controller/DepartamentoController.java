package Controller;

import model.Departamento;
import repository.DepartamentoReposity;
import javax.inject.Inject;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.List;


public class DepartamentoController {
    private DepartamentoReposity departamentoRepository;

    public List<Departamento> getAllDepartamentos() {
        return departamentoRepository.findAll();
    }
    public Response getDepartamentoById(@PathParam("id") Long id) {
        Departamento departamento = departamentoRepository.findById(id);
        if (departamento != null) {
            return Response.ok(departamento).build();
        } else {
            return Response.status(Response.Status.NOT_FOUND).build();
        }
    }
    public Response deleteDepartamento(@PathParam("id") Long id) {
        departamentoRepository.deleteById(id);
        return Response.noContent().build();
    }
}

