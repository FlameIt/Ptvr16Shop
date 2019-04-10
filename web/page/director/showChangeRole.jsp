    </div>
  </div>
</nav>
        Список пользователей:
        <BR>
        <form action="changeRole" method="POST">
            <c:forEach var="role" items="${listRoles}">
                <c:if test="${role.id == 5}">
                    <p><input name="roleId" type="radio" checked value="${role.id}">${role.name}</p>
                </c:if>
                <c:if test="${role.id ne 5}">
                    <p><input name="roleId" type="radio" value="${role.id}">${role.name}</p>
                </c:if>    
                
            </c:forEach>
            <select name="userId" >
                <option value="#" selected></option>
                <c:forEach var="entry" items="${mapUsers}">
                    <option value="${entry.key.id}">${entry.key.login}: "${entry.value.name}"</option>
                </c:forEach>
            </select>
            <p><input type="submit" value="Назначить"></p>
        </form></div>
                        <a href="index">На главную </a>
                <div class="footer">

