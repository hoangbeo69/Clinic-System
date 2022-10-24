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
                            <h5 class="m-b-10">Appointment Complete</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html"><i
                                    class="feather icon-home"></i></a></li>
                            <li class="breadcrumb-item"><a href="#!">Home</a></li>
                            <li class="breadcrumb-item"><a href="#!">Appointment Complete</a></li>
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
                        <form action="<%=request.getContextPath()%>/appointment/review"
                              method="post">
                            <input type="hidden" id="id" name="id" value="${appointment.id}">
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
                                       value="${appointment.fullName}" disabled>
                            </div>

                            <div class="form-group">
                                <label for="dob">Date Of Birth</label>
                                <input type="date" required name="dob" class="form-control" id=
                                        "dob"
                                       placeholder="DD/MM/YYYY" value="<fmt:formatDate
                                       pattern='YYYY-MM-DD' value='${appointment.dob}' />" disabled>
                            </div>
                            <div class="form-group input-group">
                                <div class="input-group-prepend">
                                <span class="input-group-text"> <i class="fa fa-phone"></i>
                                </span>
                                </div>
                                <input type="text" required name="phoneNumber" class="form-control"
                                       value="${appointment.phoneNumber}" disabled>
                            </div>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="text" required="" class="form-control"
                                       name="email" id="email"
                                       placeholder="" value="${appointment.email}" disabled>
                            </div>

                            <div class="form-group">
                                <label for="sex">Sex</label>
                                <select class="form-control" name="sex" id="sex" disabled>
                                    <option selected="selected">Other</option>
                                    <option value="male" selected="">Nam</option>
                                    <option value="female">Nữ</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="guardianFullname">Guardian Fullname</label>
                                <input type="text" required="" class="form-control"
                                       name="guardianFullname" id="guardianFullname"
                                       placeholder="" value="${appointment.guardianFullname}"
                                       disabled>
                            </div>

                            <div class="form-group">
                                <label for="guardianPhoneNumber">Guardian Phone Number</label>
                                <input type="text" required="" class="form-control"
                                       name="guardianPhoneNumber" id="guardianPhoneNumber"
                                       placeholder="" value="${appointment.guardianPhoneNumber}"
                                       disabled>
                            </div>

                            <!-- form-group end.// -->
                            <div class="form-group">
                                <label for="description">Description</label>
                                <textarea class="form-control" cols="61" name="description"
                                          id="description"
                                          disabled>${appointment.description}</textarea>
                            </div>

                            <div class="form-group">
                                <label for="dateSlot">Date Slot</label>
                                <input type="date" name="dateSlot" class="form-control" id=
                                        "dateSlot"
                                       placeholder="DD/MM/YYYY" value="<fmt:formatDate
                                       pattern='YYYY-MM-DD' value='${appointment.dateSlot}' />"
                                       disabled>
                            </div>

                            <!-- form-group// -->
                            <div class="form-group">
                                <label for="timeSlotOrder">Time Slot</label>
                                <select class="form-control" name="timeSlotOrder"
                                        id="timeSlotOrder" disabled>
                                    <c:forEach var="TIMESLOT" items="${TIMESLOTS}">

                                        <c:if test="${TIMESLOT.slotOrder ==  appointment.timeSlotOrder}">
                                            <option value="${TIMESLOT.slotOrder}"
                                                    selected>${TIMESLOT.timeValue}</option>
                                        </c:if>
                                        <c:if test="${TIMESLOT.slotOrder !=
                                         appointment.timeSlotOrder}">
                                            <option value="${TIMESLOT.slotOrder}">${TIMESLOT.timeValue}</option>
                                        </c:if>
                                    </c:forEach>
                                </select>
                            </div>

                            <!-- form-group// -->
                            <div class="form-group">
                                <label for="doctorId">Doctor</label>
                                <select class="form-control" name="timeSlotOrder"
                                        id="doctorId" disabled>
                                    <c:forEach var="DOCTOR" items="${DOCTORS}">

                                        <c:if test="${DOCTOR.id == appointment.doctorId}">
                                            <option value="${DOCTOR.id}"
                                                    selected>${DOCTOR.fullName}</option>
                                        </c:if>
                                        <c:if test="${DOCTOR.id !=  appointment.doctorId}">
                                            <option value="${DOCTOR.id}">${DOCTOR.fullName}</option>
                                        </c:if>
                                    </c:forEach>
                                </select>
                            </div>

                            <div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group row">
                                            <div class="col-sm-4">
                                                <label class="col-form-label">Mã bệnh
                                                    nhân: </label> <span
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
                                            <label class="col-form-label">Họ tên: </label> <span
                                                class="col-form-label
                                                name-patient">${appointment.fullName}</span>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="col-form-label">Số điện
                                                thoại: </label> <span
                                                class=" col-form-label
                                                phone-patient">${appointment.phoneNumber}</span>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="col-form-label">Giới tính: </label>
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
                                            <label class="col-form-label">Ngày sinh:</label>
                                            <span
                                                    class="col-form-label
                                                    birthday-patient">${appointment.dob}</span>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="col-form-label">Địa chỉ:</label> <span
                                                class="col-form-label
                                                address-patient">${appointment.address}</span>
                                        </div>
                                    </div>
                                    <div class="col-md-6"></div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3">

                                        <div class="form-group form-inline">
                                            <label class="col-form-label">Nhiệt độ
                                                (°C): </label> <input
                                                class="form-control temperature-patient ml-2" disabled
                                                id="temperature-patient" name="bodyTemperature"
                                                style="width: 100px;"
                                                value="${medicalReport.bodyTemperature}">
                                        </div>

                                    </div>
                                    <div class="col-md-3">

                                        <div class="form-group form-inline">
                                            <label class="col-form-label">Chiều cao
                                                (cm):</label> <input
                                                class="form-control height-patient ml-2" disabled
                                                id="height-patient" name="height" style="width: 100px;"
                                                value="${medicalReport.height}">
                                        </div>

                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group form-inline">
                                            <label class="col-form-label">Huyết áp
                                                (mmHg):</label> <input
                                                class="form-control blood-pressure-patient ml-2" disabled
                                                id="blood-pressure-patient" name="bloodPressure"
                                                style="width: 100px;"
                                                value="${medicalReport.bloodPressure}">
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group form-inline">
                                            <label class="col-form-label">Cân nặng
                                                (kg):</label> <input
                                                class="form-control weight-patient ml-2" disabled
                                                id="weight-patient" name="weight" style="width: 100px;"
                                                value="${medicalReport.weight}">
                                        </div>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">Triệu
                                                chứng:</label>
                                            <div class="col-sm-9">
														<textarea
                                                                class="form-control symptom-patient" disabled
                                                                placeholder=""
                                                                name="symptom">${medicalReport.symptom}</textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">Chẩn đoán
                                                đầu:</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control" disabled
                                                       id="search-name-first-diagnosis-patient"
                                                       placeholder="" name="earlyDiagnosis" value="${medicalReport.earlyDiagnosis}"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">Chẩn đoán
                                                cuối:</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control" disabled
                                                       id="search-name-final-diagnosis-patient"
                                                       placeholder="" name="finalDiagnosis" value="${medicalReport.finalDiagnosis}"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">Bệnh kèm
                                                theo:</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control" disabled
                                                       id="search-name-including-diseases-patient"
                                                       placeholder="" name="diagnosisDisease" value="${medicalReport.diagnosisDisease}"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">Kết
                                                luận:</label>
                                            <div class="col-sm-9">
														<textarea
                                                                class="form-control conclude-patient"
                                                                placeholder="" name="conclusion"
                                                                id ="conclusion" disabled
                                                        >${medicalReport.conclusion}</textarea>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!-- form-group// -->
                            <!-- form-group// -->
                            <div class="form-group">
                                <a class="btn btn-success"
                                   href="<%=request.getContextPath()%>/appointment">Back
                                </a>
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