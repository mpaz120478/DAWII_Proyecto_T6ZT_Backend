package com.cibertec.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.cibertec.entity.Empleado;


public interface EmpleadoRepository extends JpaRepository<Empleado, Integer> {

}