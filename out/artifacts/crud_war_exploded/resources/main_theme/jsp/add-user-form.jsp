<h1>Add a User<span>Please fill all the texts in the fields.</span></h1>
<p>
    <c:if test="${!empty user.name}">
        <label>
            <span>
                <form:label path="id">
                    <spring:message text="ID :"/>
                </form:label>
            </span>

                <form:input path="id" readonly="true" size="8" disabled="true"/>
                <form:hidden path="id"/>

        </label>
    </c:if>
    <label>
        <span>
            <form:label path="name">
                <spring:message text="Name :"/>
            </form:label>
        </span>
        <form:input path="name" placeholder="Type a name"/>
    </label>
    <label>
        <span>
            <form:label path="surname">
                <spring:message text="Surname :"/>
            </form:label>
        </span>
        <form:input path="surname" placeholder="Type a surname"/>
    </label>
    <label>
        <span>
            <form:label path="age">
                <spring:message text="Age :"/>
            </form:label>
        </span>
        <form:input path="age" placeholder="Type an age"/>
    </label>
    <label>
        <span>
            <form:label path="isAdmin">
                <spring:message text="Is Admin :"/>
            </form:label>
        </span>
        <form:checkbox path="isAdmin" cssClass="button"/>
    </label>
    <label>
        <br>
        <span>&nbsp;</span>
        <c:if test="${!empty user.name}">
            <div>
                <button type="submit" class="button">Edit User</button>
                <button type="button" class="button" name="back" onclick="history.back()">Cancel</button>
            </div>



        </c:if>
        <c:if test="${empty user.name}">
            <div>
                <button type="submit" class="button">Add User</button>
            </div>
        </c:if>
    </label>
</p>