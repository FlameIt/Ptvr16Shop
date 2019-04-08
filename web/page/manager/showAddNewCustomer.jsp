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
        <h1>Добавить </h1>
        ${info}<br>
        <a href="index.jsp">Главная страница</a><br>
        <form action="addNewCustomer" method="POST">
            Имя:<br>
            <input type="text" name="name"><br>
            Фамилия:<br>
            <input type="text" name="surname"><br>
            Личный номер:<br>
            <input type="text" name="code"><br>
            <br>
            <input type="submit" value="Добавить книгу"><br>
        </form><a href="index">На главную </a>
                  <div class="footer">
  <p>Footer</p>
</div>
    </body>
</html>
