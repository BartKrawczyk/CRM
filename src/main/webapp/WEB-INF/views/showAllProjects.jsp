<%--
  Created by IntelliJ IDEA.
  User: Bart
  Date: 29/12/2019
  Time: 14:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>All Projects</title>
</head>
<body>
<div class="container">
<table>
    <c:forEach items="${projects}" var="project">
        <tr>
            <td>${project.name}</td>
            <td>${project.identifier}</td>
        </tr>
    </c:forEach>
</table>
<a href="/">Powrót do strony głównej</a>
</div>
</body>
</html>
