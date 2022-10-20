package com.cibertec.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cibertec.entity.Departamento;
import com.cibertec.repository.DepartamentoRepository;


@Service
public class DepartamentoServiceImpl implements DepartamentoService {

	@Autowired
	private DepartamentoRepository repository;
	
	@Override
	public List<Departamento> listarDptos() {
		return repository.findAll();
	}

}