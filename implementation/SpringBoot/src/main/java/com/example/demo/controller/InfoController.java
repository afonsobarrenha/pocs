package com.example.demo.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.model.InfoModel;

@RestController
public class InfoController {
	
	final static Logger logger = LoggerFactory.getLogger(ConvidadoController.class);
	
	@Autowired
	Environment env;

	@RequestMapping("/")
	public InfoModel index(@RequestParam(value = "name", defaultValue = "") String name) {
		logger.info("index(" + name + ") - start");

		InfoModel infoModel = new InfoModel(env.getProperty("info.app.groupId"), env.getProperty("info.app.artifactId"),
				env.getProperty("info.app.version"), env.getProperty("info.app.name"),
				env.getProperty("info.app.description"), env.getProperty("spring.profiles.active"));

		logger.info("index(" + name + ") - end");

		return infoModel;
	}

}