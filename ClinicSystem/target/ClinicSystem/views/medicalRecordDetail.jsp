<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<jsp:include page="common/header.jsp"/>

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
                            <h5 class="m-b-10">Medical record detail</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html"><i
                                    class="feather icon-home"></i></a></li>
                            <li class="breadcrumb-item"><a href="<%=request.getContextPath()%>/home">Home</a></li>
                            <li class="breadcrumb-item"><a href="<%=request.getContextPath()%>/medicalRecord">Medical
                                record list</a></li>

                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- [ Main Content ] start -->
        <div class="row">
            <div class="col-xl-12">
                <div class="form-group">
                    <label for="username">Patient name</label>
                    <input type="text" required="" class="form-control" name="username"
                           id="username" placeholder="" value="${medicalRecord.patient.guardianFullname}" disabled>
                </div>
                <div class="form-group">
                    <label for="fullname">Date of birth</label>
                    <input type="date" class="form-control" name="fullName" id="fullName"
                           placeholder="" value="<fmt:formatDate
                                       pattern='YYYY-MM-DD' value='${medicalRecord.patient.dob}' />" disabled>
                </div>
                <div class="form-group">
                    <label for="password">Phone number</label>
                    <input type="text" class="form-control" name="password"
                           id="password" placeholder="" value="${medicalRecord.patient.phoneNumber}" disabled>
                </div>
                <div class="form-group">
                    <label for="repassword">Weight</label>
                    <input type="password" class="form-control" name="repassword"
                           id="repassword" placeholder="" value="${medicalRecord.medicalReport.weight}" disabled>
                </div>
                <div class="form-group">
                    <label for="Height">Height</label>
                    <input type="password" class="form-control" name="repassword"
                           id="Height" placeholder="" value="${medicalRecord.medicalReport.height}" disabled>
                </div>
                <div class="form-group">
                    <label for="temperature">Body temperature</label>
                    <input type="password" class="form-control" name="repassword"
                           id="temperature" placeholder="" value="${medicalRecord.medicalReport.bodyTemperature}" disabled>
                </div>
                <div class="form-group">
                    <label for="phoneNumber">Blood Pressure</label>
                    <input type="text" class="form-control" name="phoneNumber"
                           id="phoneNumber" placeholder="" value="${medicalRecord.medicalReport.bloodPressure}" disabled>
                </div>
                <div class="form-group">
                    <label for="symptom">Symptom</label>
                    <input type="text" class="form-control" name="phoneNumber"
                           id="symptom" placeholder="" value="${medicalRecord.medicalReport.symptom}" disabled>
                </div>
                <div class="form-group">
                    <label for="diagnosis1">Early diagnosis</label>
                    <input type="text" class="form-control" name="phoneNumber"
                           id="diagnosis1" placeholder="" value="${medicalRecord.medicalReport.earlyDiagnosis}" disabled>
                </div>
                <div class="form-group">
                    <label for="diagnosis2">Final diagnosis</label>
                    <input type="text" class="form-control" name="phoneNumber"
                           id="diagnosis2" placeholder="" value="${medicalRecord.medicalReport.finalDiagnosis}" disabled>
                </div>
                <div class="form-group">
                    <label for="diagnosis3">Diagnosis disease</label>
                    <input type="text" class="form-control" name="phoneNumber"
                           id="diagnosis3" placeholder="" value="${medicalRecord.medicalReport.diagnosisDisease}" disabled>
                </div>
                <div class="form-group">
                    <label for="conclusion">Conclusion</label>
                    <input type="text" class="form-control" name="phoneNumber"
                           id="conclusion" placeholder="" value="${medicalRecord.medicalReport.diagnosisDisease}" disabled>
                </div>
            </div>
        </div>
        <!-- [ Main Content ] end -->
    </div>
</div>

<jsp:include page="common/footer.jsp"/>
</body>

</html>