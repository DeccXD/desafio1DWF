package model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

public class Empleado {
    private Long idEmpleado;
    private String numeroDui;
    private String nombrePersona;
    private String usuario;
    private String numeroTelefono;
    private String correoInstitucional;
    private Date fechaNacimiento;
}
