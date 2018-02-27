package com.example.demo.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.model.Convidado;

public interface ConvidadoRepository extends CrudRepository<Convidado, Long> {
	List<Convidado> findByNome(String nome);
}