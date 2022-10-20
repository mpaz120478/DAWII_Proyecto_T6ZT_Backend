package com.cibertec.service;

import java.util.List;
import com.cibertec.entity.Cargo;


public interface CargoService {
	
	public abstract List<Cargo> listarCargos();
	public abstract Cargo insertarActualizarCargos(Cargo obj);

}