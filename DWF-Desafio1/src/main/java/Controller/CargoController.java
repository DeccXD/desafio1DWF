package Controller;

import model.cargo;
import repository.CargoRepository;

import javax.inject.Inject;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.List;

public class CargoController {

    private CargoRepository cargoRepository;

    public List<cargo> getAllCargos() {
        return cargoRepository.findAll();
    }
    public Response getCargoById(@PathParam("id") Long id) {
        cargo cargo = cargoRepository.findById(id);
        if (cargo != null) {
            return Response.ok(cargo).build();
        } else {
            return Response.status(Response.Status.NOT_FOUND).build();
        }
    }
    public Response deleteCargo(@PathParam("id") Long id) {
        cargoRepository.deleteById(id);
        return Response.noContent().build();
    }
}
