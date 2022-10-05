<%-- 
    Document   : Home
    Created on : Sep 13, 2022, 9:23:37 PM
    Author     : Long
--%>

<%@page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<header>
    <title>Doctor Infomation</title>
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
                            <li class="breadcrumb-item"><a href="#!">Home</a></li>
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
                        <h5>Projects</h5>
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
                        <div class="table-responsive">
                            <table class="table table-hover mb-0" id="doctors-table">
                                <thead>
                                <tr>
                                    <th>Index</th>
                                    <th>Username</th>
                                    <th>Specialization</th>
                                    <th>Full Name</th>
                                    <th>Phone Number</th>
                                    <th>Email</th>
                                    <th>Date Of Birth</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="doctor" items="${doctors}" varStatus="loop">
                                    <tr>
                                        <td>${loop.count}</td>
                                        <td>${doctor.username}</td>
                                        <td>${doctor.specialization}</td>
                                        <td>${doctor.fullName}</td>
                                        <td>${doctor.phoneNumber}</td>
                                        <td>${doctor.email}</td>
                                        <td>${doctor.dob}</td>
                                        <td>
                                            <c:url var="singleURL" value="doctor/detail">
                                                <c:param name="id" value="${user.id}"/>
                                            </c:url>
                                            <a class="btn btn-info" title="Detail"
                                               data-toggle="tooltip"
                                               href="<c:url value="${singleURL}"/>">
                                                <i class="feather icon-edit" aria-hidden="true"></i>
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!-- [ Main Content ] end -->
    </div>
</div>

<jsp:include page="common/footer.jsp"/>

<script>
  $(document).ready(function () {
    $('#doctors-table').DataTable({
      lengthMenu: [
        [5, 10, 25, -1],
        [5, 10, 25, "All"]
      ],
    });

  });
</script>
</body>

</html>