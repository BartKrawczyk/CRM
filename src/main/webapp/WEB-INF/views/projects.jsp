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
                                <th style="width: 20%; height: auto">Created</th>
                                <th style="width: 20%; height: auto">Name</th>
                                <th style="width: 20%; height: auto">Identifier</th>
                                <th style="width: 5%; height: auto">Active</th>
                                <th style="width: 10%; height: auto">Tasks</th>
                                <th style="width: 10%; height: auto">Details</th>
                                <th style="width: 10%; height: auto">Edit</th>
                            </tr>
                        </thead>
                        <c:forEach items="${projects}" var="project" varStatus="theCount">
                            <tr center-block text-center>
                                <td>${theCount.count}</td>
                                <td>${project.created}</td>
                                <td>${project.name}</td>
                                <td>${project.identifier}</td>
                                <td>${project.active}</td>
                                <td><a href="/tasks?id=${project.id}">Tasks</a></td>
                                <td><a href="/project/details?id=${project.id}">Details</a></td>
                                <td><a href="/project/edit?id=${project.id}">Edit</a></td>
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
