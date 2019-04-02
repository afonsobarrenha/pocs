package com.example.demo.controller;

import static org.junit.Assert.assertTrue;

import java.io.File;
import java.io.IOException;

import static org.junit.Assume.*;
import org.junit.*;

import org.springframework.context.annotation.Profile;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriverService;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.springframework.boot.context.embedded.LocalServerPort;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest(webEnvironment = WebEnvironment.RANDOM_PORT)
public class SeleniumTest {

    @BeforeClass
    public static void disableTestsOnCiServer() {
        String profilesFromConsole = System.getProperty("spring.profiles.active", "");
        assumeFalse(profilesFromConsole.contains("jenkins"));
    }

	@LocalServerPort
	private int port;

	private static ChromeDriverService service;
	private WebDriver driver;

	@BeforeClass
	public static void createAndStartService() throws IOException {
		service = new ChromeDriverService.Builder()
				.usingDriverExecutable(new File("src/test/resources/selenium/chromedriver")).usingAnyFreePort().build();
		service.start();
	}

	@AfterClass
	public static void createAndStopService() {
		service.stop();
	}

	@Before
	public void createDriver() {
		driver = new RemoteWebDriver(service.getUrl(), DesiredCapabilities.chrome());
	}

	@After
	public void quitDriver() {
		driver.quit();
	}

	@Test
	public void salvarConvidado() {
		driver.get("http://localhost:" + port + "/listar");

		assertTrue(driver.getPageSource().contains("afonsobarrenha@gmail.com"));

		WebElement txtNome = driver.findElement(By.name("nome"));
		WebElement txtEmail = driver.findElement(By.name("email"));
		WebElement txtTelefone = driver.findElement(By.name("telefone"));

		txtNome.sendKeys("Júlia de Souza Barrenha");
		txtEmail.sendKeys("juliabarrenha@gmail.com");
		txtTelefone.sendKeys("5511988185657");

		WebElement btnConvidar = driver.findElement(By.name("convidar"));
		btnConvidar.click();

		Boolean containsGmail = new WebDriverWait(driver, 10).until(
				ExpectedConditions.textToBePresentInElementLocated(By.id("divConvidados"), "juliabarrenha@gmail.com"));

		assertTrue(containsGmail);
	}

}