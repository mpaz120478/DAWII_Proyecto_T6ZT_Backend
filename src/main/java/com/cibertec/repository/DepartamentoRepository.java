package com.cibertec.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.cibertec.entity.Departamento;

public interface DepartamentoRepository extends JpaRepository<Departamento, Integer> {

}