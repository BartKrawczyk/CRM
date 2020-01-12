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
                <h1 class="display-4" id="welcome">Tasks</h1>
                <p class="lead">
                    For Project: <strong><c:out value="${thisProject.name}"/></strong>
                </p>
                        <c:choose>
                            <c:when test="${empty tasks}">
                                <p class="lead">
                                    There's no tasks added to this Project.
                                </p>
                                <button><a href="/addTask?projectId=${thisProject.id}">Add Task to this Project</a></button>
                            </c:when>
                            <c:otherwise>
                            <div class="row">
                                <div class="col-1"></div>
                                <div class="col-10">
                                <table class="table table-hover table-dark" id="index-table">
                                    <thead>
                                    <tr>
                                        <th style="width: 5%">#</th>
                                        <th style="width: 20%; height: auto">Created</th>
                                        <th style="width: 20%; height: auto">Topic</th>
                                        <th style="width: 20%; height: auto">Project</th>
                                        <th style="width: 5%; height: auto">Description</th>
                                        <th style="width: 10%; height: auto">Status</th>
                                        <th style="width: 10%; height: auto">Priority</th>
                                        <th style="width: 10%; height: auto">User</th>
                                    </tr>
                                    </thead>
                                    <c:forEach items="${tasks}" var="task" varStatus="theCount">
                                        <tr center-block text-center>
                                            <td>${theCount.count}</td>
                                            <td>${task.created}</td>
                                            <td>${task.topic}</td>
                                            <td>${task.project.name}</td>
                                            <td>${task.description}</td>
                                            <td>${task.status}</td>
                                            <td>${task.priority}</td>
                                            <td>${task.user}</td>
                                        </tr>
                                    </c:forEach>
                                </table>
                                    <button><a href="/addTask?projectId=${thisProject.id}">Add Task to this Project</a></button>
                            </c:otherwise>
                        </c:choose>
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
