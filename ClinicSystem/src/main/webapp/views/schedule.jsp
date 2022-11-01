<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<jsp:include page="common/header.jsp"/>

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
                            <h5 class="m-b-10">Add new booking slot</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html"><i
                                    class="feather icon-home"></i></a></li>
                            <li class="breadcrumb-item"><a href="<%=request.getContextPath()%>/home">Home</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- [ Main Content ] start -->
        <div class="row">
            <div class="col-xl-12">
                <form action="<%=request.getContextPath()%>/schedule" method="post">
                    <div class="form-group">
                        <c:if test="${param.mess != null}">
                            <c:if test="${param.mess == 'fail'}">
                                <div style="color: red;">
                                    Add new booking slot fail
                                </div>
                            </c:if>
                            <c:if test="${param.mess == 'success'}">
                                <div style="color: green;">
                                    Add new booking slot successfully
                                </div>
                            </c:if>

                        </c:if>
                    </div>
                    <div class="form-group w-25">
                        <label for="timeSlot">Time slot</label>
                        <select class="form-control" name="timeSlot" id="timeSlot" required>
                            <c:forEach items="${timeSlots}" var="ts">
                                <option value="${ts.slotOrder}">${ts.timeValue}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="form-group w-25">
                        <label for="dateInput">Date</label>
                        <input type="date" class="form-control" name="date" id="dateInput"
                               placeholder="" required>
                    </div>
                    <div class="form-group w-25">
                        <label for="roomInput">Room</label>
                        <select class="form-control" name="room" id="roomInput" required>
                            <c:forEach items="${rooms}" var="r">
                                <option value="${r.id}">${r.roomName}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="form-group w-25">
                        <input type="submit" value="Add new booking slot" class="btn btn-primary" id="btnUpdateOrAddNews"/>
                    </div>
                    <input type="hidden" id="id" name="id" value="${user.id}">
                </form>
            </div>
        </div>
        <!-- [ Main Content ] end -->
    </div>
</div>

<jsp:include page="common/footer.jsp"/>
</body>

</html>