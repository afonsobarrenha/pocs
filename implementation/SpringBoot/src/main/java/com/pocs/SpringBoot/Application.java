package com.pocs.SpringBoot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@SpringBootApplication
@Controller
public class Application {

	@RequestMapping("/")
	@ResponseBody
	public String ola() {
		return "Ola, Bem vindo ao sistema Lista VIPs";
	}

	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}
}
