<%--
  Created by IntelliJ IDEA.
  User: Filip Mikołaj Żegleń (Kratos)
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
            <h1>HISTORIA</h1>
        </div>
    </div>

    <div class="row">
        <div class="col col-md-3 col-sm-6">
            <img class="img-responsive imgbike" src="https://contents.mediadecathlon.com/p1863831/k0310ccecefa5d78752353a33ddcc9aa4/1863831_default.jpg?format=auto&quality=60&f=200x0" />
        </div>
        <div class="col col-md-9 col-sm-9">
            <h3><a href="#">AM 100S 29"</a></h3>
            <p>
                <b>STOPKA:</b> BRAK <br/>
                <b>AKCESORIA:</b> BRAK</p>
        </div>
    </div>

    <div class="row">
        <div class="col col-md-3 col-sm-6">
            <img class="img-responsive imgbike" src="https://contents.mediadecathlon.com/p1614792/kf33e6326a8e619c23de2548b6da706dd/1614792_default.jpg?format=auto&quality=60&f=800x0" />
        </div>
        <div class="col col-md-9 col-sm-9">
            <h3><a href="#">TRIBAN RC 520 GRAVEL</a></h3>
            <p>
                <b>STOPKA:</b> BRAK <br/>
                <b>AKCESORIA:</b> VAN RYSEL LICZNIK 500, LAMPKA CL 500</p>
        </div>
    </div>

    <div class="row">
        <div class="col col-md-3 col-sm-6">
            <img class="img-responsive imgbike" src="https://contents.mediadecathlon.com/p1885225/ka77c1eaf95104be96be578d2e5c69aee/1885225_default.jpg?format=auto&quality=60&f=200x0" />
        </div>
        <div class="col col-md-9 col-sm-9">
            <h3><a href="#">XC 500 29"</a></h3>
            <p>
                <b>STOPKA:</b> BRAK <br/>
                <b>AKCESORIA:</b> U-LOCK 920</p>
        </div>
    </div>

</div>

<%@ include file="/WEB-INF/fragments/footer.jspf" %>

</body>
</html>