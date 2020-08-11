<%--
  Created by IntelliJ IDEA.
  User: Filip Mikołaj Żegleń (Kratos)
  Date: 11.08.2020
  Time: 21:20
  To change this template use File | Settings | File Templates.
--%>
<%@page import="pl.filipzeglen.model.Bike"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<% Bike bike = (Bike)request.getAttribute("bike"); %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet prefetch" href="main.css">
    <link href="https://fonts.googleapis.com/css2?family=Cuprum&amp;display=swap" rel="stylesheet">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Wynik operacji</title>
</head>
<body>

<div class="borderStyle">
    <div class="tabHeader">
        <h1>Wynik zapytania <%= request.getAttribute("option") %></h1>
    </div>
    <div class="tabContent">
        <div class="dataStyle">
            <p>W wyniku Twojego zapytania otrzymano następujacy wynik:</p>
            <p>Tytuł: <%= bike.getName() %><br>
                Rozmiar: <%= bike.getSize() %><br>
                Opis: <%= bike.getDescription() %></p>
        </div>
    </div>
</div>

<div class="foot">project by Filip Żegleń</div>
</body>
</html>