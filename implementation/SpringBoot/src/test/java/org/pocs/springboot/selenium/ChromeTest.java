package org.pocs.springboot.selenium;

import java.io.File;
import java.io.IOException;

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
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import junit.framework.TestCase;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ChromeTest extends TestCase {

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
	public void testGoogleSearch() {
		driver.get("http://localhost:8080/listaconvidados");

		WebElement txtNome = driver.findElement(By.name("nome"));
		WebElement txtEmail = driver.findElement(By.name("email"));
		WebElement txtTelefone = driver.findElement(By.name("telefone"));

		txtNome.sendKeys("Afonso Barrenha");
		txtEmail.sendKeys("afonsobarrenha@gmail.com");
		txtTelefone.sendKeys("5511995029052");

		txtNome.submit();

		assertTrue(driver.getPageSource().contains("Afonso Barrenha"));

	}
}