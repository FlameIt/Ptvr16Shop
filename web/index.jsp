<!--<a class="navbar-brand" href="login">Login</a>
<a class="navbar-brand" href="showRegistration">Registration</a>  

  <form class="form-inline">
    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
  </form>
</nav>
<div></div>

</div>
<img style="width: 80%;">
<footer>
  <div class="footer-copyright text-center py-3">© 2019 Copyright:
    
  </div>
   Copyright 

</footer>
    </body>        
</html>-->






    </div>
  </div>
</nav>
<div class="container register" style="border-radius: 30px;">
                <div class="row">
                    <div class="col-md-3 register-left">
                        <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
                        <h3>Welcome</h3>
                        <p>Зарегистрироваться или войти!</p>
                        <a href="login"><input type="submit" name="" value="Login"/></a><br/>
                    </div>
                    <div class="col-md-9 register-right">
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="register-heading">Регистрация</h3>
                                <div class="row register-form">
                                    <div class="col-md-6">
                                        <form action="registration" method="POST" name="form1">
                                            <div class="form-group">
                                                <input type="text" name="name" id="nameCustomer" class="form-control" placeholder="First Name *" value="" required="" />
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="surname" id="surname" class="form-control" placeholder="Last Name *" value="" required="" />
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="login" class="form-control" placeholder="Login *" value="" required="" />
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="password1" class="form-control" placeholder="Password *" value="" required="" />
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="password2" class="form-control"  placeholder="Confirm Password *" value="" required="" />
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="email" id="email" class="form-control" placeholder="Your Email *" value="" required="" />
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="city" id="city" class="form-control" placeholder="City *" value="" required="" />
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="cash" id="cash" class="form-control" placeholder="Cash *" value="" required="" />
                                            </div>
                                            <div class="form-group">
                                                <input type="submit" class="btnRegister"  value="Register" />
                                            </div>
                                        </form>

                                    </div>
                                    
                                    
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
               
<!--        <h1>Зарегистрироваться</h1>
        
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
              Логин:<br>
            <input type="text" name="login"><br>
            Пароль:<br>
            <input type="text" name="password1"><br>
            Повторите пароль:<br>
            <input type="text" name="password2"><br>
            <br>
            <input type="submit" value="Зарегистрироватся">
         
        </form><br>-->
        
        <script src="${pageContext.request.contextPath}/js/index.js"></script>

    </body>
</html>
