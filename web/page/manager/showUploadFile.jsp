    </div>
  </div>
</nav>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" href="css/index.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Загрузка файла</title>
    </head>
    <body>

<div class="container contact-form">
            <form action="uploadFile" method="POST" enctype="multipart/form-data">
                <h3>Загрузка файла</h3>
               <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <input type="text" name="description" class="form-control" placeholder="Название продукта" value="" required="" />
                        </div>
                        <div class="form-group">
                            <input type="file" name="file" class="form-control" required="" />
                        </div>
                        <div class="form-group">
                            <input type="submit" class="btnContact" value="Загрузить" />
                        </div>
                        <div class="form-group">
                            <a class="btn btn-dark" href="index">На главную </a>
                        </div
                    </div>
                </div>
            </form>
</div>
