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
        <title>Page5</title>
    </head>
    <body>
        
          <h1>Выдаем книгу</h1>
                <div>
                    <h2>
                    <li>${history.reader.name} ${history.reader.surname} взял книгу ${history.book.name}</li>
          
               
         <a href="index.html">На главную </a></h2>  </div>
    </body>
</html>