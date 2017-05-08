<p>
    <label>
        <span>
            <form:label path="searchUser" cssClass="field-style field-split align-left">
                <spring:message text="Search User :"/>
            </form:label>
        </span>
        <form:input path="searchUser" cssClass="field-style field-split" maxlength="50" cssStyle="width:30%" placeholder="Type a surname"/>
        <input type="submit" value="<spring:message text="Search"/>" class="button"/>
        <button type="button" class="button" name="back" onclick="location.href='../../users'">Cancel</button>
    </label>
</p>