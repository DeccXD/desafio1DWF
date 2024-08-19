package Controller;

import model.Empleado;
import repository.EmpleadoReposity;

import javax.inject.Inject;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.List;

public class EmpleadoController {

    private EmpleadoReposity empleadoRepository;

    public List<Empleado> getAllEmpleados() {
        return empleadoRepository.findAll();
    }
    public Response getEmpleadoById(@PathParam("id") Long id) {
        Empleado empleado = empleadoRepository.findById(id);
        if (empleado != null) {
            return Response.ok(empleado).build();
        } else {
            return Response.status(Response.Status.NOT_FOUND).build();
        }
    }
    public Response deleteEmpleado(@PathParam("id") Long id) {
        empleadoRepository.deleteById(id);
        return Response.noContent().build();
    }
}
