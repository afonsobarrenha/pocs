package com.pocs.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pocs.springboot.model.Convidado;
import com.pocs.springboot.repository.ConvidadoRepository;

@Controller
public class ConvidadoController {

	@Autowired
	private ConvidadoRepository repository;

	@RequestMapping("listaconvidados")
	public String listaConvidados(Model model) {

		Iterable<Convidado> convidados = repository.findAll();
		model.addAttribute("convidados", convidados);

		return "listaconvidados";
	}

}