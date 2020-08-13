<%--
  Created by IntelliJ IDEA.
  User: Kratos
  Date: 13.08.2020
  Time: 23:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="/WEB-INF/fragments/head.jspf"/>

<body>

<jsp:include page="/WEB-INF/fragments/header.jspf"/>

<div class="container">

    <div class="container">
        <div class="jumbotron">
            <h1>SHOWROOM</h1>
        </div>
    </div>

    <div class="row">
        <div class="col col-md-3 col-sm-6">
            <img class="img-responsive" src="image/sample.jpg" />
        </div>
        <div class="col col-md-9 col-sm-6">
            <h3><a href="#">Nagłówek</a></h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
        </div>
    </div>

    <div class="row">
        <div class="col col-md-3 col-sm-6">
            <img class="img-responsive" src="image/sample.jpg" />
        </div>
        <div class="col col-md-9 col-sm-6">
            <h3><a href="#">Nagłówek</a></h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
        </div>
    </div>

    <div class="row">
        <div class="col col-md-3 col-sm-6">
            <img class="img-responsive" src="image/sample.jpg" />
        </div>
        <div class="col col-md-9 col-sm-6">
            <h3><a href="#">Nagłówek</a></h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
        </div>
    </div>

</div>

<%@ include file="/WEB-INF/fragments/footer.jspf" %>

</body>
</html>