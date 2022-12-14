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
                            <h5 class="m-b-10">User Detail record</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html"><i
                                    class="feather icon-home"></i></a></li>
                            <li class="breadcrumb-item"><a href="#!">Home</a></li>
                            <li class="breadcrumb-item"><a href="#!">User Detail record</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- [ Main Content ] start -->
        <div class="row">
            <div class="col-xl-12">
                <c:if test="${not empty messageResponse.message}">
                    <div class="alert alert-${messageResponse.alert}" role="alert">
                            ${messageResponse.message}
                    </div>
                </c:if>

                <form action="<%=request.getContextPath()%>/user/detail" method="post">
                    <div class="form-group">
                        <label for="username">Username</label>
                        <input type="text" required="" class="form-control" name="username"
                               id="username" placeholder="" value="${user.username}">
                    </div>
                    <div class="form-group">
                        <label for="fullname">Full Name</label>
                        <input type="text" class="form-control" name="fullName" id="fullName"
                               placeholder="" value="${user.fullName}">
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" required="" class="form-control" name="password"
                               id="password" placeholder="" value="123456">
                    </div>
                    <div class="form-group">
                        <label for="repassword">Re-Password</label>
                        <input type="password" required="" class="form-control" name="repassword"
                               id="repassword" placeholder="" value="123456">
                    </div>
                    <div class="form-group">
                        <label for="phoneNumber">Phone Number</label>
                        <input type="text" required="" class="form-control" name="phoneNumber"
                               id="phoneNumber" placeholder="" value="${user.phoneNumber}">
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="text" required="" class="form-control" name="email" id="email"
                               placeholder="" value="${user.email}">
                    </div>
                    <div class="form-group">
                        <label for="dob">Date Of Birth</label>
                        <input type="date" name="dob" class="form-control" id=
                                "dob"
                               placeholder="DD/MM/YYYY" value="<fmt:formatDate
                                       pattern='YYYY-MM-DD' value='${user.dob}' />">
                    </div>


                    <div class="form-group">
                        <c:if test="${not empty user.id}">
                            <input type="submit" class="btn btn-primary" id="btnUpdateOrAddNews"
                                   value="Edit"/>
                        </c:if>
                        <c:if test="${empty user.id}">
                            <input type="submit" class="btn btn-primary" id="btnUpdateOrAddNews"
                                   value="Create new"/>
                        </c:if>
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