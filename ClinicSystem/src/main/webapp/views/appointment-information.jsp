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
                            <h5 class="m-b-10">Medical record</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html"><i
                                    class="feather icon-home"></i></a></li>
                            <li class="breadcrumb-item"><a href="#!">Home</a></li>
                            <li class="breadcrumb-item"><a href="#!">Appointment Record</a></li>
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
                        <form action="<%=request.getContextPath()%>/bookingAppointment"
                              method="post">
                            <!-- <h6>Mã bệnh nhân</h6>
                            <div class="form-group input-group">
                                    <input name="" class="form-control" placeholder=""
                                            type="text">
                            </div> -->
                            <div class="form-group input-group">
                                <div class="input-group-prepend">
                                <span class="input-group-text"> <i class="fa fa-phone"></i>
                                </span>
                                </div>
                                <input name="phoneNumber" class="form-control"
                                       placeholder="Số điện thoại(*)"
                                       type="text" >
                            </div>
                            <div class="form-group input-group">
                                <input name="fullName" class="form-control"
                                       placeholder="Họ và tên(*)"
                                       type="text" >
                            </div>
                            <div class="form-group input-group">
                                <input type="date" name="dob" class="form-control"
                                       placeholder="Ngày sinh">
                            </div>
                            <div class="form-group input-group">
                                <select class="form-control" name="sex">
                                    <option selected="selected">Other</option>
                                    <option value="male" selected="">Nam</option>
                                    <option value="female">Nữ</option>
                                </select>
                            </div>
                            <!-- form-group// -->
                            <div class="form-group input-group">
                                <input name="address" class="form-control" placeholder="Địa chỉ"
                                       type="text">
                            </div>
                            <!-- form-group// -->
                            <div class="form-group input-group">
                                <input name="guardianFullname" class="form-control"
                                       placeholder="Tên người giám hộ(nếu có)" type="email" >
                            </div>
                            <div class="form-group input-group">
                                <div class="input-group-prepend">
                                <span class="input-group-text"> <i class="fa fa-phone"></i>
                                </span>
                                </div>
                                <input name="guardianPhoneNumber" class="form-control"
                                       placeholder="Số điện thoại giám hộ(nếu có)" type="text" >
                            </div>
                            <h6>Chọn ngày khám</h6>
                            <div class="form-group input-group">
                                <input name="dateSlot" class="form-control"
                                       placeholder="Chọn ngày khám"
                                       type="date">
                            </div>
                            <!-- form-group// -->
                            <div class="form-group input-group">
                                <select class="form-control" name="timeSlotOrder">
                                    <c:forEach var="TIMESLOT" items="${TIMESLOTS}">
                                        <option value="${TIMESLOT.slotOrder}">${TIMESLOT.timeValue}</option>
                                    </c:forEach>
                                </select>
                            </div>

                            <!-- form-group end.// -->
                            <div class="form-group input-group">
                        <textarea class="form-control" cols="61" name="description">
                            </textarea>
                            </div>
                            <!-- form-group// -->
                            <!-- form-group// -->
                            <div class="form-group input-group">
                                <button type="submit" class="btn btn-primary">Starting</button>
                                <button style="margin-left: 355px" type="reset"
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
<%@ include file="user/formUserDetail.jsp" %>
</body>

</html>