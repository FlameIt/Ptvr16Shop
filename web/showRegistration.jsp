    </div>
  </div>
</nav>
<div class="container register" style="border-radius: 30px;">
                <div class="row">
                    <div class="col-md-3 register-left">
                        <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
                        <h3>Welcome</h3>
                        <p>Зарегистрироваться или войти!</p>
                        <a href="login"><input type="submit" value="Login"/></a><br/>
                    </div>
                    <div class="col-md-9 register-right">
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="register-heading">Регистрация</h3>
                                <div class="row register-form">
                                    <div class="col-md-6">
                                        <form action="registration" id="showRegistration" method="POST" name="form1">
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
                                                <input type="submit" id="btnReg" class="btnRegister"  value="Register" />
                                            </div>
                                        </form>

                                    </div>
                                    
                                    
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        
        <script src="${pageContext.request.contextPath}/js/index.js"></script>

