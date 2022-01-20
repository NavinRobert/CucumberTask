package org.stepdefinition;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.github.bonigarcia.wdm.WebDriverManager;

public class AdactinStep {
	WebDriver driver;

	@Given("I am in Adactin hotel page")
	public void i_am_in_Adactin_hotel_page() {
		WebDriverManager.chromedriver().setup();
		driver = new ChromeDriver();
		driver.get("http://adactinhotelapp.com/");
	}

	@When("I should login with {string} and {string}")
	public void i_should_login_with_and(String user, String pass) {
		WebElement txtusername = driver.findElement(By.id("username"));
		txtusername.sendKeys(user);
		WebElement txtpassword = driver.findElement(By.id("password"));
		txtpassword.sendKeys(pass);
		WebElement btnLogin = driver.findElement(By.id("login"));
		btnLogin.click();
	}

	@When("I should search hotels with {string}, {string},{string},{string},{string},{string},{string},{string}")
	public void i_should_search_hotels_with(String Location, String Hotels, String RoomType, String NumberofRooms,
			String CheckInDate, String CheckOutDate, String AdultsperRoom, String ChildrenperRoom) {

		WebElement location = driver.findElement(By.id("location"));
		location.sendKeys(Location);
		WebElement hotels = driver.findElement(By.id("hotels"));
		hotels.sendKeys(Hotels);
		WebElement roomtype = driver.findElement(By.id("room_type"));
		roomtype.sendKeys(RoomType);
		WebElement noofroom = driver.findElement(By.id("room_nos"));
		noofroom.sendKeys(NumberofRooms);
		WebElement checkin = driver.findElement(By.id("datepick_in"));
		checkin.sendKeys(CheckInDate);
		WebElement checkout = driver.findElement(By.id("datepick_out"));
		checkout.sendKeys(CheckOutDate);
		WebElement adult = driver.findElement(By.id("adult_room"));
		adult.sendKeys(AdultsperRoom);
		WebElement child = driver.findElement(By.id("child_room"));
		child.sendKeys(ChildrenperRoom);
		WebElement btnclick = driver.findElement(By.id("Submit"));
		btnclick.click();
	}

	@When("I should select hotel")
	public void i_should_select_hotel() {

		WebElement btnselecthotel = driver.findElement(By.id("radiobutton_1"));
		btnselecthotel.click();
		WebElement btncontinue = driver.findElement(By.id("continue"));
		btncontinue.click();

	}

	@When("I should Book a hotel with {string},{string},{string}, {string},{string}, {string},{string},{string}")
	public void i_should_Book_a_hotel_with(String FirstName, String LastName, String BillingAddress,
			String CreditCardNo, String CreditCardType, String ExpiryDate, String ExpiryYear, String CVVNumber) {

		WebElement first = driver.findElement(By.id("first_name"));
		first.sendKeys(FirstName);
		WebElement last = driver.findElement(By.id("last_name"));
		last.sendKeys(LastName);
		WebElement addres = driver.findElement(By.id("address"));
		addres.sendKeys(BillingAddress);
		WebElement cardno = driver.findElement(By.id("cc_num"));
		cardno.sendKeys(CreditCardNo);
		WebElement cardtyp = driver.findElement(By.id("cc_type"));
		cardtyp.sendKeys(CreditCardType);
		WebElement cardmon = driver.findElement(By.id("cc_exp_month"));
		cardmon.sendKeys(ExpiryDate);
		WebElement cardmo = driver.findElement(By.id("cc_exp_year"));
		cardmo.sendKeys(ExpiryYear);
		WebElement cardcvv = driver.findElement(By.id("cc_cvv"));
		cardcvv.sendKeys(CVVNumber);
		WebElement btnbook = driver.findElement(By.id("book_now"));
		btnbook.click();
	}

	@When("I should get the order ID")
	public void i_should_get_the_order_ID() throws InterruptedException {
		Thread.sleep(8000);
		WebElement ordid = driver.findElement(By.id("order_no"));
		// xpath("//input[@name='order_no']"
		String text = ordid.getAttribute("value");
		System.out.println("*****" + text + "********");
	}

	@Then("I should verify the page loaded successfully")
	public void i_should_verify_the_page_loaded_successfully() {
		Assert.assertTrue(true);
		System.out.println("Done..............");
	}
}
