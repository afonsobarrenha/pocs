package com.example.demo.controller;

import static org.junit.Assert.assertTrue;

import java.io.File;
import java.io.IOException;

import org.openqa.selenium.By;
import org.openqa.selenium.TimeoutException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriverService;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class CucumberTest {

	protected static ChromeDriverService service;
	protected WebDriver driver;

	@Given("^Estou na tela de Listar$")
	public void telaListar() throws IOException {
		createAndStartService();
		createDriver();
		driver.navigate().to("http://localhost:9000/listar");
	}

	@When("^Eu entro com o nome \"(.*)\"$")
	public void entrarNome(String arg1) {
		driver.findElement(By.id("nome")).sendKeys(arg1);
	}

	@When("^Eu entro com o email \"(.*)\"$")
	public void entrarEmail(String arg1) {
		driver.findElement(By.id("email")).sendKeys(arg1);
	}

	@When("^Eu entro como telefone \"(.*)\"$")
	public void entrarTelefone(String arg1) {
		driver.findElement(By.id("telefone")).sendKeys(arg1);
	}

	@When("^Clico no botão Convidar$")
	public void clicarConvidar() {
		WebElement btnConvidar = driver.findElement(By.name("convidar"));
		btnConvidar.click();
	}

	@Then("^É cadastrado o usuário$")
	public void verificaCadastro() {

		Boolean containsGmail;
		try {
			containsGmail = new WebDriverWait(driver, 5).until(ExpectedConditions
					.textToBePresentInElementLocated(By.id("divConvidados"), "jerry@hannabarbera.com"));
		} catch (TimeoutException e) {
			containsGmail = false;
		}

		assertTrue(containsGmail);

		this.quitDriver();
		this.stopService();
	}

	public static void createAndStartService() throws IOException {
		service = new ChromeDriverService.Builder()
				.usingDriverExecutable(new File("src/test/resources/selenium/chromedriver")).usingAnyFreePort().build();
		service.start();
	}

	public void createDriver() {
		driver = new RemoteWebDriver(service.getUrl(), DesiredCapabilities.chrome());
	}

	public void quitDriver() {
		driver.quit();
	}

	public void stopService() {
		service.stop();
	}

}