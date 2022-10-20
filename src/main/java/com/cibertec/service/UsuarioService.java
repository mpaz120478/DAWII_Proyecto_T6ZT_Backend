package com.cibertec.service;

import java.util.List;
import com.cibertec.entity.Usuario;


public interface UsuarioService {

	public abstract List<Usuario> listarUsuarios();
	public abstract Usuario insertarActualizarUsuarios(Usuario obj);
}