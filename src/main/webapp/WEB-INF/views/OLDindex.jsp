<%--
  Created by IntelliJ IDEA.
  User: Bart
  Date: 29/12/2019
  Time: 11:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome to CRM App</title>
</head>
<body>
    <div class="container">
        <%@include file="OLDheader.jsp"%>
            <div class="row">
                <div class="col-xl-12 col-lg-12 col-md-12 col-xs-12 col-12">
                    <div class="main-div" style="height:75vh;">
                        <h1 class="display-4">Welcome to GreenMine</h1>
                        <p class="lead">
                            Happy work is well organised work...
                        </p>
                        <br/><br/>
                        <div class="row">
                        <div class="col-lg-4"></div>
                        <div class="col-lg-2"><a href="user/new" class="btn btn-block btn-secondary">Register Here</a></div>
                        <div class="col-lg-2"><a href="/gmApp" class="btn btn-block btn-secondary">Login Here</a></div>
                        <div class="col-lg-4"></div>
                        </div>
                    </div>
                </div>
            </div>
    </div>
    <%@include file="footer.jsp"%>
</body>
</html>
