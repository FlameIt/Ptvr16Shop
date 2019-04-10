    </div>
  </div>
</nav>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" href="css/index.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Изменение пароля</title>
    </head>

    <body>
        <h2 style="text-align: center;">Изменить пароль</h2>
       
        <h4 style="text-align: center;">Здравствуйте, ${username}, вы вошли как ${login}</h4>
        <form action="changePassword" method="POST">
           
            <ul class="nav justify-content-center">
            <div class="col-md-4">
             <label for="password"> Введите действующий пароль: </label>
    <input type="password" name="oldPassword" class="form-control" id="exampleInputEmail1" aria-describedby="login" placeholder="Enter password">
    <small id="emailHelp" class="form-text text-muted">Введите ваш пароль:</small>
             <label for="password">   Введите новый пароль: </label>
    <input type="password" name="newPassword1" class="form-control" id="exampleInputEmail1" aria-describedby="login" placeholder="Enter new  password">
    <small id="emailHelp" class="form-text text-muted">Введите ваш новый пароль:</small>
            <label for="password">   Повторите пароль:</label>
    <input type="password" name="newPassword2" class="form-control" id="exampleInputEmail1" aria-describedby="login" placeholder="Enter confirm password">
    <small id="emailHelp" class="form-text text-muted">Введите ваш новый пароль:</small>
           
    <input type="submit" class="btn btn-primary" value="Изменить пароль"><br><br>
            <a href="index" class="btn btn-primary" >На главную </a></div></ul>
        </form>
