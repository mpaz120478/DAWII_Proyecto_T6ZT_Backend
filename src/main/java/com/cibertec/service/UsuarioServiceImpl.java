package com.cibertec.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cibertec.entity.Usuario;
import com.cibertec.repository.UsuarioRepository;


@Service
public class UsuarioServiceImpl implements UsuarioService {

	@Autowired
	private UsuarioRepository repository;
	
	@Override
	public List<Usuario> listarUsuarios() {
		return repository.findAll();
	}

	@Override
	public Usuario insertarActualizarUsuarios(Usuario obj) {
		return repository.save(obj);
	}

}