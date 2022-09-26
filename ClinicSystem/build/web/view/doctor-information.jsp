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
                    <div class="col-sm-12">
                        <div class="card">
                            <div class="card-header">
                                <h5>Basic Component</h5>
                            </div>
                            <div class="card-body">
                                <form>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Name</label>
                                                <input type="email" class="form-control" placeholder="Enter name" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Address</label>
                                                <input type="email" class="form-control" placeholder="Enter address" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Height</label>
                                                <input type="email" class="form-control" placeholder="Enter height" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Blood group</label>
                                                <input type="email" class="form-control" placeholder="Enter blood group" required>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Phone</label>
                                                <input type="password" class="form-control" placeholder="Enter phone">
                                            </div>
                                            <div class="form-group">
                                                <label>Date of birth</label>
                                                <input type="password" class="form-control" placeholder="Enter date of birth">
                                            </div>
                                            <div class="form-group">
                                                <label>Weight</label>
                                                <input type="email" class="form-control" placeholder="Enter weight" required>
                                            </div>
                                        </div>
                                        <div class="form-group col-12 mt-3">
                                            <label for="exampleFormControlTextarea1">Description</label>
                                            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3">Enter description</textarea>
                                        </div>
                                        <div class="col-12 mt-3">
                                            <button type="submit" class="btn btn-primary px-5">Submit</button>
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

    </body>

</html>