<%@page import="entity.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  

<!DOCTYPE html>
<html lang="en">

    <jsp:include page="../general/header.jsp" />

    <body class="">

        <jsp:include page="../general/header-sidebar.jsp"/>

        <%Account account = (Account) session.getAttribute("acc");%>

        <!-- [ Main Content ] start -->
        <div class="pcoded-main-container">
            <div class="pcoded-content">
                <!-- [ breadcrumb ] start -->
                <div class="page-header">
                    <div class="page-block">
                        <div class="row align-items-center">
                            <div class="col-md-12">
                                <div class="page-header-title">
                                    <h5 class="m-b-10">Change password</h5>
                                </div>
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html"><i class="feather icon-home"></i></a></li>
                                    <li class="breadcrumb-item"><a href="#!">User information</a></li>
                                    <li class="breadcrumb-item"><a href="#!">Change password</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- [ breadcrumb ] end -->
                <!-- [ Main Content ] start -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="card">
                            <div class="card-header">
                                <h5>Change password</h5>
                            </div>
                            <div class="card-body">

                                <form id="change-password-form" class="form" action="changePasswordController" method="post">
                                    <div class="row justify-content-center form-information">
                                        <div class="col-md-6">
                                            <div class="mb-4">
                                                <label>Old password:</label>
                                                <input type="password" class="form-control" name="old_password" id="old-password" value="<%=account.getPassWord()%>" placeholder="Enter old password" required>
                                            </div>
                                            <div class="mb-4">
                                                <label>New password:</label>
                                                <input type="password" class="form-control" name="new_password" id="new-password" placeholder="Enter new password" required>
                                            </div>
                                            <div class="mb-4">
                                                <label>Confirm password:</label>
                                                <input type="password" class="form-control" name="confirm_repassword" id="confirm-password" placeholder="Enter confirm password" required>
                                            </div>
                                            <button type="submit" class="btn btn-primary px-5">Submit</button>a
                                        </div>
                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>
                    <!-- [ form-element ] start -->

                    <!-- [ form-element ] end -->
                </div>
                <!-- [ Main Content ] end -->

            </div>
        </div>

        <jsp:include page="../general/footer.jsp"/>

        <script>
            let form = new Validation("test-form");
            // Validation Functions
            form.requireText("old-password", 4, 30, [" "], []);
            form.requireText("new-password", 4, 30, [" "], []);
            form.registerPassword("confirm-password", 4, 20, [" "], [], "new-password");
        </script>
        
    </body>

</html>