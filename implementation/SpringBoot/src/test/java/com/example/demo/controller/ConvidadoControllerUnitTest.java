package com.example.demo.controller;

import static org.junit.Assert.assertNull;
import static org.mockito.BDDMockito.given;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.junit4.SpringRunner;

import com.example.demo.repository.ConvidadoRepository;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ConvidadoControllerUnitTest {

	@MockBean
	private ConvidadoRepository repository;

	@Test
	public void exampleTest() {
		given(this.repository.findByNome("Julia")).willReturn(null);
		assertNull(this.repository.findByNome("Julia"));
	}

}
