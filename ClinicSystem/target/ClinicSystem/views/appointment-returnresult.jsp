<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
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
                            <h5 class="m-b-10">Appointment Return Result</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html"><i
                                    class="feather icon-home"></i></a></li>
                            <li class="breadcrumb-item"><a href="#!">Home</a></li>
                            <li class="breadcrumb-item"><a href="#!">Appointment Return Result</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>


        <!-- [ Main Content ] start -->
        <div class="row">
            <div class="col-md-12">
                <div class="card table-card">
                    <div class="card-body py-3 px-4">
                        <c:if test="${not empty message}">
                            <div class="alert alert-${alert}" role="alert">
                                    ${message}
                            </div>
                        </c:if>
                        <form action="<%=request.getContextPath()%>/appointment/returnResult"
                              method="post">
                            <div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group row">
                                            <div class="col-sm-4">
                                                <label class="col-form-label">M?? b???nh
                                                    nh??n: </label> <span
                                                    class=" col-form-label
                                                    code-patient">${appointment.patientId}</span>
                                            </div>
                                            <div class="col-sm-8"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="col-form-label">H??? t??n: </label> <span
                                                class="col-form-label
                                                name-patient">${appointment.fullName}</span>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="col-form-label">S??? ??i???n
                                                tho???i: </label> <span
                                                class=" col-form-label
                                                phone-patient">${appointment.phoneNumber}</span>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="col-form-label">Gi???i t??nh: </label>
                                            <span
                                                    class="col-form-label
                                                    gender-patient">${appointment.sex}</span>
                                        </div>
                                    </div>
                                    <div class="col-md-3"></div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="col-form-label">Ng??y sinh:</label>
                                            <span
                                                    class="col-form-label
                                                    birthday-patient">${appointment.dob}</span>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="col-form-label">?????a ch???:</label> <span
                                                class="col-form-label
                                                address-patient">${appointment.address}</span>
                                        </div>
                                    </div>
                                    <div class="col-md-6"></div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3">

                                        <div class="form-group form-inline">
                                            <label class="col-form-label">Nhi???t ?????
                                                (??C): </label> <input
                                                class="form-control temperature-patient ml-2"
                                                id="temperature-patient" name="bodyTemperature"
                                                style="width: 100px;"
                                                value="${medicalReport.bodyTemperature}">
                                        </div>

                                    </div>
                                    <div class="col-md-3">

                                        <div class="form-group form-inline">
                                            <label class="col-form-label">Chi???u cao
                                                (cm):</label> <input
                                                class="form-control height-patient ml-2"
                                                id="height-patient" name="height" style="width: 100px;"
                                                value="${medicalReport.height}">
                                        </div>

                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group form-inline">
                                            <label class="col-form-label">Huy???t ??p
                                                (mmHg):</label> <input
                                                class="form-control blood-pressure-patient ml-2"
                                                id="blood-pressure-patient" name="bloodPressure"
                                                style="width: 100px;"
                                                value="${medicalReport.bloodPressure}">
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group form-inline">
                                            <label class="col-form-label">C??n n???ng
                                                (kg):</label> <input
                                                class="form-control weight-patient ml-2"
                                                id="weight-patient" name="weight" style="width: 100px;"
                                                value="${medicalReport.weight}">
                                        </div>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">Tri???u
                                                ch???ng:</label>
                                            <div class="col-sm-9">
														<textarea
                                                                class="form-control symptom-patient"
                                                                placeholder=""
                                                                name="symptom">${medicalReport.symptom}</textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">Ch???n ??o??n
                                                ?????u:</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control"
                                                       id="search-name-first-diagnosis-patient"
                                                       placeholder="" name="earlyDiagnosis" value="${medicalReport.earlyDiagnosis}"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">Ch???n ??o??n
                                                cu???i:</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control"
                                                       id="search-name-final-diagnosis-patient"
                                                       placeholder="" name="finalDiagnosis" value="${medicalReport.finalDiagnosis}"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">B???nh k??m
                                                theo:</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control"
                                                       id="search-name-including-diseases-patient"
                                                       placeholder="" name="diagnosisDisease" value="${medicalReport.diagnosisDisease}"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">K???t
                                                lu???n:</label>
                                            <div class="col-sm-9">
														<textarea
                                                                class="form-control conclude-patient"
                                                                placeholder="" name="conclusion"
                                                                id ="conclusion"
                                                        >${medicalReport.conclusion}</textarea>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!-- form-group// -->
                            <!-- form-group// -->
                            <input type="hidden" name="patientId" value="${appointment.patientId}">
                            <input type="hidden" name="id" value="${medicalHistory.id}">
                            <input type="hidden" name="appointmentId" value="${appointment.id}">
                            <div class="form-group ">
                                <a class="btn btn-warning"
                                   href="<%=request.getContextPath()%>/appointment/confirmDoctor?id=${appointment.id}">Back
                                </a>
                                <button type="submit" class="btn btn-info">Save</button>
                                <button type="submit" class="btn btn-primary">Confirm
                                    Review</button>
                                <button type="reset"
                                        class="btn btn-danger">Cancel
                                </button>
                            </div>
                        </form>
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
</body>

</html>