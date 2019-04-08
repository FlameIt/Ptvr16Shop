    </div>
  </div>
</nav>
        <h1>Список покупателей</h1>
        ${info}<br>
    
        <ul>
            <c:forEach var="customer" items="${listCustomers}">
                <h2>${customer.name}, ${customer.surname}, ${customer.email}</h2>
            </c:forEach>
        </ul><a href="index">На главную </a></div>

