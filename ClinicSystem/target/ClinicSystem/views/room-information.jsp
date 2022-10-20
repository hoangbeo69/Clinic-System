<%--
    Document   : Home
    Created on : Sep 13, 2022, 9:23:37 PM
    Author     : Long
--%>

<%@page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<header>
    <title>Room Infomation</title>
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
                            <h5 class="m-b-10">Room record</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html"><i
                                    class="feather icon-home"></i></a></li>
                            <li class="breadcrumb-item"><a href="#!">Room</a></li>
                            <li class="breadcrumb-item"><a href="#!">Room record</a></li>
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
                        <c:if test="${not empty room.id}">
                            <h5>Edit Room Info</h5>
                        </c:if>
                        <c:if test="${empty room.id}">
                            <h5>Add New Room</h5>
                        </c:if>
                        <div class="card-header-right">
                            <div class="btn-group card-option">
                                <button type="button" class="btn dropdown-toggle"
                                        data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">
                                    <i class="feather icon-more-horizontal"></i>
                                </button>
                                <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                    <li class="dropdown-item full-card"><a href="#!"><span><i
                                            class="feather icon-maximize"></i> maximize</span><span
                                            style="display:none"><i
                                            class="feather icon-minimize"></i> Restore</span></a>
                                    </li>
                                    <li class="dropdown-item minimize-card"><a href="#!"><span><i
                                            class="feather icon-minus"></i> collapse</span><span
                                            style="display:none"><i class="feather icon-plus"></i> expand</span></a>
                                    </li>
                                    <li class="dropdown-item reload-card"><a href="#!"><i
                                            class="feather icon-refresh-cw"></i> reload</a></li>
                                    <li class="dropdown-item close-card"><a href="#!"><i
                                            class="feather icon-trash"></i> remove</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="card-body py-3 px-4">
                        <form action="<%=request.getContextPath()%>/room/detail" method="post">
                            <c:if test="${not empty message}">
                                <div class="alert alert-${alert}" role="alert">
                                        ${message}
                                </div>
                            </c:if>
                            <div class="form-group">
                                <label for="roomName">Room Name</label>
                                <input type="text" required="" class="form-control"
                                       name="roomName"
                                       id="roomName" placeholder=""
                                       value="${room.roomName}">
                            </div>
                            <div class="form-group">
                                <label for="description">Description</label>
                                <input type="text" class="form-control" name="description"
                                       id="description"
                                       placeholder="" value="${room.description}">
                            </div>
                            <input type="hidden" id="id" name="id" value="${room.id}">
                            <div class="form-group">
                                <input type="reset" class="btn  btn-secondary"
                                       data-dismiss="modal" value="Reset"/>

                                <c:if test="${not empty room.id}">
                                    <button type="submit" class="btn btn-primary"
                                            id="btnUpdateOrAddUser">Edit
                                    </button>
                                </c:if>
                                <c:if test="${empty room.id}">
                                    <button type="submit" class="btn btn-primary"
                                            id="btnUpdateOrAddUser">Add New
                                    </button>
                                </c:if>
                            </div>

                        </form>

                    </div>
                </div>

            </div>
            <!-- [ Main Content ] end -->
        </div>
    </div>

    <jsp:include page="common/footer.jsp"/>
</body>

</html>