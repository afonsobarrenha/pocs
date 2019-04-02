package com.example.demo.controller;

import static org.junit.Assert.assertTrue;

import org.springframework.context.annotation.Profile;

import static org.junit.Assume.*;
import org.junit.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.embedded.LocalServerPort;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.http.ResponseEntity;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class WebEnvironmentTest {

    @BeforeClass
    public static void disableTestsOnCiServer() {
        String profilesFromConsole = System.getProperty("spring.profiles.active", "");
        assumeFalse(profilesFromConsole.contains("jenkins"));
    }

	@LocalServerPort
	private int port;

	@Autowired
	private TestRestTemplate template;

	@Test
	public void getIndex() throws Exception {
		ResponseEntity<String> response = template.getForEntity("http://localhost:" + port + "/", String.class);
		assertTrue(response.getBody().contains("springboot"));
	}

}