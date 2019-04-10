    </div>
  </div>
</nav>
        

<div class="container contact-form">
            <form action="addNewProduct" method="POST">
                <h3>Добавить продукт</h3>
               <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <input type="text" name="name" class="form-control" placeholder="Название продукта" value="" required="" />
                        </div>
                        <div class="form-group">
                            <input type="text" name="price" class="form-control" placeholder="Цена" value="" required="" />
                        </div>
                        <div class="form-group">
                            <input type="text" name="count" class="form-control" placeholder="Количество продуктов" value="" required="" />
                        </div>
                        <div class="form-group">
                            <a href="showUploadFile">Загрузить изображение обложки</a><br>
                            Обложка:<br>
                                <select name="coverId">
                                    <c:forEach var="cover" items="${listCovers}">
                                        <option value="${cover.id}">${cover.name}</option>
                                    </c:forEach>
                                </select>
                        </div>
                        <div class="form-group">
                            <input type="submit" class="btn btn-dark" value="Добавить" /> <a class="btn btn-dark" href="index">На главную </a>
                        </div>
                    </div>
                </div>
            </form>
</div>

