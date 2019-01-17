package com.example.demo.controller;

import java.net.InetAddress;
import java.util.Calendar;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cucumber.api.java.ca.Cal;

import com.example.demo.model.InfoModel;

@RestController
public class InfoController {

	final static Logger logger = LoggerFactory.getLogger(InfoController.class);

	@Autowired
	Environment env;

	@RequestMapping("/")
	public InfoModel index(@RequestParam(value = "name", defaultValue = "") String name) {
		logger.info("index(" + name + ") - start");

		String ip = "";
		String hostname = "";
		try {
			ip = String.valueOf(InetAddress.getLocalHost());
			hostname = InetAddress.getLocalHost().getHostName();

		} catch (Exception e) {
			e.printStackTrace();
		}

		Calendar today = Calendar.getInstance();

		InfoModel infoModel = new InfoModel(env.getProperty("info.app.groupId"), env.getProperty("info.app.artifactId"),
				env.getProperty("info.app.version"), env.getProperty("info.app.name"),
				env.getProperty("info.app.description"), env.getProperty("spring.profiles.active"), ip, hostname, today);

		logger.info("infoModel=" + infoModel);

		logger.info("index(" + name + ") - end");

		return infoModel;
	}

	@RequestMapping("/fibonacci")
	public long fibonacci(@RequestParam(value = "number", defaultValue = "") String number) {
		logger.info("fibonacci(" + number + ") - start");

		long result = 0;
		long n = Long.valueOf(number);

		for (long i = 0; i < n; i++) {
			result = result + fibo(i);
		}

		logger.info("fibonacci(" + result + ") - end");

		return result;
	}

	private long fibo(long n) {
		return (n < 2) ? n : fibo(n - 1) + fibo(n - 2);
	}

}