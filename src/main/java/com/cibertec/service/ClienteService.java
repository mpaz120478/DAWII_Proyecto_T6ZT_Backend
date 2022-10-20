package com.cibertec.service;

import java.util.List;
import com.cibertec.entity.Cliente;


public interface ClienteService {

	public abstract List<Cliente> listarClientes();
	public abstract Cliente insertarActualizarClientes(Cliente obj);
}