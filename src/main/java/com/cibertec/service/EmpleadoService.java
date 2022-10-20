package com.cibertec.service;

import java.util.List;
import com.cibertec.entity.Empleado;


public interface EmpleadoService {

	public abstract List<Empleado> listarEmpleados();
	public abstract Empleado insertarActualizarEmpleados(Empleado obj);
}