    </div>
  </div>
</nav>
        

<div class="container contact-form">
    
                
                <h3>Продукты</h3>
                <h1>Список </h1>
                ${info}<br>
                <div class="row">
                    <div class="col-md-12">
                        <ul>
                        <c:forEach var="product" items="${listProducts}">
                            <h2 style="color: black"><a href="showProduct?productId=${product.id}">${product.name}, Цена- ${product.price}, Количество -${product.count}</a></h2>
                            </c:forEach>
                        </ul> <a href="index">Главная страница</a><br>
                    </div>
                </div>
</div>
        
        
        <div class="footer">
         </body
                </html>
