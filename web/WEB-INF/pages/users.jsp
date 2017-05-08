<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>

<html>
<head>
    <title>Users Page</title>

    <spring:url value="${pageContext.request.contextPath}/resources/css/elegant-aero-form.css" var="elegant_aero" />
    <spring:url value="${pageContext.request.contextPath}/resources/css/users_style.css" var="users_style" />
    <spring:url value="${pageContext.request.contextPath}/resources/css/table-tg.css" var="table_tg" />

    <link href="${elegant_aero}" rel="stylesheet" type="text/css"/>
    <link href="${users_style}" rel="stylesheet" type="text/css"/>
    <link href="${table_tg}" rel="stylesheet" type="text/css"/>

    <style>
        #body-users {
            background: url("${pageContext.request.contextPath}/resources/images/bkgnd.jpg") no-repeat center;
            background-size: cover;
        }
    </style>

</head>
<body id="body-users">

<h1>User List</h1>

<c:url var="searchAction" value="/users/search"/>
<form:form action="${searchAction}" commandName="user" cssClass="elegant-aero">
    <%@include file="/resources/main_theme/jsp/search-user-form.jsp"%>
</form:form>

<form:form cssClass="tg">
    <%@include file="/resources/main_theme/jsp/list-users-table.jsp"%>
</form:form>

<br>
<c:url var="addAction" value="/users/add"/>
<form:form action="${addAction}" commandName="user" cssClass="elegant-aero">
    <%@include file="/resources/main_theme/jsp/add-user-form.jsp"%>
</form:form>

<div align="center">
    <form id="back_form" >
        <button id="back_button" type="button" class="button" name="back" onclick="location.href='<c:url value="/index.jsp"/>'">Back</button>
    </form>
</div>
<footer id="footer_users">
    <div>Posted by: Pavlo Kuchereshko</div>
    <div>Contact information: <a href="mailto:atos.ua@gmail.com">
        atos.ua@gmail.com</a>.</div>
</footer>
</body>
</html>