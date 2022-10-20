package com.cibertec.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cibertec.entity.Cliente;
import com.cibertec.repository.ClienteRepository;

@Service
public class ClienteServiceImpl implements ClienteService {

	@Autowired
	private ClienteRepository repository;
	
	@Override
	public List<Cliente> listarClientes() {
		return repository.findAll();
	}

	@Override
	public Cliente insertarActualizarClientes(Cliente obj) {
		return repository.save(obj);
	}

}