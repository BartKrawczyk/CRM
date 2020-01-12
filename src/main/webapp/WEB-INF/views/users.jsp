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
                <h1 class="display-4" id="welcome">Projects</h1>
                <p class="lead">
                    Our Current Projects:
                </p>
                <div class="row">
                    <div class="col-1"></div>
                    <div class="col-10">
                    <table class="table table-hover table-dark" id="index-table">
                        <thead>
                            <tr>
                                <th style="width: 5%">#</th>
                                <th style="width: 15%; height: auto">First Name</th>
                                <th style="width: 15%; height: auto">Last Name</th>
                                <th style="width: 15%; height: auto">Login</th>
                                <th style="width: 10%; height: auto">Admin</th>
                                <th style="width: 40%; height: auto">Projects</th>
                            </tr>
                        </thead>
                        <c:forEach items="${users}" var="user" varStatus="theCount">
                            <tr center-block text-center>
                                <td>${theCount.count}</td>
                                <td>${user.firstName}</td>
                                <td>${user.lastName}</td>
                                <td>${user.login}</td>
                                <td>${user.admin}</td>
                                <td><c:forEach items="${user.projects}" var="project">
                                    <ul class="list-group">
                                        <li><a href="/project/details/?id=${project.id}">${project.name}</a></li>
                                    </ul>
                                </c:forEach></td>
                            </tr>
                        </c:forEach>
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
