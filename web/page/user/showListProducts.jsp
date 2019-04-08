    </div>
  </div>
</nav>
        <h1>Список </h1>
        ${info}<br>
       
        <ul>
            <c:forEach var="product" items="${listProducts}">
                <h2 style="color: black"><a href="showProduct?productId=${product.id}">${product.name}, Цена- ${product.price}, Количество -${product.count}</a></h2>
                </c:forEach>
        </ul> <a href="index">Главная страница</a><br>

        <div class="footer">
         
