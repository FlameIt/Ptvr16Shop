    </div>
  </div>
</nav>


<div class="container contact-form">
            <form method="post">
                <h3>Список покупателей</h3>
               <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <ol type="1">
                                <c:forEach var="customer" items="${listCustomers}">
                                    <li><h4>Имя: ${customer.name}<br> Фамилия: ${customer.surname}<br> Почта: ${customer.email}</h4></li>
                                </c:forEach>
                            </ol>
                        </div>
                        <div class="form-group">
                            <a class="btn btn-dark" href="index">На главную </a>
                        </div>
                    </div>
                </div>
            </form>
</div>