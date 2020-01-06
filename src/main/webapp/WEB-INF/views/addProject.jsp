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
                <h1 class="display-4" id="welcome">Add Project</h1>
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
                                    <form:form method="post" modelAttribute="project">
                                        //id hidden potrzebne do edycji
                                        <form:hidden path="id"/>
                                        <tr><td class="data-header">Project's name: </td><td><form:input path="name"/> </td>
                                           <td><form:errors path="name" cssClass="error"/></td></tr>

                                        <tr><td class="data-header">Description:</td><td><form:input path="description"/></td>
                                            <td><form:errors path="description" cssClass="error"/></td></tr>

                                        <tr><td class="data-header">WWW:</td><td><form:input path="www"/></td>
                                            <td><form:errors path="www" cssClass="error"/></td></tr>

                                        <tr><td class="data-header">Users:</td>
                                            <td><form:select path="users" multiple="true">
                                                <form:option value="" label="-- Proszę wybrać --"/>
                                                <form:options items="${existingUsers}" itemLabel="lastName"  itemValue="id"/>
                                            </form:select> </td>
                                            <td><form:errors path="users" cssClass="error"/></td>
                                        </tr>

                                        <tr><td class="data-header">Active:</td><td><form:checkbox path="active"/></td></tr>
                                        <tr><td></td><td><input type="submit" value="Add Project" class="btn-login"/> </td></tr>
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
