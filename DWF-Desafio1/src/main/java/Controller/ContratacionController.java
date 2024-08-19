package Controller;

import model.Contratacion;
import repository.ContratacionReposity;

import javax.inject.Inject;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.List;

public class ContratacionController {
    private ContratacionReposity contratacionRepository;

    public List<Contratacion> getAllContrataciones() {
        return contratacionRepository.findAll();
    }
    public Response getContratacionById(@PathParam("id") Long id) {
        Contratacion contratacion = contratacionRepository.findById(id);
        if (contratacion != null) {
            return Response.ok(contratacion).build();
        } else {
            return Response.status(Response.Status.NOT_FOUND).build();
        }
    }
    public Response deleteContratacion(@PathParam("id") Long id) {
        contratacionRepository.deleteById(id);
        return Response.noContent().build();
    }
}
