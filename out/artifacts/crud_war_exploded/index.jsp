<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Yoo!</title>
    <link href="/resources/css/elegant-aero-form.css" rel="stylesheet"/>
    <link href="/resources/css/index_style.css" rel="stylesheet"/>
    <style>
        #body-index {
            background: url("/resources/images/aurora_borealis_atmosphere-wide.jpg") no-repeat center;
            background-size: cover;
            display:flex;
        }
    </style>
</head>
<body id="body-index">
<br/>
<form id="begin_form">
    <h1> My first CRUD</h1>
    <br>
    <button id="begin_button" type="button" class="button" name="back" onclick="location.href='<c:url value="/users"/>'">User List</button>
</form>
<br/>
<footer id="footer_index">
    <p>Posted by: Pavlo Kuchereshko</p>
    <p>Contact information: <a href="mailto:atos.ua@gmail.com">
        atos.ua@gmail.com</a>.</p>
</footer>
</body>
</html>