<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<html>
<head>
    <title>UserData</title>
    <spring:url value="${pageContext.request.contextPath}/resources/css/elegant-aero-form.css" var="elegant_aero" />
    <spring:url value="${pageContext.request.contextPath}/resources/css/table-tg.css" var="table_tg" />
    <link href="${elegant_aero}" rel="stylesheet"/>
    <link href="${table_tg}" rel="stylesheet"/>

    <style>
        #body-userdata {
            background: url("${pageContext.request.contextPath}/resources/images/aurora_sky_440x200.jpg") no-repeat center;
            background-size: cover;
        }
    </style>
</head>
<body id="body-userdata">
<h1>User Details</h1>

<table class="tg">
    <tr>
        <th width="10">ID</th>
        <th width="40">Name</th>
        <th width="70">Surname</th>
        <th width="20">Age</th>
        <th width="50">Is Admin</th>
    </tr>
    <tr>
        <td>${user.id}</td>
        <td>${user.name}</td>
        <td>${user.surname}</td>
        <td>${user.age}</td>
        <td>${user.isAdmin}</td>
    </tr>
</table>
</body>
</html>
