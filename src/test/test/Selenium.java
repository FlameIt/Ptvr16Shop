/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;
import java.util.concurrent.TimeUnit;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.Select;
/**
 *
 * @author pupil
 */
public class Selenium {
    
    private static WebDriver driver;
    
    public Selenium() {
    }
    
    @BeforeClass // Выполняется один раз при запуске теста
    public static void setUpClass() {
        System.setProperty("webdriver.chrome.driver", "lib/chromedriver.exe");
        driver = new ChromeDriver();
        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
        driver.get("http://localhost:8080/Ptvr16Shop/");
    }
    
    
    @AfterClass // Запускается один раз после выплнения теста
    public static void tearDownClass() throws InterruptedException {
        Thread.sleep(3000);
        driver.quit();
        
    }
    
    @Before // Выполняется один раз перед каждой функцией теста
    public void setUp() {
    }
    
    @After // Выполняется один раз после каждой функции теста
    public void tearDown() {
    }

    public void enterTest(){
        System.out.println("Вход");
        WebElement el = driver.findElement(By.id("showLogin"));
         el.click();
         el = driver.findElement(By.id("login"));
         el.sendKeys("admin");
         el = driver.findElement(By.id("password"));
         el.sendKeys("admin");
         el = driver.findElement(By.id("btnEnter"));
         el.click();
    }
     @Test
     public void webAppTest() {
//            registration();
            enterTest();
         WebElement el = driver.findElement(By.id("info"));
         System.out.println("Вход произведен");
            showAddNewProduct();
            showPageForGiveProduct();
            showPageForReturnBook();
            showChangePassword();
            showChangeRole();
            ChangeRoleBack();
         System.out.println("Выход");
         el = driver.findElement(By.id("logout"));
         el.click();
         el = driver.findElement(By.id("info"));
         assertEquals("Вы вышли!", el.getText());
         System.out.println("Выход произведен");
     }
     
//     public void registration() {
//         WebElement el = driver.findElement(By.id("showRegistration"));
//         el.click();
//         System.out.println("Начало регистрации");
//         el = driver.findElement(By.name("name"));
//         el.sendKeys("TestName");
//         el= driver.findElement(By.name("surname"));
//         el.sendKeys("TestSurname");
//         el= driver.findElement(By.name("email"));
//         el.sendKeys("TestEmail");
//         el= driver.findElement(By.name("login"));
//         el.sendKeys("TestLogin");
//         el= driver.findElement(By.name("password1"));
//         el.sendKeys("TestPassword");
//         el= driver.findElement(By.name("password2"));
//         el.sendKeys("TestPassword");
//         el= driver.findElement(By.id("btnReg"));
//         el.click();
//         System.out.println("Регистрация закончена");
//     }
//     
     public void showAddNewProduct() {
         System.out.println("Добавление тестового продукта");
         WebElement el = driver.findElement(By.id("showAddNewProduct"));
         el.click();
         el = driver.findElement(By.name("name"));
         el.sendKeys("TestProduct");
         el = driver.findElement(By.name("price"));
         el.sendKeys("10");
         el = driver.findElement(By.name("count"));
         el.sendKeys("1");
         el = driver.findElement(By.id("btnAdd"));
         el.click();
         System.out.println("Продукт добавлен");
         
     }
     
     public void showPageForGiveProduct(){
         System.out.println("Выдача тестового продукта");
         WebElement el = driver.findElement(By.id("showPageForGiveProduct"));
         el.click();
         Select dropdown1 = new Select(driver.findElement(By.id("testdropdown1")));
         dropdown1.selectByVisibleText("TestProduct");
         Select dropdown2 = new Select(driver.findElement(By.id("testdropdown2")));
         dropdown2.selectByVisibleText("TestName TestSurname");
         el = driver.findElement(By.id("BtnGive"));
         el.click();
         System.out.println("Книга выдана");
     }
     
     public void showPageForReturnBook(){
         System.out.println("Возврат тестовой книги");
         WebElement el = driver.findElement(By.id("showPageForReturnBook"));
         el.click();
         el = driver.findElement(By.id("BtnReturn"));
         el.click();
         System.out.println("Книга возвращена");
     }
     
     public void showChangePassword(){
         System.out.println("Изменение пароля");
         WebElement el = driver.findElement(By.id("showChangePassword"));
         el.click();
         el = driver.findElement(By.name("oldPassword"));
         el.sendKeys("admin");
         el = driver.findElement(By.name("newPassword1"));
         el.sendKeys("admin1");
         el = driver.findElement(By.name("newPassword2"));
         el.sendKeys("admin1");
         el = driver.findElement(By.id("BtnChangePass"));
         el.click();
         System.out.println("Пароль изменен на новый admin1");
         el = driver.findElement(By.id("login"));
         el.sendKeys("admin");
         el = driver.findElement(By.id("password"));
         el.sendKeys("admin1");
         el = driver.findElement(By.id("btnEnter"));
         el.click();
         el = driver.findElement(By.id("showChangePassword"));
         el.click();
         el = driver.findElement(By.name("oldPassword"));
         el.sendKeys("admin1");
         el = driver.findElement(By.name("newPassword1"));
         el.sendKeys("admin");
         el = driver.findElement(By.name("newPassword2"));
         el.sendKeys("admin");
         el = driver.findElement(By.id("BtnChangePass"));
         el.click();
         System.out.println("Пароль изменен на старый admin");
         el = driver.findElement(By.id("login"));
         el.sendKeys("admin");
         el = driver.findElement(By.id("password"));
         el.sendKeys("admin");
         el = driver.findElement(By.id("btnEnter"));
         el.click();
     }
     public void showChangeRole(){
         System.out.println("Изменение роли");
         WebElement el = driver.findElement(By.id("showChangeRole"));
         el.click();
         
         driver.findElement(By.xpath("//input[@type='radio'][1]")).click();
         
         
         Select dropdown = new Select(driver.findElement(By.id("testdropdown")));
         dropdown.selectByValue("2");
         el = driver.findElement(By.id("BtnAccept"));
         el.click();
         System.out.println("Роль тестового пользователя изменена на администратора");
         el = driver.findElement(By.id("main"));
         el.click();
     }
         
     public void ChangeRoleBack(){
         System.out.println("Изменение роли обратно");
         WebElement el = driver.findElement(By.id("showChangeRole"));
         el = driver.findElement(By.id("showChangeRole"));
         el.click();
         Select dropdown = new Select(driver.findElement(By.id("testdropdown")));
         dropdown.selectByValue("2");
         el = driver.findElement(By.id("BtnAccept"));
         el.click();
         System.out.println("Роль тестового пользователя изменена на юзера");
         el = driver.findElement(By.id("main"));
         el.click();
     }
}