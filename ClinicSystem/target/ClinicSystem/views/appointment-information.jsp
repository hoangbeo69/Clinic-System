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
                        <form action="<%=request.getContextPath()%>/appointment"
                              method="post">
                            <input type="hidden" id="id" name="id" value="${appointment.id}">
                            <!-- <h6>Mã bệnh nhân</h6>
                            <div class="form-group input-group">
                                    <input name="" class="form-control" placeholder=""
                                            type="text">
                            </div> -->

                            <div class="form-group">
                                <label for="fullName">FullName</label>
                                <input type="text" required="" class="form-control"
                                       name="fullName"
                                       id="fullName" placeholder=""
                                       value="${appointment.fullName}">
                            </div>

                            <div class="form-group">
                                <label for="dob">Date Of Birth</label>
                                <input type="date" name="dob" class="form-control" id=
                                        "dob"
                                       placeholder="DD/MM/YYYY" value="<fmt:formatDate
                                       pattern='YYYY-MM-DD' value='${appointment.dob}' />">
                            </div>

                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="text" required="" class="form-control"
                                       name="email" id="email"
                                       placeholder="" value="${appointment.email}">
                            </div>

                            <div class="form-group">
                                <label for="sex">Sex</label>
                                <select class="form-control" name="sex" id="sex">
                                    <option selected="selected">Other</option>
                                    <option value="male" selected="">Nam</option>
                                    <option value="female">Nữ</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="guardianFullname">Guardian Fullname</label>
                                <input type="text" required="" class="form-control"
                                       name="guardianFullname" id="guardianFullname"
                                       placeholder="" value="${appointment.guardianFullname}">
                            </div>

                            <div class="form-group">
                                <label for="guardianPhoneNumber">Guardian Phone Number</label>
                                <input type="text" required="" class="form-control"
                                       name="guardianPhoneNumber" id="guardianPhoneNumber"
                                       placeholder="" value="${appointment.guardianPhoneNumber}">
                            </div>
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

                                        <:c:if
                                                test="${TIMESLOT.slotOrder} == ${appointment.timeSlotOrder}">
                                            <option value="${TIMESLOT.slotOrder}" selected
                                            >${TIMESLOT.timeValue}</option>
                                        </:c:if>
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
</body>

</html>