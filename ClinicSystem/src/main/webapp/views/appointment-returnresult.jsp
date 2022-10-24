<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                                                class="form-control temperature-patient ml-2"
                                                id="temperature-patient"
                                                style="width: 50px;">
                                        </div>

                                    </div>
                                    <div class="col-md-3">

                                        <div class="form-group form-inline">
                                            <label class="col-form-label">Chiều cao
                                                (cm):</label> <input
                                                class="form-control height-patient ml-2"
                                                id="height-patient" style="width: 50px;">
                                        </div>

                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group form-inline">
                                            <label class="col-form-label">Huyết áp
                                                (mmHg):</label> <input
                                                class="form-control blood-pressure-patient ml-2"
                                                id="blood-pressure-patient"
                                                style="width: 50px;">
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group form-inline">
                                            <label class="col-form-label">Cân nặng
                                                (kg):</label> <input
                                                class="form-control weight-patient ml-2"
                                                id="weight-patient" style="width: 50px;">
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
                                                                class="form-control symptom-patient"
                                                                placeholder=""></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">Chẩn đoán
                                                đầu:</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control"
                                                       id="search-name-first-diagnosis-patient"
                                                       placeholder=""/>
                                                <input type="hidden"
                                                       id="search-name-first-diagnosis-patient-value"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">Chẩn đoán
                                                cuối:</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control"
                                                       id="search-name-final-diagnosis-patient"
                                                       placeholder=""/>
                                                <input type="hidden"
                                                       id="search-name-final-diagnosis-patient-value"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">Bệnh kèm
                                                theo:</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control"
                                                       id="search-name-including-diseases-patient"
                                                       placeholder=""/> <input type="hidden"
                                                                               id="search-name-including-diseases-patient-value"/>
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
                                                                placeholder=""></textarea>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!-- form-group// -->
                            <!-- form-group// -->
                            <div class="form-group ">
                                <a class="btn btn-warning"
                                   href="<%=request.getContextPath()%>/appointment/confirmDoctor?id=${appointment.id}">Back
                                </a>
                                <button type="submit" class="btn btn-primary">Starting</button>
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