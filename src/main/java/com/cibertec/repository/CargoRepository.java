package com.cibertec.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.cibertec.entity.Cargo;


public interface CargoRepository extends JpaRepository<Cargo, Integer> {

}