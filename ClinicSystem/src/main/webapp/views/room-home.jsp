<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">

<header>
    <title>Room Home</title>
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
                            <li class="breadcrumb-item"><a href="#!">Room Record</a></li>
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
                        <c:if test="${not empty messageResponse.message}">
                            <div class="alert alert-${messageResponse.alert}" role="alert">
                                    ${messageResponse.message}
                            </div>
                        </c:if>
                        <a class="btn  btn-primary" title="Add New"
                           data-toggle="tooltip"
                           href="<%=request.getContextPath()%>/room/detail">
                            <i class="fa fa-plus" aria-hidden="true"></i>
                        </a>
                    </div>
                    <div class="card-body py-3 px-4">
                        <div class="table-responsive">
                            <table class="table table-hover mb-0" id="room-table">
                                <thead>
                                <tr>
                                    <th>Index</th>
                                    <th>Id</th>
                                    <th>RoomName</th>
                                    <th>Description</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="room" items="${ROOMS}"
                                           varStatus="loop">
                                    <tr>
                                        <td>${loop.count}</td>
                                        <td>${room.id}</td>
                                        <td>${room.roomName}</td>
                                        <td>${room.description}</td>
                                        <td>
                                            <c:url var="singleURL" value="room/detail">
                                                <c:param name="id" value="${room.id}"/>
                                            </c:url>
                                            <a class="btn btn-info" title="Detail"
                                               data-toggle="tooltip"
                                               href="<c:url value="${singleURL}"/>">
                                                <i class="feather icon-info" aria-hidden="true"></i>
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>
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
<jsp:include page="common/footer.jsp"/>
<script>
  $(document).ready(function () {
    $('#room-table').DataTable({
      lengthMenu: [
        [5, 10, 25, -1],
        [5, 10, 25, "All"]
      ],
    });

  });
</script>
<%@ include file="user/formUserDetail.jsp" %>
</body>

</html>