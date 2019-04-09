    </div>
  </div>
</nav>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <body>
        <h1>Просмотр продуктов!</h1>
        
        
                  <div class="footer">
  <p>Footer</p>
</div>
    </body>
</html>



<div class="container contact-form">
                <h3>Просмотр продуктов</h3>
               <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            Фото: <br>
                            <img src="insertFile/${cover.path}"  ><br>
                            Заголовок: ${product.name}<br>
                            Цена: ${product.price}<br>
                            Доступно товаров: ${product.count}
                        </div>
                    </div>
                </div>
</div>

    </body>
</html>