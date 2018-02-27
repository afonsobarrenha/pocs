package com.example.demo;

import static org.junit.Assert.assertTrue;

import java.io.File;
import java.io.IOException;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriverService;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.springframework.boot.context.embedded.LocalServerPort;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest(webEnvironment = WebEnvironment.RANDOM_PORT)
public class WebEnvironmentTest {

	@LocalServerPort
	private int port;

	private static ChromeDriverService service;
	private WebDriver driver;

	@BeforeClass
	public static void createAndStartService() throws IOException {
		service = new ChromeDriverService.Builder()
				.usingDriverExecutable(new File("src/main/resources/selenium/chromedriver")).usingAnyFreePort().build();
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
	public void testSalvarConvidado() {
		driver.get("http://localhost:" + port + "/listaconvidados");

		assertTrue(driver.getPageSource().contains("lazaro@alura.com.br"));

		WebElement txtNome = driver.findElement(By.name("nome"));
		WebElement txtEmail = driver.findElement(By.name("email"));
		WebElement txtTelefone = driver.findElement(By.name("telefone"));

		txtNome.sendKeys("Afonso Barrenha");
		txtEmail.sendKeys("afonsobarrenha@gmail.com");
		txtTelefone.sendKeys("5511995029052");

		WebElement btnConvidar = driver.findElement(By.name("convidar"));
		btnConvidar.click();

		Boolean containsGmail = new WebDriverWait(driver, 10).until(
				ExpectedConditions.textToBePresentInElementLocated(By.id("divConvidados"), "afonsobarrenha@gmail.com"));

		assertTrue(containsGmail);
	}

	/**
	 * Método contendo o código do Selenium que não está sendo usado nesse momento,
	 * mas poderá ser usado conforme a aplicação evolueSelect usuario = new
	 * Select(driver.findElement(By.name("leilao.usuario.id")));
	 * usuario.selectByVisibleText("João");.
	 */
	// @Test
	public void testSalvarCamposObrigatorios() {
		/**
		 * Trabalhar com ALERT
		 */
		Alert alert = driver.switchTo().alert();
		alert.accept();

		/**
		 * COMBOBOX
		 */
		Select usuario = new Select(driver.findElement(By.name("leilao.usuario.id")));
		usuario.selectByVisibleText("João");

		/**
		 * CHECKBOX
		 */
		WebElement usado = driver.findElement(By.name("leilao.usado"));
		usado.click();
	}

}