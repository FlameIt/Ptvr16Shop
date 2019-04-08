    </div>
  </div>
</nav>

       <div class="login-form">
           <div class="control-group">
               
        <h1>Зарегистрироваться</h1>
        <form action="registration" method="POST" name="form1" >
             Имя:<br>
            <input type="text" id="nameCustomer" name="name"><br>
             Фамилия:<br>
            <input type="text" id="surname" name="surname"><br>
              Email:<br>
            <input type="text" id="email" name="email"><br>
            Город:<br>
            <input type="text" id="city" name="city"><br>
             Деньги:<br>
            <input type="text" id="cash" name="cash"><br>
            <br>
              Логин:<br>
            <input type="text" name="login"><br>
            Пароль:<br>
            <input type="text" name="password1"><br>
            Повторите пароль:<br>
            <input type="text" name="password2"><br>
            <br>
            <input type="submit" value="Зарегистрироватся">
         
        </form><br>
        
        <script src="${pageContext.request.contextPath}/js/index.js"></script>
    </body>
</html>
