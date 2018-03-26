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

	private static ChromeDriverService service;
	private WebDriver driver;

	@Given("^I am on Facebook login page$")
	public void goToFacebook() throws IOException {
		createAndStartService();
		createDriver();
		driver.navigate().to("http://localhost/listar");
	}

	@When("^I enter username as \"(.*)\"$")
	public void enterUsername(String arg1) {
		driver.findElement(By.id("nome")).sendKeys(arg1);
	}

	@When("^I enter password as \"(.*)\"$")
	public void enterPassword(String arg1) {
		driver.findElement(By.id("email")).sendKeys(arg1);
		driver.findElement(By.id("telefone")).sendKeys(arg1);

		WebElement btnConvidar = driver.findElement(By.name("convidar"));
		btnConvidar.click();
	}

	@Then("^Login should fail$")
	public void checkFail() {

		Boolean containsGmail;
		try {
			containsGmail = new WebDriverWait(driver, 5).until(ExpectedConditions
					.textToBePresentInElementLocated(By.id("divConvidados"), "juliabarrenha@gmail.com"));
		} catch (TimeoutException e) {
			containsGmail = false;
		}

		assertTrue(containsGmail);

		driver.close();
		service.stop();
	}

	// @BeforeClass
	public static void createAndStartService() throws IOException {
		service = new ChromeDriverService.Builder()
				.usingDriverExecutable(new File("src/test/resources/selenium/chromedriver")).usingAnyFreePort().build();
		service.start();
	}

	// @AfterClass
	public static void createAndStopService() {
		service.stop();
	}

	// @Before
	public void createDriver() {
		driver = new RemoteWebDriver(service.getUrl(), DesiredCapabilities.chrome());
	}

	// @After
	public void quitDriver() {
		driver.quit();
	}

}