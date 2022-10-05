<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<header>
    <title>Appointment Infomation</title>
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
                            <h5 class="m-b-10">Medical record</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html"><i
                                    class="feather icon-home"></i></a></li>
                            <li class="breadcrumb-item"><a href="#!">Home</a></li>
                            <li class="breadcrumb-item"><a href="#!">Appointment Record</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>


        <!-- [ Main Content ] start -->
        <div class="row">
            <div class="col-md-12">
                <div class="card table-card">
                    <div class="card-header">
                        <c:if test="${not empty messageResponse.message}">
                            <div class="alert alert-${messageResponse.alert}" role="alert">
                                    ${messageResponse.message}
                            </div>
                        </c:if>
                        <button type="button" class="btn  btn-primary" data-toggle="modal"
                                data-target="#formAppointment" data-whatever="@getbootstrap">
                            <i class="fa fa-plus" aria-hidden="true"></i>
                        </button>
                    </div>
                    <div class="card-body py-3 px-4">
                        <div class="table-responsive">
                            <table class="table table-hover mb-0" id="appointment-table">
                                <thead>
                                <tr>
                                    <th>Index</th>
                                    <th>Full Name</th>
                                    <th>Phone Number</th>
                                    <th>Email</th>
                                    <th>Date</th>
                                    <th>Time</th>
                                    <th>Description</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="appointment" items="${appointments}"
                                           varStatus="loop">
                                    <tr>
                                        <td>${loop.count}</td>
                                        <td>${appointment.fullName}</td>
                                        <td>${appointment.phoneNumber}</td>
                                        <td>${appointment.email}</td>
                                        <td>${appointment.dateSlot}</td>
                                        <td>${appointment.timeSlot}</td>
                                        <td>${appointment.description}</td>
                                        <td>${appointment.status.name()}</td>
                                        <td>
                                            <c:url var="singleURL" value="appointment/detail">
                                                <c:param name="id" value="${appointment.id}"/>
                                            </c:url>
                                            <a class="btn btn-info" title="Detail"
                                               data-toggle="tooltip"
                                               href="<c:url value="${singleURL}"/>">
                                                <i class="feather icon-info" aria-hidden="true"></i>
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
    $('#appointment-table').DataTable({
      lengthMenu: [
        [5, 10, 25, -1],
        [5, 10, 25, "All"]
      ],
    });

  });
</script>
<%@ include file="user/formUserDetail.jsp" %>
</body>

</html>