package com.pocs.springboot.repository;

import org.springframework.data.repository.CrudRepository;

import com.pocs.springboot.model.Convidado;

public interface ConvidadoRepository extends CrudRepository<Convidado, Long> {
}