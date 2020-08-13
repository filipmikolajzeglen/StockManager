<%--
  Created by IntelliJ IDEA.
  User: Kratos
  Date: 13.08.2020
  Time: 23:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dodaj</title>
</head>
<body>

<div class="borderStyle">
    <div class="tabHeader">
        <h1>Stokownik Manager</h1>
    </div>

    <div class="tabContent">
        <form action="BikeServlet" method="post">
            <div class="dataStyle">
                <input placeholder="Nazwa" type="text" name="name" class="inputStyle">
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

</body>
</html>
