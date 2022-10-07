<%--
    Document   : Home
    Created on : Sep 13, 2022, 9:23:37 PM
    Author     : Long
--%>

<%@page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<header>
    <title>Patient Infomation</title>
    <jsp:include page="common/header.jsp"/>
</header>
<body class="">
<jsp:include page="common/header-sidebar.jsp"/>

<!-- [ Main Content ] start -->
<div class="pcoded-main-container">
    <div class="pcoded-content">
        <!-- [ breadcrumb ] end -->
        <div class="page-header">
            <div class="page-block">
                <div class="row align-items-center">
                    <div class="col-md-12">
                        <div class="page-header-title">
                            <h5 class="m-b-10">Doctor record</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html"><i
                                    class="feather icon-home"></i></a></li>
                            <li class="breadcrumb-item"><a href="#!">Patient</a></li>
                            <li class="breadcrumb-item"><a href="#!">Doctor record</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- [ Main Content ] start -->
        <div class="row">
            <div class="col-xl-12">
                <div class="card table-card">
                    <div class="card-header">
                        <c:if test="${not empty doctor.id}">
                            <h5>Edit Doctor Info</h5>
                        </c:if>
                        <div class="card-header-right">
                            <div class="btn-group card-option">
                                <button type="button" class="btn dropdown-toggle"
                                        data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">
                                    <i class="feather icon-more-horizontal"></i>
                                </button>
                                <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                    <li class="dropdown-item full-card"><a href="#!"><span><i
                                            class="feather icon-maximize"></i> maximize</span><span
                                            style="display:none"><i
                                            class="feather icon-minimize"></i> Restore</span></a>
                                    </li>
                                    <li class="dropdown-item minimize-card"><a href="#!"><span><i
                                            class="feather icon-minus"></i> collapse</span><span
                                            style="display:none"><i class="feather icon-plus"></i> expand</span></a>
                                    </li>
                                    <li class="dropdown-item reload-card"><a href="#!"><i
                                            class="feather icon-refresh-cw"></i> reload</a></li>
                                    <li class="dropdown-item close-card"><a href="#!"><i
                                            class="feather icon-trash"></i> remove</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="card-body py-3 px-4">
                        <form action="<%=request.getContextPath()%>/patient/detail" method="post">
                            <c:if test="${not empty message}">
                                <div class="alert alert-${alert}" role="alert">
                                        ${message}
                                </div>
                            </c:if>
                            <div class="form-group">
                                <label for="username">Username</label>
                                <input type="text" required="" class="form-control"
                                       name="username"
                                       id="username" placeholder=""
                                       value="${patient.username}">
                            </div>
                            <div class="form-group">
                                <label for="fullName">Full Name</label>
                                <input type="text" class="form-control" name="fullName"
                                       id="fullName"
                                       placeholder="" value="${patient.fullName}">
                            </div>
                            <div class="form-group">
                                <label for="phoneNumber">Phone Number</label>
                                <input type="text" required="" class="form-control"
                                       name="phoneNumber"
                                       id="phoneNumber" placeholder=""
                                       value="${patient.phoneNumber}">
                            </div>
                            <div class="form-group">
                                <label for="dob">Date Of Birth</label>
                                <input type="date" name="dob" class="form-control" id=
                                        "dob"
                                       placeholder="DD/MM/YYYY" value="<fmt:formatDate
                                       pattern='YYYY-MM-DD' value='${patient.dob}' />">
                            </div>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="text" required="" class="form-control"
                                       name="email" id="email"
                                       placeholder="" value="${patient.email}">
                            </div>
                            <div class="form-group">
                                <label for="specialization">Specialization</label>
                                <input type="text" required="" class="form-control"
                                       name="specialization" id="specialization"
                                       placeholder="" value="${patient.specialization}">
                            </div>
                            <input type="hidden" id="id" name="id" value="${patient.id}">
                            <div class="form-group">
                                <input type="reset" class="btn  btn-secondary"
                                       data-dismiss="modal" value="Reset"/>

                                <c:if test="${not empty patient.id}">
                                    <button type="submit" class="btn btn-primary"
                                            id="btnUpdateOrAddUser">Edit
                                    </button>
                                </c:if>
                            </div>

                        </form>

                    </div>
                </div>

            </div>
            <!-- [ Main Content ] end -->
        </div>
    </div>

    <jsp:include page="common/footer.jsp"/>
</body>

</html>