<%-- 
    Document   : register
    Created on : Apr 5, 2022, 1:49:46 AM
    Author     : DINHDAT
--%>

<%@page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>

<head>
    <title>Register Page</title>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="description" content=""/>
    <meta name="keywords" content="">
    <meta name="author" content="Phoenixcoded"/>
    <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="assets/css/style.css">
</head>

<!-- [ auth-signup ] start -->
<div class="auth-wrapper">
    <div class="auth-content text-center">
        <img src="assets/images/logo.png" alt="" class="img-fluid mb-4">
        <div class="card borderless">
            <div class="row align-items-center text-center">
                <div class="col-md-12">
                    <div class="card-body">
                        <form class="form" action="RegisterController" method="post">
                            <h4 class="f-w-400">Register</h4>
                            <hr>
                            <div class="form-group mb-3">
                                <input type="text" class="form-control" id="Username"
                                       name="username" placeholder="Username">
                            </div>
                            <div class="form-group mb-4">
                                <input type="password" class="form-control" id="Password"
                                       name="password" placeholder="Password">
                            </div>
                            <div class="form-group mb-4">
                                <input type="password" class="form-control" id="Password"
                                       name="repassword" placeholder="Confirm password">
                            </div>
                            <div class="custom-control custom-checkbox  text-left mb-4 mt-2">
                                <input type="checkbox" class="custom-control-input"
                                       id="customCheck1">
                                <label class="custom-control-label" for="customCheck1">Send me the
                                    <a href="#!"> Newsletter</a> weekly.</label>
                            </div>
                            <button class="btn btn-primary btn-block mb-4">Sign up</button>
                            <hr>
                            <p class="mb-2">Already have an account? <a
                                    href="<%=request.getContextPath()%>/LoginController"
                                    class="f-w-400">Login</a></p>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- [ auth-signup ] end -->

<!-- Required Js -->
<script src="assets/js/vendor-all.min.js"></script>
<script src="assets/js/plugins/bootstrap.min.js"></script>

<script src="assets/js/pcoded.min.js"></script>


</body>

</html>