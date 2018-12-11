<%-- 
    Document   : page2
    Created on : Dec 6, 2018, 12:52:05 PM
    Author     : pupil
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/index.css">
         <link href="https://fonts.googleapis.com/css?family=Pacifico|Quicksand" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page2</title>
    </head>
    <body>
        <h1>Page2 загружена</h1>
        <p>${info}
        </p>
        <h2>
        <a href='index.html'>Главная страницы</a>
        
        <div>
            <c:forEach var="book" items="${listBooks}">
                <li>${book.name},${book.author},${book.isbn}</li>
            </c:forEach>
        </div></h2>
   
    </body>
</html>
