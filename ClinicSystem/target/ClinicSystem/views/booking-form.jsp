<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="common/header.jsp"/>
<body>
<div class="auth-wrapper">
    <div class="container">
        <div class="bg-light card">
            <hr>
            <h3 style="margin-top: 20px" class="text-center">Booking Appointment</h3>
            <article class="card-body mx-auto" style="max-width: 700px;">
                <c:if test="${not empty message}">
                    <div class="alert alert-${alert}" role="alert">
                            ${message}
                    </div>
                </c:if>
                <form action="<%=request.getContextPath()%>/bookingAppointment" method="post">
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
                               type="text">
                    </div>
                    <div class="form-group input-group">
                        <input name="fullName" class="form-control" placeholder="Họ và tên(*)"
                               type="text">
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
                               placeholder="Tên người giám hộ(nếu có)" type="text">
                    </div>
                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                                <span class="input-group-text"> <i class="fa fa-phone"></i>
                                </span>
                        </div>
                        <input name="guardianPhoneNumber" class="form-control"
                               placeholder="Số điện thoại giám hộ(nếu có)" type="text">
                    </div>
                    <h6>Chọn ngày khám</h6>
                    <div class="form-group input-group">
                        <input name="dateSlot" class="form-control" placeholder="Chọn ngày khám"
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
                            Vấn đề sức khoẻ cần khám</textarea>
                    </div>
                    <!-- form-group// -->
                    <!-- form-group// -->
                    <div class="form-group input-group">
                        <button type="submit" class="btn btn-primary">Booking</button>
                        <button style="margin-left: 355px" type="reset"
                                class="btn btn-danger">Cancel
                        </button>
                    </div>
                </form>
            </article>
        </div>
        <!-- card.// -->

    </div>
</div>
<div>
    <jsp:include page="common/footer.jsp"/>

    <script>
      let form = new Validation("test-form");
      // Validation Functions
      form.requireText("username", 4, 30, [" "], []);
      form.registerPassword("password", 6, 20, [" "], [], "password");
    </script>

    <c:if test="${not empty alert}">${alert}</c:if>

</body>

</html>