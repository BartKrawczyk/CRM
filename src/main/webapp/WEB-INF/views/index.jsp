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
            <div class="main-div" style="height:85vh;">
                <h1 class="display-4" id="welcome">Welcome to GreenMine</h1>
                <p class="lead">
                    Happy work is well organised work...
                </p>
                <br/>
                    <h4 class="data-header">The newest projects:</h4>
                <div class="row">
                    <div class="col-1"></div>
                    <div class="col-10">
                    <table class="table table-hover table-dark" id="index-table">
                        <thead>
                            <tr>
                                <th style="width: 10%" class="tex">#</th>
                                <th style="width: 20%; height: auto">Name</th>
                                <th style="width: 50%; height: auto">Description</th>
                                <th style="width: 30%; height: auto">Created</th>
                            </tr>
                        </thead>
                        <c:forEach items="${firstFive}" var="project" varStatus="theCount">
                            <tr center-block text-center>
                                <td>${theCount.count}</td>
                                <td><a href="/project/details?id=${project.id}">${project.name}</a></td>
                                <td>${project.description}</td>
                                <td>${project.created}</td>
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
