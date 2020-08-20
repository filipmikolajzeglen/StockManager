<%--
  Created by IntelliJ IDEA.
  User: Kratos
  Date: 13.08.2020
  Time: 23:50
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
<h1>LOGOWANIE</h1>
</div>
</div>

<div class="row">
<div class="tabContent">
<form action="BikeServlet" method="post">
<div class="dataStyle">
<form action="j_security_check" method="post">
<input type="text" placeholder="Login" name="j_username" class="inputStyle">
<br>
<input type="password" placeholder="Hasło" name="j_password" class="inputStyle">
</form>
<br>
<input type="submit" value="Zaloguj" class="buttonStyle">
</div>
</form>
</div>
</div>

</div>

<%@ include file="/WEB-INF/fragments/footer.jspf" %>

</body>
</html>
