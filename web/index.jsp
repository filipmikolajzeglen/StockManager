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
<!DOCTYPE html>
<html>

<head>
  <title>Stock Manager</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://fonts.googleapis.com/css2?family=Cuprum&amp;display=swap" rel="stylesheet">
  <link href="css/all.css" rel="stylesheet">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/styles.min.css" rel="stylesheet">
</head>

<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container">
    <a href="#" class="navbar-brand">Stock Manager</a>

    <div class="collapse navbar-collapse navCollapse">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Historia</a></li>
        <li><a href="#">Show room</a></li>
        <li><a href="#">Panel admina</a></li>
      </ul>
    </div>

    <button class="navbar-toggle" data-toggle="collapse" data-target=".navCollapse">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>

  </div>
</nav>

<div class="container">

  <div class="container">
    <div class="jumbotron">
      <h1><a href="#"><i class="fas fa-plus-circle"></i></a></h1>
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

</div>

<footer class="navbar navbar-default navbar-static-bottom">
  <div class="container">
    <p class="navbar-text">StockManager - developed by <a href="https://github.com/filipmikolajzeglen">Filip Mikołaj Żegleń</a></p>
  </div>
</footer>

<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script src="js/bootstrap.js"></script>

</body>
</html>