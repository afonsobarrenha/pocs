package com.pocs.springboot.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the convidado database table.
 * 
 */
@Entity
@Table(name="convidado")
@NamedQuery(name="Convidado.findAll", query="SELECT c FROM Convidado c")
public class Convidado implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;

	private String email;

	private String nome;

	private String telefone;

	public Convidado() {
	}

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNome() {
		return this.nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getTelefone() {
		return this.telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

}