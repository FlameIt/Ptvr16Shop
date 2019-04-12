    </div>
  </div>
</nav>
        

<div class="container contact-form">
            <div class="contact-image">
                <img src="https://image.ibb.co/kUagtU/rocket_contact.png" alt="rocket_contact"/>
            </div>
            <form action="changeRole" method="POST">
                <h3>Изменить роль пользователя</h3>
               <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            Список пользователей:<br>
                            <c:forEach var="role" items="${listRoles}">
                                <c:if test="${role.id == 5}">
                                    <p><input name="roleId" type="radio" checked value="${role.id}">${role.name}</p>
                                </c:if>
                                <c:if test="${role.id ne 5}">
                                    <p><input name="roleId" type="radio" value="${role.id}">${role.name}</p>
                                </c:if>    

                            </c:forEach>
                            <select id="testdropdown" name="userId" >
                                <option value="#" selected></option>
                                <c:forEach var="entry" items="${mapUsers}">
                                    <option value="${entry.key.id}">${entry.key.login}: "${entry.value.name}"</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="form-group">
                            <input type="submit" id="BtnAccept" value="Назначить" />
                        </div>
                        <div class="form-group">
                            <a class="btn btn-dark" id="backIndex" href="index">На главную </a>
                        </div>
                    </div>
                </div>
            </form>
</div>