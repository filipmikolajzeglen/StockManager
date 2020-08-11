<%--
  Created by IntelliJ IDEA.
  User: Filip Mikołaj Żegleń (Kratos)
  Date: 11.08.2020
  Time: 20:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
  <link rel="stylesheet prefetch" href="main.css">
  <link href="https://fonts.googleapis.com/css2?family=Cuprum&amp;display=swap" rel="stylesheet">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Library Viewer</title>
</head>
<body>

<div class="borderStyle">
  <div class="tabHeader">
    <h1>Stokownik Manager</h1>
  </div>

  <div class="tabContent">
    <form action="BikeServlet" method="post">
      <div class="dataStyle">
        <input placeholder="Imię" type="text" name="name" class="inputStyle">
        <br>
        <input placeholder="Rozmiar" type="text" name="size" class="inputStyle">
        <br>
        <input placeholder="Opis" type="text" name="description" class="inputStyle">
        <br><br>
        <div class="choiceStyle">
          Szukaj: <input type="radio" name="option" value="search"><br>
          Dodaj: <input type="radio" name="option" value="add"><br>
          Modyfikuj: <input type="radio" name="option" value="update"><br>
          Usuń: <input type="radio" name="option" value="delete"><br>
        </div>
        <br>
        <input type="submit" value="Wyślij" class="buttonStyle">
      </div>
    </form>
  </div>
</div>

<div class="foot">project by Filip Żegleń</div>

</body>
</html>