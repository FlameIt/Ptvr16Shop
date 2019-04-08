    </div>
  </div>
</nav>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" href="css/index.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Выбранная для просмотра продуктов</title>
    </head>
    <body>
        <h1>Просмотр продуктов!</h1>
        Фото: <br>
        <img src="insertFile/${cover.path}"  ><br>
        Заголовок: ${product.name}<br>
        Цена: ${product.price}<br>
        Доступно товаров: ${product.count}
        <a href="index">На главную </a>
                  <div class="footer">
  <p>Footer</p>
</div>
    </body>
</html>
