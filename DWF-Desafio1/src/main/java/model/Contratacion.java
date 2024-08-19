package model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

public class Contratacion{
        private Long idContratacion;
        private Long idDepartamento;
        private Long idEmpleado;
        private Long idCargo;
        private Long idTipoContratacion;
        private Date fechaContratacion;
        private Double salario;
        private String estado;
}
