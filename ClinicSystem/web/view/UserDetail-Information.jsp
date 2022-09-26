<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <jsp:include page="../general/header.jsp" />

    <body class="">

        <jsp:include page="../general/header-sidebar.jsp"/>

        <!-- [ Main Content ] start -->
        <div class="pcoded-main-container">
            <div class="pcoded-content">
                <!-- [ breadcrumb ] end -->
                <div class="page-header">
                    <div class="page-block">
                        <div class="row align-items-center">
                            <div class="col-md-12">
                                <div class="page-header-title">
                                    <h5 class="m-b-10">Medical record</h5>
                                </div>
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html"><i class="feather icon-home"></i></a></li>
                                    <li class="breadcrumb-item"><a href="#!">Home</a></li>
                                    <li class="breadcrumb-item"><a href="#!">Medical record</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- [ Main Content ] start -->
                <div class="row">
                    <div class="col-xs-12">
                        <c:if test="${not empty messageResponse.message}">
                            <div class="alert alert-${messageResponse.alert}" role="alert">
                                ${messageResponse.message}
                            </div>
                        </c:if>

                        <form id="formUserDetail">
                            <div class="form-group">
                                <label for="title">Username</label>
                                <input type="text" required="" class="form-control" name="username" id="username" placeholder="" value="${user.title}">
                            </div>
                            <div class="form-group">
                                <label for="thumbnail">Full Name</label>
                                <input type="text" class="form-control" name="fullname" id="fullname" placeholder="" value="${user.fullName}>
                            </div>
                            <div class="form-group">
                                <label for="shortDescription">Password</label>
                                <input type="password" required="" class="form-control"  name="password" id="password" placeholder="" value="123456">
                            </div>
                            <div class="form-group">
                                <label for="shortDescription">Re-Password</label>
                                <input type="password" required="" class="form-control"  name="repassword" id="repassword" placeholder="" value="123456">
                            </div>
                            <div class="form-group">
                                <label for="content">Phone Number</label>
                                <input type="text" required="" class="form-control"  name="phoneNumber" id="phoneNumber" placeholder="" value="${user.phoneNumber}">
                            </div>
                            <div class="form-group">
                                <label for="content">Email</label>
                                <input type="text" required="" class="form-control"  name="email" id="email" placeholder="" value="${user.email}">
                            </div>
                            <div class="form-group">
                                <label for="content">Date Of Birth</label>
                                <input type="date" required="" class="form-control"  name="dob" id="dob" placeholder="" value="${user.dob}">
                            </div>
                            <div class="form-group">
                                <c:if test="${not empty user.id}">
                                    <input type="button" class="btn btn-primary" id="btnUpdateOrAddNews" value="Edit"/>
                                </c:if>
                                <c:if test="${empty user.id}">
                                    <input type="button" class="btn btn-primary" id="btnUpdateOrAddNews" value="Create new"/>
                                </c:if>
                            </div>
                            <input type="hidden" id="id" name="id" value="${model.id}">
                        </form>
                    </div>
                </div>
                <!-- [ Main Content ] end -->
            </div>
        </div>

        <jsp:include page="../general/footer.jsp"/>
    </body>

</html>