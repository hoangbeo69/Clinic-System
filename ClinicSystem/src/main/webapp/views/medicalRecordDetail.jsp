<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Hồ sơ bệnh nhân</title>
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
                                <h3 class="font-weight-bold">Hồ sơ bệnh nhân</h3>
                                <div style="width: 900px;margin-left: 100px;"
                                     class="content-wrapper">
                                    <div class="card card-outline">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <strong>Mã bệnh nhân:&nbsp</strong> <span
                                                            class="code-patient"></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <strong>Họ tên:&nbsp</strong> <span
                                                            class="name-patient"></span>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <strong>Số điện thoại:&nbsp</strong> <span
                                                            class="phone-patient"></span>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <strong>Giới tính:&nbsp</strong> <span
                                                            class="gender-patient"></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <strong>Ngày sinh:&nbsp</strong> <span
                                                            class="birthday-patient"></span>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <strong>Địa chỉ:&nbsp</strong> <span
                                                            class="address-patient"></span>
                                                    </div>
                                                </div>
                                                <div class="col-md-4"></div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div style="width: 350px;" class="card">
                                                        <div class="card-header bg-info">
                                                            <h3 class="card-title">Bệnh án</h3>
                                                        </div>
                                                        <!-- /.card-header -->
                                                        <div class="card-body list-profile-detail row"></div>
                                                        <!-- /.card-body -->
                                                    </div>
                                                </div>
                                                <!-- /.col -->
                                            </div>
                                        </div>
                                        <!-- /.card -->
                                    </div>
                                    <!-- /.content -->
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



