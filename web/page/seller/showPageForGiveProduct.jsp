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
<!--        <div class="container contact-form">
        <h1>Выдать продукт покупателю</h1>
        ${info}<br>
        <div class="container">
        <form action="giveProduct" method="POST">
            <select name="productId">
                <c:forEach var="productItem" items="${listProducts}">
                    <option value="${productItem.id}">${productItem.name}</option>
                </c:forEach>
            </select>
           <select name="customerId">
                <c:forEach var="customerItem" items="${listCustomers}">
                    <option value="${customerItem.id}">${customerItem.name} ${customerItem.surname}</option>
                </c:forEach>
           </select>
            <input type="submit" class="btn btn-dark" value="Выдать продукт">
        </form>
        <a href="index">Главная страница</a>
        </div>-->
        
        
<div class="container contact-form">
            <div class="contact-image">
                <img src="https://image.ibb.co/kUagtU/rocket_contact.png" alt="rocket_contact"/>
            </div>
            <form action="giveProduct" method="POST">
                <h3>Login</h3>
               <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <h1>Выдать продукт покупателю</h1>
                            ${info}
                        </div>
                            <div class="form-group">
                                    <select name="productId">
                                        <c:forEach var="productItem" items="${listProducts}">
                                            <option value="${productItem.id}">${productItem.name}</option>
                                        </c:forEach>
                                    </select>
                                   <select name="customerId">
                                        <c:forEach var="customerItem" items="${listCustomers}">
                                            <option value="${customerItem.id}">${customerItem.name} ${customerItem.surname}</option>
                                        </c:forEach>
                                   </select>
                                    <input type="submit" class="btn btn-dark" value="Выдать продукт">
                            </div>
                        <div class="form-group">
                            <a href="index"><h4>Главная страница</h4></a>
                        </div>
                    </div>
                </div>
            </form>
</div>