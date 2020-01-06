<%--
  Created by IntelliJ IDEA.
  User: Bart
  Date: 31/12/2019
  Time: 11:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>GreenMine</title>
</head>
<body>
<div class="container">
    <%@include file="header.jsp"%>
    <div class="row">
        <div class="col-12">
            <div class="main-div" style="min-height:85vh;">
                <h1 class="display-4" id="welcome">Project Details</h1>
                <p class="lead">
                    Check:
                </p>
                <div class="row">
                    <div class="col-1"></div>
                    <div class="col-10">
                    <table class="table table-hover table-dark" id="index-table">
                        <tr>
                            <th>Project name:</th><td><c:out value="${project.name}"/></td>
                        </tr>
                        <tr>
                            <th>Created:</th><td><c:out value="${project.created}"/></td>
                        </tr>
                        <tr>
                            <th>Identifier:</th><td><c:out value="${project.identifier}"/></td>
                        </tr>
                        <tr>
                            <th>Description:</th><td><c:out value="${project.description}"/></td>
                        </tr>
                        <tr>
                            <th>Users:</th><td><c:forEach items="${project.users}" var="user">
                            <ul class="list-group">
                                <li>${user.firstName} ${user.lastName}</li>
                            </ul>
                        </c:forEach></td></td>
                        </tr>
                    </table>
                    </div>
                    <div class="col-1"></div>
                    </div>
            </div>
        </div>
    </div>
</div>
<%@include file="footer.jsp"%>
</body>
</html>
