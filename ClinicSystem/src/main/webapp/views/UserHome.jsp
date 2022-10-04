<%-- 
    Document   : Home
    Created on : Sep 13, 2022, 9:23:37 PM
    Author     : Long
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<!DOCTYPE html>
<link href="http://localhost:8080/ClinicSystem/css/home.css" rel="stylesheet" type="text/css"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="homepage" >
            <!--<form id="infor-form" class="form" action="HomeController" method="post">-->
            <div class="navigation">
                <ul>
                    <li class="list ">
                        <a href="#">
                            <span class="icon"></span>
                            <ion-icon name="home-outline"></ion-icon>
                            <span class="title">Clinic System</span>
                        </a>
                    </li>
                    <c:if test="${sessionScope.USERMODEL !=null}">
                    <li class="list">
                        <a href="#">
                            <span class="icon"></span>
                            <ion-icon name="person-circle-outline"></ion-icon>
                            <span class="title">Hello ${sessionScope.USERMODEL.getUserName()}</span>
                        </a>
                    </li>
                    </c:if>
                    <li class="list">
                        <a href="PationInfoController?accountId=${sessionScope.USERMODEL.getAccountID()}">
                            <span class="icon"></span>
                            <ion-icon name="information-circle-outline"></ion-icon>
                            <span class="title">Information</span>
                        </a>
                    </li>
                    <li class="list">
                        <a href="#">
                            <span class="icon"></span>
                            <ion-icon name="time-outline"></ion-icon>
                            <span class="title">Schedule</span>
                        </a>
                    </li>
                    <c:if test="${sessionScope.USERMODEL !=null}">
                        <li class="list">
                            <a href="logout">
                                <span class="icon"></span>
                                <ion-icon name="log-out-outline"></ion-icon>
                                <span class="title">Sign Out</span>
                            </a>
                        </li>
                    </c:if>
                </ul>
            </div>
            <div class="page">
                <strong><h1>User Home</h1></strong><br>
                
            <!--                </form>-->
        </div>
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    </body>
</html>
