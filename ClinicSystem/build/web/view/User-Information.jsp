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
                        <button type="button" class="btn  btn-primary" data-toggle="modal" data-target="#formUserDetail" data-whatever="@getbootstrap">
                                <i class="fa fa-plus" aria-hidden="true"></i>
                        </button>
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Index</th>
                                        <th>Username</th>
                                        <th>Full Name</th>
                                        <th>Phone Number</th>
                                        <th>Email</th>
                                        <th>Date Of Birth</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="user" items="${users}" varStatus="loop">
                                        <tr>
                                            <td>${loop.count}</td>
                                            <td>${user.username}</td>
                                            <td>${user.fullName}</td>
                                            <td>${user.phoneNumber}</td>
                                            <td>${user.email}</td>
                                            <td>${user.dob}</td>
                                            <td>
                                                <c:url var="singleURL" value="/user">
                                                    <c:param name="type" value="single"/>
                                                    <c:param name="id" value="${user.id}"/>
                                                </c:url>
                                                <a class="btn btn-info" title="Edit"  data-toggle="tooltip" href="<c:url value="${singleURL}"/>">
                                                    <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                                </a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- [ Main Content ] end -->
            </div>
        </div>

        <jsp:include page="../general/footer.jsp"/>
        <%@ include file="user/formUserDetail.jsp" %>
    </body>

</html>