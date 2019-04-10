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

<div class="container contact-form">
            <div class="contact-image">
                <img src="https://image.ibb.co/kUagtU/rocket_contact.png" alt="rocket_contact"/>
            </div>
            <form action="changePassword" method="POST">
                <h3>Login</h3>
                <h4>Здравствуйте, ${username}, вы вошли как ${login}</h4>
               <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="password"> Введите действующий пароль: </label>
                            <input type="password" name="oldPassword" class="form-control" id="exampleInputEmail1" aria-describedby="login" placeholder="Enter password">
                            <small id="emailHelp" class="form-text text-muted">Введите ваш пароль:</small>
                                     <label for="password">   Введите новый пароль: </label>
                            <input type="password" name="newPassword1" class="form-control" id="exampleInputEmail1" aria-describedby="login" placeholder="Enter new  password">
                            <small id="emailHelp" class="form-text text-muted">Введите ваш новый пароль:</small>
                                    <label for="password">   Повторите пароль:</label>
                            <input type="password" name="newPassword2" class="form-control" id="exampleInputEmail1" aria-describedby="login" placeholder="Enter confirm password">
                            <small id="emailHelp" class="form-text text-muted">Введите ваш новый пароль:</small>
                        </div>
                        <div class="form-group">
                            <input type="submit" class="btnContact" placeholder="Изменить пароль" />
                        </div>
                        <div class="form-group">
                            <a class="btn btn-dark" href="index">На главную </a>
                        </div>
                    </div>
                </div>
            </form>
</div>