<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Home Page</title>
</head>
<body>

<h3>Hello from Home page!</h3>
<p>Display user info</p>
<p>User : <security:authentication property="principal.username"/></p>
<p>Roles(s) : <security:authentication property="principal.authorities"/></p>

<security:authorize access="hasRole('MANAGER')">
    <p><a href="${pageContext.request.contextPath}/leaders">To leaders</a></p>
</security:authorize>

<security:authorize access="hasRole('ADMIN')">
    <p><a href="${pageContext.request.contextPath}/system">To admins</a></p>
</security:authorize>

<form:form action="${pageContext.request.contextPath}/logout" method="POST">
    <input type="submit" value="Logout">
</form:form>
</body>
</html>