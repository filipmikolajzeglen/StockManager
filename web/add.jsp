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
            <h1>Dodaj rower</h1>
        </div>
    </div>

    <div class="row">
        <div class="tabContent">
            <form action="BikeServlet" method="post">
                <div class="dataStyle">
                    <input placeholder="Nazwa" type="text" name="name" class="inputStyle">
                    <br>
                    <input placeholder="Rozmiar" type="text" name="size" class="inputStyle">
                    <br>
                    <input placeholder="Opis" type="text" name="description" class="inputStyle">
                    <br>
                    <div  style="margin-top:10px;">
                        Szukaj: <input type="radio" name="option" value="search" style="margin-right:12px;">
                        Dodaj: <input type="radio" name="option" value="add" style="margin-right:12px;">
                        Modyfikuj: <input type="radio" name="option" value="update" style="margin-right:12px;">
                        Usuń: <input type="radio" name="option" value="delete" style="margin-right:12px;">
                    </div>
                    <br>
                    <input type="submit" value="Wyślij" class="buttonStyle">
                </div>
            </form>
        </div>
    </div>

</div>

<%@ include file="/WEB-INF/fragments/footer.jspf" %>

</body>
</html>
