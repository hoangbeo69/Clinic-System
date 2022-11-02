<%-- 
    Document   : sidebar
    Created on : Sep 18, 2022, 7:43:11 PM
    Author     : Tung Nguyen
--%>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- [ Pre-loader ] start -->
<div class="loader-bg">
    <div class="loader-track">
        <div class="loader-fill"></div>
    </div>
</div>
<!-- [ Pre-loader ] End -->
<!-- [ navigation menu ] start -->
<nav class="pcoded-navbar  ">
    <div class="navbar-wrapper  ">
        <div class="navbar-content scroll-div ">

            <div class="">
                <div class="main-menu-header">
                    <img class="img-radius"
                         src="<%=request.getContextPath()%>/resources/assets/images/user/avatar-2.jpg"
                         alt="User-Profile-Image">
                    <div class="user-details">
                        <span>${sessionScope.USERMODEL.username}</span>
                        <div id="more-details">Role: ${sessionScope.USERMODEL.strRole}</div>
                    </div>
                </div>
            </div>

            <ul class="nav pcoded-inner-navbar ">
                <li class="nav-item pcoded-menu-caption">
                    <label>Management</label>
                </li>
                <li class="nav-item">
                    <a href="<%=request.getContextPath()%>/appointment" class="nav-link "><span
                            class="pcoded-micon"><i class="feather icon-file-text"></i></span><span
                            class="pcoded-mtext">Appointment</span></a>
                </li>
                <li class="nav-item">
                    <a href="<%=request.getContextPath()%>/doctor" class="nav-link "><span
                            class="pcoded-micon"><i class="feather icon-file-text"></i></span><span
                            class="pcoded-mtext">Doctor</span></a>
                </li>
                <li class="nav-item">
                    <a href="<%=request.getContextPath()%>/patient" class="nav-link "><span
                            class="pcoded-micon"><i class="feather icon-file-text"></i></span><span
                            class="pcoded-mtext">Patient</span></a>
                </li>
                <li class="nav-item">
                    <a href="<%=request.getContextPath()%>/user" class="nav-link "><span
                            class="pcoded-micon"><i class="feather icon-file-text"></i></span><span
                            class="pcoded-mtext">Account Management</span></a>
                </li>
                <li class="nav-item">
                    <a href="<%=request.getContextPath()%>/room" class="nav-link "><span
                            class="pcoded-micon"><i class="feather icon-file-text"></i></span><span
                            class="pcoded-mtext">Room</span></a>
                </li>
                <li class="nav-item">
                    <a href="<%=request.getContextPath()%>/schedule" class="nav-link "><span
                            class="pcoded-micon"><i class="feather icon-file-text"></i></span><span
                            class="pcoded-mtext">Schedule</span></a>
                </li>
                <li class="nav-item">
                    <a href="<%=request.getContextPath()%>/medicalRecord" class="nav-link "><span
                            class="pcoded-micon"><i class="feather icon-file-text"></i></span><span
                            class="pcoded-mtext">Medical Records</span></a>
                </li>
            </ul>

        </div>
    </div>
</nav>
<!-- [ navigation menu ] end -->
<!-- [ Header ] start -->
<header class="navbar pcoded-header navbar-expand-lg navbar-light header-dark">


    <div class="m-header">
        <a class="mobile-menu" id="mobile-collapse" href="#!"><span></span></a>
        <a href="#!" class="b-brand">
            <!-- ========   change your logo hear   ============ -->
            <img src="<%=request.getContextPath()%>/resources/assets/images/logo.png" alt=""
                 class="logo">
            <img src="<%=request.getContextPath()%>/resources/assets/images/logo-icon.png" alt=""
                 class="logo-thumb">
        </a>
        <a href="#!" class="mob-toggler">
            <i class="feather icon-more-vertical"></i>
        </a>
    </div>
    <div class="collapse navbar-collapse">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a href="#!" class="pop-search"><i class="feather icon-search"></i></a>
                <div class="search-bar">
                    <input type="text" class="form-control border-0 shadow-none"
                           placeholder="Search hear">
                    <button type="button" class="close" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            </li>
        </ul>
        <ul class="navbar-nav ml-auto">
            <li>
                <div class="dropdown">
                    <a class="dropdown-toggle" href="#" data-toggle="dropdown">
                        <i class="icon feather icon-bell"></i>
                        <span class="badge badge-pill badge-danger">5</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right notification">
                        <div class="noti-head">
                            <h6 class="d-inline-block m-b-0">Notifications</h6>
                            <div class="float-right">
                                <a href="#!" class="m-r-10">mark as read</a>
                                <a href="#!">clear all</a>
                            </div>
                        </div>
                        <ul class="noti-body">
                            <li class="n-title">
                                <p class="m-b-0">NEW</p>
                            </li>
                            <li class="notification">
                                <div class="media">
                                    <img class="img-radius"
                                         src="<%=request.getContextPath()%>/resources/assets/images/user/avatar-1.jpg"
                                         alt="Generic placeholder image">
                                    <div class="media-body">
                                        <p><strong>John Doe</strong><span class="n-time text-muted"><i
                                                class="icon feather icon-clock m-r-10"></i>5 min</span>
                                        </p>
                                        <p>New ticket Added</p>
                                    </div>
                                </div>
                            </li>
                            <li class="n-title">
                                <p class="m-b-0">EARLIER</p>
                            </li>
                            <li class="notification">
                                <div class="media">
                                    <img class="img-radius"
                                         src="<%=request.getContextPath()%>/resources/assets/images/user/avatar-2.jpg"
                                         alt="Generic placeholder image">
                                    <div class="media-body">
                                        <p><strong>Joseph William</strong><span
                                                class="n-time text-muted"><i
                                                class="icon feather icon-clock m-r-10"></i>10 min</span>
                                        </p>
                                        <p>Purchace New Theme and make payment</p>
                                    </div>
                                </div>
                            </li>
                            <li class="notification">
                                <div class="media">
                                    <img class="img-radius"
                                         src="<%=request.getContextPath()%>/resources/assets/images/user/avatar-1.jpg"
                                         alt="Generic placeholder image">
                                    <div class="media-body">
                                        <p><strong>Sara Soudein</strong><span
                                                class="n-time text-muted"><i
                                                class="icon feather icon-clock m-r-10"></i>12 min</span>
                                        </p>
                                        <p>currently login</p>
                                    </div>
                                </div>
                            </li>
                            <li class="notification">
                                <div class="media">
                                    <img class="img-radius"
                                         src="<%=request.getContextPath()%>/resources/assets/images/user/avatar-2.jpg"
                                         alt="Generic placeholder image">
                                    <div class="media-body">
                                        <p><strong>Joseph William</strong><span
                                                class="n-time text-muted"><i
                                                class="icon feather icon-clock m-r-10"></i>30 min</span>
                                        </p>
                                        <p>Prchace New Theme and make payment</p>
                                    </div>
                                </div>
                            </li>
                        </ul>
                        <div class="noti-footer">
                            <a href="#!">show all</a>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="dropdown drp-user">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="feather icon-user"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right profile-notification">
                        <div class="pro-head">
                            <img src="<%=request.getContextPath()%>/resources/assets/images/user/avatar-1.jpg"
                                 class="img-radius" alt="User-Profile-Image">
                            <span>${sessionScope.USERMODEL.username}</span>
                            <a href="auth-signin.html" class="dud-logout" title="Logout">
                                <i class="feather icon-log-out"></i>
                            </a>
                        </div>
                        <ul class="pro-body">
                            <li><a href="<%=request.getContextPath()%>/user/detail?id=${sessionScope.USERMODEL.id}"
                                   class="dropdown-item"><i class="feather icon-user"></i>
                                Profile</a></li>
                            <li><a href="<%=request.getContextPath()%>/user/changePassword"
                                   class="dropdown-item"><i class="fa-solid fa-gear"></i> Change
                                password</a></li>
                            <li><a href="email_inbox.html" class="dropdown-item"><i
                                    class="feather icon-mail"></i> My Messages</a></li>
                            <li><a href="<%=request.getContextPath()%>/logout"
                                   class="dropdown-item"><i class="feather icon-lock"></i>
                                Logout</a></li>
                        </ul>
                    </div>
                </div>
            </li>
        </ul>
    </div>


</header>