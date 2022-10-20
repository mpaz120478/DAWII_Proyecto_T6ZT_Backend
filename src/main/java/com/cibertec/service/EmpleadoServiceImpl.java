package com.cibertec.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cibertec.entity.Empleado;
import com.cibertec.repository.EmpleadoRepository;


@Service
public class EmpleadoServiceImpl implements EmpleadoService {

	@Autowired
	private EmpleadoRepository repository;
	
	@Override
	public List<Empleado> listarEmpleados() {
		return repository.findAll();
	}

	@Override
	public Empleado insertarActualizarEmpleados(Empleado obj) {
		return repository.save(obj);
	}
}