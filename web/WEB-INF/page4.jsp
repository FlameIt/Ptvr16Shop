<%-- 
    Document   : page4
    Created on : Dec 6, 2018, 1:55:50 PM
    Author     : pupil
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" href="css/index.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Библиотека</title>
    </head>
    <body>
        <h1>Библиотека</h1>
        <form action="giveBook" method="POST" name="form1">
            <h2>Список книг
            <select name="book">
                <c:forEach var="bookItem" items="${listBooks}">
                    <option value="${bookItem.isbn}">${bookItem.name} ${book.author}</option>
                </c:forEach>
            </select></h2>
                <h2>Список читателей
            <select name="reader">
                <c:forEach var="readerItem" items="${listReaders}">
                    <option value="${readerItem.code}">${readerItem.name} ${readerItem.surname}</option>
                </c:forEach>
            </select>
                <br>
                <button type="submit" name="giveBook">Выдать книгу</button>
        </form>
        
         <a href="index.html">На главную </a></h2>
    </body>
</html>