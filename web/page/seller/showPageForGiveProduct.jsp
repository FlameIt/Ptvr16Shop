    </div>
  </div>
</nav>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" href="css/index.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Магазин</title>
    </head>
    <body>
        
        
<div class="container contact-form">
            <div class="contact-image">
                <img src="https://image.ibb.co/kUagtU/rocket_contact.png" alt="rocket_contact"/>
            </div>
            <form action="giveProduct" method="POST">
                <h3>Выдать продукт покупателю</h3>
               <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            ${info}
                        </div>
                            <div class="form-group">
                                    <select id="testdropdown1" name="productId">
                                        <option disabled selected>Выберите продукт</option>
                                        <c:forEach var="productItem" items="${listProducts}">
                                            <option value="${productItem.id}">${productItem.name}</option>
                                        </c:forEach>
                                    </select>
                                   <select id="testdropdown2" name="customerId">
                                       <option disabled selected>Выберите покупателя</option>
                                        <c:forEach var="customerItem" items="${listCustomers}">
                                            <option value="${customerItem.id}">${customerItem.name} ${customerItem.surname}</option>
                                        </c:forEach>
                                   </select>
                                    <input type="submit" id="BtnGive" class="btn btn-dark" value="Выдать продукт">
                            </div>
                        <div class="form-group">
                            <a class="btn btn-dark" href="index"><h4>Главная страница</h4></a>
                        </div>
                    </div>
                </div>
            </form>
</div>