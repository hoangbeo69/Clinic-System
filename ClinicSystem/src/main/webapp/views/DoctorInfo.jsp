<%-- 
    Document   : PatientInfo
    Created on : Sep 17, 2022, 11:20:27 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<link href="http://localhost:8080/ClinicSystem/css/home.css" rel="stylesheet" type="text/css"/>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
<div class="homepage" action="PationInfoController" method="post">
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
        <form>
            <div class="_3cfiVM">
                <label>Tên </label>
            </div>
            <div class="input-with-validator">
                <input type="text" placeholder="" maxlength="255" value="${d.getName()}">
            </div>
            <div class="_3cfiVM">
                <label>Số điện thoại</label>
            </div>
            <div class="input-with-validator">
                <input type="text" placeholder="" maxlength="255" value="${d.getPhone()}">
            </div>
            <div class="_3cfiVM">
                <label>địa chỉ</label>
            </div>
            <div class="input-with-validator">
                <input type="text" placeholder="" maxlength="255" value="${d.getAddress()}">
            </div>
            <div class="_3cfiVM">
                <label>Email</label>
            </div>
            <div class="input-with-validator">
                <input type="text" placeholder="" maxlength="255" value="${d.getEmail()}">
            </div>
            <div class="_3cfiVM">
                <label>Ngày sinh</label>
            </div>
            <div class="input-with-validator">
                <input type="text" placeholder="" maxlength="255" value="${d.getDOB()}">
            </div>
            <div class="_3cfiVM">
                <label>Specialization</label>
            </div>
            <div class="input-with-validator">
                <input type="text" placeholder="" maxlength="255" value="${d.getSpecialization()}">
            </div>
        </form>
    </div>
    <script type="module"
            src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>

