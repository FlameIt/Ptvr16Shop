    </div>
  </div>
</nav>
        <h1>Добавить продукт</h1>
        ${info}<br><ul class="nav justify-content-center">
            <div class="col-md-3">
        <a href="index">Главная страница</a><br>
        <a href="showUploadFile">Загрузить изображение обложки</a>
        
        <form action="addNewProduct" method="POST">
            Название:<br>
            <input type="text" class="form-control" name="name"><br>
            Cena:<br>
            <input type="text" class="form-control" name="price"><br>
            <br>
            Количество экземпляров:<br>
            <input type="text" class="form-control" name="count"><br>
          
            Обложка:<br>
            <select name="coverId">
                <c:forEach var="cover" items="${listCovers}">
                    <option value="${cover.id}">${cover.name}</option>
                </c:forEach>
            </select>
            <br>  <br>
            <input type="submit" class="btn btn-dark" value="Добавить"> <a class="btn btn-dark" href="index">На главную </a>
        </form>
        
                  <div class="footer">

</div>
    </body>
</html>
