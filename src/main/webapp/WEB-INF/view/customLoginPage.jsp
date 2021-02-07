<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <%--    <link type="text/css" href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">--%>
    <title>Login page</title>
</head>
<body>
<h1>Custom login page</h1>
<form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="post">

    <%--    Checking errors--%>
    <c:if test="${param.error != null}">
        <i>Sorry you wrote not valid login or password</i>
    </c:if>

    <p>User name <input type="text" name="username"></p>
    <p>User password <input type="password" name="password"></p>

    <input type="submit" value="Login">
</form:form>
</body>
</html>
