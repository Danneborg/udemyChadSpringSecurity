<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link type="text/css" href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <link type="text/css" href="<c:url value="/resources/css/customLogin.css" />" rel="stylesheet">
    <title>Login page</title>
</head>
<body>
<%--<div>--%>

<%--    <div id="loginbox" style="margin-top: 50px;"--%>
<%--         class="mainbox col-md-3 col-md-offset-2 col-sm-6 col-sm-offset-2">--%>

<%--        <div class="panel panel-info">--%>

<%--            <div class="panel-heading">--%>
<%--                <div class="panel-title">Sign In</div>--%>
<%--            </div>--%>

<%--            <div style="padding-top: 30px" class="panel-body">--%>

<%--                <!-- Login Form -->--%>
<%--                <form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST"--%>
<%--                           class="form-horizontal">--%>

<%--                    <!-- Place for messages: error, alert etc ... -->--%>
<%--                    <div class="form-group">--%>
<%--                        <div class="col-xs-15">--%>
<%--                            <div>--%>

<%--                                <c:if test="${param.error != null}">--%>
<%--                                    <div class="alert alert-danger col-xs-offset-1 col-xs-10">--%>
<%--                                        Invalid username and password.--%>
<%--                                    </div>--%>
<%--                                </c:if>--%>


<%--                                <!----%>
<%--                                <div class="alert alert-success col-xs-offset-1 col-xs-10">--%>
<%--                                    You have been logged out.--%>
<%--                                </div>--%>
<%--                                -->--%>

<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <!-- User name -->--%>
<%--                    <div style="margin-bottom: 25px" class="input-group">--%>
<%--                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>--%>

<%--                        <input type="text" name="username" placeholder="username" class="form-control">--%>
<%--                    </div>--%>

<%--                    <!-- Password -->--%>
<%--                    <div style="margin-bottom: 25px" class="input-group">--%>
<%--                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>--%>

<%--                        <input type="password" name="password" placeholder="password" class="form-control">--%>
<%--                    </div>--%>

<%--                    <!-- Login/Submit Button -->--%>
<%--                    <div style="margin-top: 10px" class="form-group">--%>
<%--                        <div class="col-sm-6 controls">--%>
<%--                            <button type="submit" class="btn btn-success">Login</button>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                </form:form>--%>

<%--            </div>--%>

<%--        </div>--%>

<%--    </div>--%>

<%--</div>--%>
<div class="wrapper fadeInDown">
    <h2>Login page</h2>
    <div id="formContent">
        <!-- Tabs Titles -->
        <!-- Login Form -->
        <form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST">
            <!-- Place for messages: error, alert etc ... -->
            <div class="form-group">
                <div class="col-xs-15">
                    <div>

                        <c:if test="${param.error != null}">
                            <div class="alert alert-danger col-xs-offset-1 col-xs-10">
                                Invalid username and password.
                            </div>
                        </c:if>


                        <!--
                        <div class="alert alert-success col-xs-offset-1 col-xs-10">
                            You have been logged out.
                        </div>
                        -->

                    </div>
                </div>
            </div>

                <input type="text"  class="fadeIn second" name="username" placeholder="login">
                <input type="password"  class="fadeIn third" name="password" placeholder="password">
                <input type="submit" class="fadeIn fourth" value="Log In">

        </form:form>


    </div>
</div>

<script src="<c:url value="/resources/js/jquery.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/resources/js/popper.min.js" />" type="text/javascript"></script>
</body>
</html>
