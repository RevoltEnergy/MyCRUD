<c:if test="${!empty listUsers}">
    <spring:url value="/resources/js/popupCenter.js" var="popupCenter" />
    <script src="${popupCenter}"></script>
    <table class="tg">
        <tr>
            <th width="10">ID</th>
            <th width="40">Name</th>
            <th width="70">Surname</th>
            <th width="20">Age</th>
            <th width="50">Is Admin</th>
            <th width="150">Create Date</th>
            <th width="20">Edit</th>
            <th width="30">Delete</th>
        </tr>
        <c:forEach items="${listUsers}" var="user">
            <tr>
                <td>${user.id}</td>
                <td><a href="/userdata/${user.id}" onclick="PopupCenter('/userdata/${user.id}', 'User Details', 430, 190);
                    return false;">${user.name}</a></td>
                <td>${user.surname}</td>
                <td>${user.age}</td>
                <td>${user.isAdmin}</td>
                <td>${user.createDate}</td>
                <td><button type="button" class="button" name="edit"
                            onclick="location.href='<c:url value='/edit/${user.id}'/>'">Edit</button></td>
                <td><button type="button" class="button" name="delete"
                            onclick="location.href='<c:url value='/remove/${user.id}'/>'">Delete</button></td>
            </tr>
        </c:forEach>
    </table>
</c:if>