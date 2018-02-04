package com.pocs.springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EntradasController {

	@RequestMapping("listaentradas")
	public String index() {
		return "listaentradas";
	}

}