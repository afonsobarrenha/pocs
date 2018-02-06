package org.pocs.springboot.repository;

import java.util.List;

import org.pocs.springboot.model.Convidado;
import org.springframework.data.repository.CrudRepository;

public interface ConvidadoRepository extends CrudRepository<Convidado, Long> {
	List<Convidado> findByNome(String nome);
}