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
                <h1 class="display-4" id="welcome">Add User</h1>
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
                                    <form:form method="post" modelAttribute="user">
                                        <tr><td class="data-header">First Name: </td><td><form:input path="firstName"/> </td>
                                           <td><form:errors path="firstName" cssClass="error"/></td></tr>

                                        <tr><td class="data-header">Last Name:</td><td><form:input path="lastName"/></td>
                                            <td><form:errors path="lastName" cssClass="error"/></td></tr>

                                        <tr><td class="data-header">Login:</td><td><form:input path="login"/></td>
                                            <td><form:errors path="login" cssClass="error"/></td></tr>

                                        <tr><td class="data-header">Password:</td><td><form:input path="password"/></td>
                                            <td><form:errors path="password" cssClass="error"/></td></tr>

                                        <tr><td class="data-header">Admin</td><td><form:checkbox path="admin"/></td>
                                            <td><form:errors path="admin" cssClass="error"/></td></tr>

                                        <tr><td></td><td><input type="submit" value="Add User" class="btn-login"/> </td></tr>
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
