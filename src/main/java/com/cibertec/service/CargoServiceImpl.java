package com.cibertec.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cibertec.entity.Cargo;
import com.cibertec.repository.CargoRepository;


@Service
public class CargoServiceImpl implements CargoService {

	@Autowired
	private CargoRepository repository;
	
	@Override
	public List<Cargo> listarCargos() {
		return repository.findAll();
	}

	@Override
	public Cargo insertarActualizarCargos(Cargo obj) {
		return repository.save(obj);
	}
}