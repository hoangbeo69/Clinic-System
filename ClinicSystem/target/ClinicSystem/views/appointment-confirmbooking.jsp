<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
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
                            <h5 class="m-b-10">Appointment Comfirm Booking</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html"><i
                                    class="feather icon-home"></i></a></li>
                            <li class="breadcrumb-item"><a href="#!">Home</a></li>
                            <li class="breadcrumb-item"><a href="#!">Appointment Comfirm Booking</a>
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
                        <form action="<%=request.getContextPath()%>/appointment/confirmBooking"
                              method="post">
                            <input type="hidden" id="id" name="id" value="${appointment.id}">
                            <!-- <h6>Mã bệnh nhân</h6>
                            <div class="form-group input-group">
                                    <input name="" class="form-control" placeholder=""
                                            type="text">
                            </div> -->
                            <div class="form-group">
                                <label for="dateSlot">Date Slot</label>
                                <input type="date" name="dateSlot" class="form-control" id=
                                        "dateSlot"
                                       placeholder="DD/MM/YYYY" value="<fmt:formatDate
                                       pattern='YYYY-MM-DD' value='${appointment.dateSlot}' />">
                            </div>

                            <!-- form-group// -->
                            <div class="form-group">
                                <label for="timeSlotOrder">Time Slot</label>
                                <select class="form-control" name="timeSlotOrder"
                                        id="timeSlotOrder">
                                    <c:forEach var="TIMESLOT" items="${TIMESLOTS}">

                                        <c:if test="${TIMESLOT.slotOrder ==  appointment.timeSlotOrder}">
                                            <option value="${TIMESLOT.slotOrder}"
                                                    selected>${TIMESLOT.timeValue}</option>
                                        </c:if>
                                        <c:if test="${TIMESLOT.slotOrder !=
                                         appointment.timeSlotOrder}">
                                            <option value="${TIMESLOT.slotOrder}">${TIMESLOT.timeValue}</option>
                                        </c:if>
                                    </c:forEach>
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="roomId">Room</label>
                                <select class="form-control" name="roomId"
                                        id="roomId">
                                    <c:forEach var="ROOM" items="${ROOMS}">

                                        <c:if test="${ROOM.id == appointment.roomId}">
                                            <option value="${ROOM.id}"
                                                    selected>${ROOM.roomName}</option>
                                        </c:if>
                                        <c:if test="${ROOM.id !=  appointment.roomId}">
                                            <option value="${ROOM.id}">${ROOM.roomName}</option>
                                        </c:if>
                                    </c:forEach>
                                </select>
                            </div>

                            <%--                            <div class="form-group">--%>
                            <%--                                <label for="roomId">Room</label>--%>
                            <%--                                <select class="form-control" name="roomId"--%>
                            <%--                                        id="roomId">--%>
                            <%--                                    <c:forEach var="ROOM" items="${ROOMS}">--%>

                            <%--                                        <c:if test="${ROOM.id == appointment.roomID}">--%>
                            <%--                                            <option value="${ROOM.id}"--%>
                            <%--                                                    selected>${ROOM.roomName}</option>--%>
                            <%--                                        </c:if>--%>
                            <%--                                        <c:if test="${ROOM.id !=  appointment.roomID}">--%>
                            <%--                                            <option value="${ROOM.id}">${ROOM.roomName}</option>--%>
                            <%--                                        </c:if>--%>
                            <%--                                    </c:forEach>--%>
                            <%--                                </select>--%>
                            <%--                            </div>--%>

                            <!-- form-group// -->
                            <div class="form-group">
                                <label for="doctorId">Doctor</label>
                                <select class="form-control" name="doctorId"
                                        id="doctorId">
                                    <c:forEach var="DOCTOR" items="${DOCTORS}">

                                        <c:if test="${DOCTOR.id == appointment.doctorId}">
                                            <option value="${DOCTOR.id}"
                                                    selected>${DOCTOR.fullName}</option>
                                        </c:if>
                                        <c:if test="${DOCTOR.id !=  appointment.doctorId}">
                                            <option value="${DOCTOR.id}">${DOCTOR.fullName}</option>
                                        </c:if>
                                    </c:forEach>
                                </select>
                            </div>

                            <!-- form-group// -->
                            <!-- form-group// -->
                            <div class="form-group">
                                <a class="btn btn-warning"
                                   href="<%=request.getContextPath()%>/appointment/confirmInfo?id=${appointment.id}">Back
                                </a>

                                <button type="submit" class="btn btn-primary">Confirm
                                    Booking
                                </button>
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