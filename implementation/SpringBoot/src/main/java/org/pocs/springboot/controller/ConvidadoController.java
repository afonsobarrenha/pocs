package org.pocs.springboot.controller;

import org.pocs.springboot.model.Convidado;
import org.pocs.springboot.repository.ConvidadoRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ConvidadoController {

	final static Logger logger = LoggerFactory.getLogger(ConvidadoController.class);

	@Autowired
	private ConvidadoRepository repository;

	// TODO Implementar um correto uso de uma dependência externa Autowired.
	// @Autowired
	// private EmailService emailService;

	@RequestMapping("listaconvidados")
	public String listaConvidados(Model model) {
		logger.debug("listaConvidados(" + model + ") - start");

		Iterable<Convidado> convidados = repository.findAll();
		model.addAttribute("convidados", convidados);

		logger.debug("listaConvidados(...) - end");

		return "listaconvidados";
	}

	@RequestMapping(value = "salvar", method = RequestMethod.POST)
	public String salvar(@RequestParam("nome") String nome, @RequestParam("email") String email,
			@RequestParam("telefone") String telefone, Model model) {

		logger.debug("salvar(" + nome + ", " + email + ", " + telefone + ", " + model + ") - start");

		Convidado novoConvidado = new Convidado(nome, email, telefone);
		repository.save(novoConvidado);

		Iterable<Convidado> convidados = repository.findAll();
		model.addAttribute("convidados", convidados);

		logger.debug("salvar(...) - end");

		return "listaconvidados";
	}

}