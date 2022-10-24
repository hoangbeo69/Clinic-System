<%--
    Document   : Home
    Created on : Sep 13, 2022, 9:23:37 PM
    Author     : Long
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
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
                            <input type="hidden" id="id" name="id" value="${patient.id}">
                            <!-- <h6>Mã bệnh nhân</h6>
                            <div class="form-group input-group">
                                    <input name="" class="form-control" placeholder=""
                                            type="text">
                            </div> -->

                            <div class="form-group">
                                <label for="fullName">FullName</label>
                                <input type="text" required="" class="form-control"
                                       name="fullName"
                                       id="fullName" placeholder=""
                                       value="${patient.fullName}">
                            </div>

                            <div class="form-group">
                                <label for="dob">Date Of Birth</label>
                                <input type="date" required name="dob" class="form-control" id=
                                        "dob"
                                       placeholder="DD/MM/YYYY" value="<fmt:formatDate
                                       pattern='YYYY-MM-DD' value='${patient.dob}' />">
                            </div>
                            <div class="form-group input-group">
                                <div class="input-group-prepend">
                                <span class="input-group-text"> <i class="fa fa-phone"></i>
                                </span>
                                </div>
                                <input type="text" required name="phoneNumber" class="form-control"
                                       value="${patient.phoneNumber}">
                            </div>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="text" required="" class="form-control"
                                       name="email" id="email"
                                       placeholder="" value="${patient.email}">
                            </div>

                            <div class="form-group">
                                <label for="sex">Sex</label>
                                <select class="form-control" name="sex" id="sex">
                                    <option value="other" selected="selected">Other</option>
                                    <option value="male"  selected="">Nam</option>
                                    <option value="female">Nữ</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="guardianFullname">Guardian Fullname</label>
                                <input type="text" class="form-control"
                                       name="guardianFullname" id="guardianFullname"
                                       placeholder="" value="${patient.guardianFullname}">
                            </div>

                            <div class="form-group">
                                <label for="guardianPhoneNumber">Guardian Phone Number</label>
                                <input type="text" class="form-control"
                                       name="guardianPhoneNumber" id="guardianPhoneNumber"
                                       placeholder="" value="${patient.guardianPhoneNumber}">
                            </div>

                            <div class="form-group">
                                <c:if test="${not empty patient.id}">
                                    <input type="button" class="btn btn-primary" id="btnUpdateOrAddNews"
                                           value="Edit"/>
                                </c:if>
                                <c:if test="${empty patient.id}">
                                    <input type="button" class="btn btn-primary" id="btnUpdateOrAddNews"
                                           value="Create new"/>
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