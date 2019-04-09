package entity;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.metamodel.SingularAttribute;

/**
 *
 * @author pupil
 */
@Entity
public class Customer implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
     private Long id;
    @Column(unique = true)
    private String name;
     private String email;
    private String surname;
    private String city;
    private Integer cash;
    

    public Customer() {
    }


    public Customer(String name, String email,String surname, String city, Integer cash) {
        this.name = name;
         this.email = email;
        this.surname = surname;
        this.city = city;
        this.cash = cash;
       
    }

    public Customer(String kekmekgmailcom, String Kek, String Mek) {
      
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
    

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
       public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
    public Integer getCash() {
        return cash;
    }

    public void setCash(Integer cash) {
        this.cash = cash;
    }

    @Override
    public String toString() {
        return "Customer{" + "name=" + name + "email=" + email +  ", surname=" + surname + ", city="+ city+" cash=" + cash + '}';
    }

   
}