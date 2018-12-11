<%-- 
    Document   : page3
    Created on : Dec 6, 2018, 1:55:03 PM
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
        <title>JSP Page3</title>
    </head>
    <body>
       <h1>Page3 загружена</h1>
       <p>${info}</p>
       <h2>
        <a href='index.html'>Главная страницы</a></h2>
       <div>
            <c:forEach var="reader" items="${listReaders}">
                <li>${reader.code},${reader.name},${reader.surname}</li>
            </c:forEach>
        </div>
    </body>
</html>
