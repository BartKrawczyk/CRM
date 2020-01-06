<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add User</title>
</head>
<body>
<div class="container">
    <%@include file="header.jsp"%>
    <table cellpadding="10">
        <div class="row">
            <div class="col-6">
                <form:form method="post" modelAttribute="user">
                    <tr><td class="form-label-text">Imię:</td><td><form:input path="firstName"/> </td>
                        <td><form:errors path="firstName" cssClass="error"/></td></tr>

                    <tr><td class="form-label-text">Nazwisko:</td><td><form:input path="lastName"/> </td>
                        <td><form:errors path="lastName" cssClass="error"/></td></tr>

                    <tr><td class="form-label-text">Login:</td><td><form:input path="login"/> </td>
                        <td><form:errors path="login" cssClass="error"/></td></tr>

                    <tr><td class="form-label-text">Hasło:</td><td><form:input path="password"/> </td>
                        <td><form:errors path="password" cssClass="error"/></td></tr>

                    <tr><td></td><td><input type="submit" value="Dodaj projekt" class="btn-login"/> </td></tr>
                </form:form>
            </div>
        </div>
    </table>
    <a href="/">Powrót do strony głównej</a>
    <%@include file="footer.jsp"%>
</body>
</html>
