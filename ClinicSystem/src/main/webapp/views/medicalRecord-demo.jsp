<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Clinic HomePage</title>
    <link rel="stylesheet" href="../vendors/feather/feather.css">
    <link rel="stylesheet" href="../vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" href="../vendors/css/vendor.bundle.base.css">
    <link rel="stylesheet"
          href="../vendors/datatables.net-bs4/dataTables.bootstrap4.css">
    <link rel="stylesheet" href="../vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" type="text/css"
          href="../js/select.dataTables.min.css">
    <link rel="stylesheet" href="../css/vertical-layout-light/style.css">
    <link rel="shortcut icon" href="../images/favicon.png"/>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
    <!-- Bootstrap Font Icon CSS -->
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">

</head>
<body>
<div class="container-scroller">
    <%@include file="../common/header.jsp" %>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_settings-panel.html -->
        <div class="theme-setting-wrapper">
            <div id="settings-trigger">
                <i class="bi bi-gear"></i>
            </div>
            <div id="theme-settings" class="settings-panel">
                <i class="settings-close ti-close"></i>
                <p class="settings-heading">SIDEBAR SKINS</p>
                <div class="sidebar-bg-options selected" id="sidebar-light-theme">
                    <div class="img-ss rounded-circle bg-light border mr-3"></div>
                    Light
                </div>
                <div class="sidebar-bg-options" id="sidebar-dark-theme">
                    <div class="img-ss rounded-circle bg-dark border mr-3"></div>
                    Dark
                </div>
                <p class="settings-heading mt-2">HEADER SKINS</p>
                <div class="color-tiles mx-0 px-4">
                    <div class="tiles success"></div>
                    <div class="tiles warning"></div>
                    <div class="tiles danger"></div>
                    <div class="tiles info"></div>
                    <div class="tiles dark"></div>
                    <div class="tiles default"></div>
                </div>
            </div>
        </div>

        <!-- partial -->
        <!-- partial:partials/_sidebar.html -->
        <%@include file="../common/sidebar.jsp" %>
        <!-- partial -->
        <div class="main-panel">
            <div class="content-wrapper">
                <div class="row">
                    <div class="col-md-12 grid-margin">
                        <div class="row">
                            <div class="col-12 col-xl-8 mb-4 mb-xl-0">
                                <h3 class="font-weight-bold">Khám bệnh</h3>
                                <div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group row">
                                                <div class="col-sm-4">
                                                    <label class="col-form-label">Mã bệnh
                                                        nhân: </label> <span
                                                        class=" col-form-label code-patient"></span>
                                                </div>
                                                <div class="col-sm-8"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="col-form-label">Họ tên: </label> <span
                                                    class="col-form-label name-patient"></span>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="col-form-label">Số điện
                                                    thoại: </label> <span
                                                    class=" col-form-label phone-patient"></span>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="col-form-label">Giới tính: </label>
                                                <span
                                                        class="col-form-label gender-patient"></span>
                                            </div>
                                        </div>
                                        <div class="col-md-3"></div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="col-form-label">Ngày sinh:</label>
                                                <span
                                                        class="col-form-label birthday-patient"></span>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="col-form-label">Địa chỉ:</label> <span
                                                    class="col-form-label address-patient"></span>
                                            </div>
                                        </div>
                                        <div class="col-md-6"></div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="col-form-label">Nhiệt độ
                                                    (°C): </label> <input
                                                    class="form-control temperature-patient ml-2"
                                                    id="temperature-patient"
                                                    style="width: 50px;">
                                            </div>
                                        </div>
                                        <div class="col-md-3">

                                            <div class="form-group">
                                                <label class="col-form-label">Chiều cao
                                                    (cm):</label> <input
                                                    class="form-control height-patient ml-2"
                                                    id="height-patient" style="width: 50px;">
                                            </div>

                                        </div>
                                        <div class="col-md-3">

                                            <div class="form-group">
                                                <label class="col-form-label">Huyết áp
                                                    (mmHg):</label> <input
                                                    class="form-control blood-pressure-patient ml-2"
                                                    id="blood-pressure-patient"
                                                    style="width: 50px;">
                                            </div>

                                        </div>
                                        <div class="col-md-3">

                                            <div class="form-group">
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
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@include file="../common/footer.jsp" %>
</div>
</body>
</html>



