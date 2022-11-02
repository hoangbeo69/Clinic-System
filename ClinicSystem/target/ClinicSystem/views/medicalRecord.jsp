<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<header>
    <title>User Infomation</title>
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
                        <a class="btn  btn-primary" title="Add New"
                           data-toggle="tooltip"
                           href="<%=request.getContextPath()%>/user/detail">
                            <i class="fa fa-plus" aria-hidden="true"></i>
                        </a>
                    </div>
                    <div class="card-body py-3 px-4">
                        <div class="table-responsive">
                            <table class="table table-hover mb-0" id="account-table">
                                <thead>
                                <tr>
                                    <th>Index</th>
                                    <th>Created date</th>
                                    <th>Patience name</th>
                                    <th>Date of Birth</th>
                                    <th>Body temperature</th>
                                    <th>Weight</th>
                                    <th>Height</th>
                                    <th>Blood Pressure</th>
                                    <th>Symptom</th>
                                    <th>Early diagnosis</th>
                                    <th>Final diagnosis</th>
                                    <th>Diagnosis disease</th>
                                    <th>Conclusion</th>
                                    <th class="text-right">See detail</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="m" items="${medicalRecords}" varStatus="loop">
                                    <tr>
                                        <td>${loop.count}</td>
                                        <td><fmt:formatDate
                                                pattern='dd/MM/yyyy' value='${m.createdDate}'/></td>
                                        <td>${m.patient.guardianFullname}</td>
                                        <td><fmt:formatDate
                                                pattern='dd/MM/yyyy' value='${m.patient.dob}'/></td>
                                        <td>${m.medicalReport.bodyTemperature}</td>
                                        <td>${m.medicalReport.weight}</td>
                                        <td>${m.medicalReport.height}</td>
                                        <td>${m.medicalReport.bloodPressure}</td>
                                        <td>${m.medicalReport.symptom}</td>
                                        <td>${m.medicalReport.earlyDiagnosis}</td>
                                        <td>${m.medicalReport.finalDiagnosis}</td>
                                        <td>${m.medicalReport.diagnosisDisease}</td>
                                        <td>${m.medicalReport.conclusion}</td>
                                        <td>
                                            <a class="btn btn-info" title="See Detail"
                                               data-toggle="tooltip"
                                               href="<%=request.getContextPath()%>/medicalRecord?id=${m.id}">
                                                <i class="fa fa-pencil-square-o"
                                                   aria-hidden="true"></i>
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
        $('#account-table').DataTable({
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