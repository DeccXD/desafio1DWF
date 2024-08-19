package Controller;


import model.TipoContratacion;
import repository.TipoContratacionReposity;

import javax.inject.Inject;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.List;
public class TipoContratacionController {
    private TipoContratacionReposity tipoContratacionRepository;

    public List<TipoContratacion> getAllTipoContrataciones() {
        return tipoContratacionRepository.findAll();
    }

    public Response getTipoContratacionById(@PathParam("id") Long id) {
        TipoContratacion tipoContratacion = tipoContratacionRepository.findById(id);
        if (tipoContratacion != null) {
            return Response.ok(tipoContratacion).build();
        } else {
            return Response.status(Response.Status.NOT_FOUND).build();
        }
    }
    public Response deleteTipoContratacion(@PathParam("id") Long id) {
        tipoContratacionRepository.deleteById(id);
        return Response.noContent().build();
    }

}
