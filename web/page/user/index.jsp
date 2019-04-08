 <a href="showListProducts">Products</a> 
<a class="nav-item nav-link" href="logout">Logout</a>
  <form class="form-inline">
    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
  </form>

</div>
  </div>
</nav>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<a class="navbar-brand" href="showListProducts">Products</a><br>${info}<br>
<a class="navbar-brand" href="logout">Logout</a><br>
 </nav>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="css/index.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <H1>Добро пожаловать в наш магазин</H1>
        
        <div class="container">
<nav class="navbar navbar-expand-sm bg-dark navbar-dark" >
  <ul class="navbar-nav">
        <a href="showLogin">Войти</a><br>
        <a href="logout">Выйти</a><br>

        <a href="showListProducts">Список productov</a><br>${info}<br>
        <img style="width: 80%; " src="images//dd.jpg">
        <footer>
            <div class="footer-copyright text-center py-3">© 2019 Copyright:

            </div>
            <!-- Copyright -->

        </footer>
    </body>
</html>
