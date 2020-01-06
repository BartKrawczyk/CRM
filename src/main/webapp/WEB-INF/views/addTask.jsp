<%--
  Created by IntelliJ IDEA.
  User: Bart
  Date: 31/12/2019
  Time: 11:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
                <h1 class="display-4" id="welcome">Add Task for the Project: <c:out value="${project.name}"/> </h1>
                <p class="lead">
                   Please fill the form:
                </p>
                <div class="row">
                    <div class="col-1"></div>
                    <div class="col-10">
<%--                    <table class="table table-hover table-dark" id="index-table">--%>
                        <table cellpadding="10">
                            <div class="row">
                                <div class="col-6">
                                    <form:form method="post" modelAttribute="task">
                                        <tr><td class="data-header">Topic: </td><td><form:input path="topic"/> </td>
                                           <td><form:errors path="topic" cssClass="error"/></td></tr>
                                        <tr><td class="data-header">Description: </td><td><form:textarea path="description"/> </td>
                                            <td><form:errors path="description" cssClass="error"/></td></tr>
                                        <tr><td class="data-header">Status: </td><td><form:input path="status"/> </td>
                                            <td><form:errors path="status" cssClass="error"/></td></tr>
                                        <tr><td class="data-header">Priority: </td><td><form:input path="priority"/> </td>
                                            <td><form:errors path="priority" cssClass="error"/></td></tr>
                                        <tr><td class="data-header">User: </td>
                                            <td><form:select path="user" multiple="false">
                                                <form:option value="" label="-- Proszę wybrać --"/>
                                                <form:options items="${projectUsers}" itemLabel="lastName"  itemValue="lastName"/>
                                            </form:select> </td>
<%--                                            <td><form:errors path="project" cssClass="error"/></td>--%>
                                        </tr>
                                        <form:hidden path="project.id"/>
                                        <tr><td></td><td><input type="submit" value="Add Task" class="btn-login"/> </td></tr>
                                    </form:form>
                                </div>
                            </div>
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
