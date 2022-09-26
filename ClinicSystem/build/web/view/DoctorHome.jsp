<%-- 
    Document   : Home
    Created on : Sep 13, 2022, 9:23:37 PM
    Author     : Long
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <jsp:include page="../general/header.jsp" />

    <body class="">
        
        <jsp:include page="../general/header-sidebar.jsp"/>

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
                                    <li class="breadcrumb-item"><a href="index.html"><i class="feather icon-home"></i></a></li>
                                    <li class="breadcrumb-item"><a href="#!">Home</a></li>
                                    <li class="breadcrumb-item"><a href="#!">Medical record</a></li>
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
                                <h5>Projects</h5>
                                <div class="card-header-right">
                                    <div class="btn-group card-option">
                                        <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="feather icon-more-horizontal"></i>
                                        </button>
                                        <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                            <li class="dropdown-item full-card"><a href="#!"><span><i class="feather icon-maximize"></i> maximize</span><span style="display:none"><i class="feather icon-minimize"></i> Restore</span></a></li>
                                            <li class="dropdown-item minimize-card"><a href="#!"><span><i class="feather icon-minus"></i> collapse</span><span style="display:none"><i class="feather icon-plus"></i> expand</span></a></li>
                                            <li class="dropdown-item reload-card"><a href="#!"><i class="feather icon-refresh-cw"></i> reload</a></li>
                                            <li class="dropdown-item close-card"><a href="#!"><i class="feather icon-trash"></i> remove</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body py-3 px-4">
                                <div class="table-responsive">
                                    <table class="table table-hover mb-0" id="account-table">
                                        <thead>
                                            <tr>
                                                <th>
                                                    Name of patient
                                                </th>
                                                <th>Name</th>
                                                <th>Due Date</th>
                                                <th class="text-right">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <div class="d-inline-block align-middle">
                                                        <img src="assets/images/user/avatar-4.jpg" alt="user image" class="img-radius wid-40 align-top m-r-15">
                                                        <div class="d-inline-block">
                                                            <h6>John Deo</h6>
                                                            <p class="text-muted m-b-0">Graphics Designer</p>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>Able Pro</td>
                                                <td>Jun, 26</td>
                                                <td class="text-right"><label class="badge badge-light-danger">Low</label></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="d-inline-block align-middle">
                                                        <img src="assets/images/user/avatar-2.jpg" alt="user image" class="img-radius wid-40 align-top m-r-15">
                                                        <div class="d-inline-block">
                                                            <h6>Jenifer Vintage</h6>
                                                            <p class="text-muted m-b-0">Web Designer</p>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>Mashable</td>
                                                <td>March, 31</td>
                                                <td class="text-right"><label class="badge badge-light-primary">high</label></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="d-inline-block align-middle">
                                                        <img src="assets/images/user/avatar-3.jpg" alt="user image" class="img-radius wid-40 align-top m-r-15">
                                                        <div class="d-inline-block">
                                                            <h6>William Jem</h6>
                                                            <p class="text-muted m-b-0">Developer</p>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>Flatable</td>
                                                <td>Aug, 02</td>
                                                <td class="text-right"><label class="badge badge-light-success">medium</label></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="d-inline-block align-middle">
                                                        <img src="assets/images/user/avatar-2.jpg" alt="user image" class="img-radius wid-40 align-top m-r-15">
                                                        <div class="d-inline-block">
                                                            <h6>David Jones</h6>
                                                            <p class="text-muted m-b-0">Developer</p>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>Guruable</td>
                                                <td>Sep, 22</td>
                                                <td class="text-right"><label class="badge badge-light-primary">high</label></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="d-inline-block align-middle">
                                                        <img src="assets/images/user/avatar-4.jpg" alt="user image" class="img-radius wid-40 align-top m-r-15">
                                                        <div class="d-inline-block">
                                                            <h6>John Deo</h6>
                                                            <p class="text-muted m-b-0">Graphics Designer</p>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>Able Pro</td>
                                                <td>Jun, 26</td>
                                                <td class="text-right"><label class="badge badge-light-danger">Low</label></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="d-inline-block align-middle">
                                                        <img src="assets/images/user/avatar-2.jpg" alt="user image" class="img-radius wid-40 align-top m-r-15">
                                                        <div class="d-inline-block">
                                                            <h6>Jenifer Vintage</h6>
                                                            <p class="text-muted m-b-0">Web Designer</p>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>Mashable</td>
                                                <td>March, 31</td>
                                                <td class="text-right"><label class="badge badge-light-primary">high</label></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="d-inline-block align-middle">
                                                        <img src="assets/images/user/avatar-3.jpg" alt="user image" class="img-radius wid-40 align-top m-r-15">
                                                        <div class="d-inline-block">
                                                            <h6>William Jem</h6>
                                                            <p class="text-muted m-b-0">Developer</p>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>Flatable</td>
                                                <td>Aug, 02</td>
                                                <td class="text-right"><label class="badge badge-light-success">medium</label></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="d-inline-block align-middle">
                                                        <img src="assets/images/user/avatar-2.jpg" alt="user image" class="img-radius wid-40 align-top m-r-15">
                                                        <div class="d-inline-block">
                                                            <h6>David Jones</h6>
                                                            <p class="text-muted m-b-0">Developer</p>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>Guruable</td>
                                                <td>Sep, 22</td>
                                                <td class="text-right"><label class="badge badge-light-primary">high</label></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="d-inline-block align-middle">
                                                        <img src="assets/images/user/avatar-4.jpg" alt="user image" class="img-radius wid-40 align-top m-r-15">
                                                        <div class="d-inline-block">
                                                            <h6>John Deo</h6>
                                                            <p class="text-muted m-b-0">Graphics Designer</p>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>Able Pro</td>
                                                <td>Jun, 26</td>
                                                <td class="text-right"><label class="badge badge-light-danger">Low</label></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="d-inline-block align-middle">
                                                        <img src="assets/images/user/avatar-2.jpg" alt="user image" class="img-radius wid-40 align-top m-r-15">
                                                        <div class="d-inline-block">
                                                            <h6>Jenifer Vintage</h6>
                                                            <p class="text-muted m-b-0">Web Designer</p>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>Mashable</td>
                                                <td>March, 31</td>
                                                <td class="text-right"><label class="badge badge-light-primary">high</label></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="d-inline-block align-middle">
                                                        <img src="assets/images/user/avatar-3.jpg" alt="user image" class="img-radius wid-40 align-top m-r-15">
                                                        <div class="d-inline-block">
                                                            <h6>William Jem</h6>
                                                            <p class="text-muted m-b-0">Developer</p>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>Flatable</td>
                                                <td>Aug, 02</td>
                                                <td class="text-right"><label class="badge badge-light-success">medium</label></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="d-inline-block align-middle">
                                                        <img src="assets/images/user/avatar-2.jpg" alt="user image" class="img-radius wid-40 align-top m-r-15">
                                                        <div class="d-inline-block">
                                                            <h6>David Jones</h6>
                                                            <p class="text-muted m-b-0">Developer</p>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>Guruable</td>
                                                <td>Sep, 22</td>
                                                <td class="text-right"><label class="badge badge-light-primary">high</label></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="d-inline-block align-middle">
                                                        <img src="assets/images/user/avatar-4.jpg" alt="user image" class="img-radius wid-40 align-top m-r-15">
                                                        <div class="d-inline-block">
                                                            <h6>John Deo</h6>
                                                            <p class="text-muted m-b-0">Graphics Designer</p>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>Able Pro</td>
                                                <td>Jun, 26</td>
                                                <td class="text-right"><label class="badge badge-light-danger">Low</label></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="d-inline-block align-middle">
                                                        <img src="assets/images/user/avatar-2.jpg" alt="user image" class="img-radius wid-40 align-top m-r-15">
                                                        <div class="d-inline-block">
                                                            <h6>Jenifer Vintage</h6>
                                                            <p class="text-muted m-b-0">Web Designer</p>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>Mashable</td>
                                                <td>March, 31</td>
                                                <td class="text-right"><label class="badge badge-light-primary">high</label></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="d-inline-block align-middle">
                                                        <img src="assets/images/user/avatar-3.jpg" alt="user image" class="img-radius wid-40 align-top m-r-15">
                                                        <div class="d-inline-block">
                                                            <h6>William Jem</h6>
                                                            <p class="text-muted m-b-0">Developer</p>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>Flatable</td>
                                                <td>Aug, 02</td>
                                                <td class="text-right"><label class="badge badge-light-success">medium</label></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="d-inline-block align-middle">
                                                        <img src="assets/images/user/avatar-2.jpg" alt="user image" class="img-radius wid-40 align-top m-r-15">
                                                        <div class="d-inline-block">
                                                            <h6>David Jones</h6>
                                                            <p class="text-muted m-b-0">Developer</p>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>Guruable</td>
                                                <td>Sep, 22</td>
                                                <td class="text-right"><label class="badge badge-light-primary">high</label></td>
                                            </tr>
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

        <jsp:include page="../general/footer.jsp"/>

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
    </body>

</html>