package com.test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.annotations.Test;
import java.util.concurrent.TimeUnit;


public class tests{
	
	@Test
   public void test(){
System.setProperty("webdriver.chrome.driver","D:\\Eclipse\\Eclipse\\CucumberJava\\src\\test\\resources\\Drivers\\chromedriver.exe");
      WebDriver driver = (WebDriver) new ChromeDriver();
      driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
      driver.get("https://www.google.com/");
      // identify element
      WebElement p=driver.findElement(By.name("q"));
      //enter text with sendKeys() then apply submit()
      p.sendKeys("Selenium Java");
      // Explicit wait condition for search results
      WebDriverWait w = new WebDriverWait(driver, 5);
    //  w.until(ExpectedConditions.visibilityOfAllElements((List<WebElement>) By.xpath("//ul")));
        p.submit();
      driver.close();
   }
}
