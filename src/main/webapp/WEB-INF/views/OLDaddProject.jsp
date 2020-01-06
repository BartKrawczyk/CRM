<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Project</title>
</head>
<body>
<div class="container">
    <%@include file="header.jsp"%>
        <div class="row">
            <div class="col-xl-12 col-lg-12 col-md-12 col-xs-12 col-12">
    <div class="main-div" style="height:85vh;">
    <table cellpadding="10">
        <div class="row">
            <div class="col-6">
                            <form:form method="post" modelAttribute="project">
                                <tr><td class="form-label-text">Nazwa projektu: </td><td><form:input path="name"/> </td>
                                    <td><form:errors path="name" cssClass="error"/></td></tr>

                                <tr><td class="form-label-text">Opis:</td><td><form:input path="description"/></td>
                                    <td><form:errors path="description" cssClass="error"/></td></tr>

                                <tr><td class="form-label-text">Adres www:</td><td><form:input path="www"/></td>
                                    <td><form:errors path="www" cssClass="error"/></td></tr>

                                <tr><td class="form-label-text">Użytkownicy:</td>
                                    <td><form:select path="users" multiple="true">
                                        <form:option value="" label="-- Proszę wybrać --"/>
                                        <form:options items="${existingUsers}" itemLabel="lastName"  itemValue="id"/>
                                    </form:select> </td>
                                    <td><form:errors path="users" cssClass="error"/></td>
                                </tr>

                                <tr><td class="form-label-text">Aktywny:</td><td><form:checkbox path="active"/></td></tr>
                                <tr><td></td><td><input type="submit" value="Dodaj projekt" class="btn-login"/> </td></tr>
                            </form:form>
                        </div>
                    </div>
    </table>
        <a href="/">Powrót do strony głównej</a>
    </div>
            </div></div>
<%@include file="footer.jsp"%>
</body>
</html>
