<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>

<jsp:include page="common/header.jsp"/>
<style>
  .login-container {
    margin-top: 5%;
    margin-bottom: 5%;
  }

  .login-form-1 {
    padding: 5%;
    background: #1abc9c;
    box-shadow: 0 5px 8px 0 rgba(0, 0, 0, 0.2), 0 9px 26px 0 rgba(0, 0, 0, 0.19);
    z-index: 9999;
  }

  .login-form-1 h3 {
    text-align: center;
    color: #ffff;
  }

  .login-form-2 {
    padding: 5%;
    box-shadow: 0 5px 8px 0 rgba(0, 0, 0, 0.2), 0 9px 26px 0 rgba(0, 0, 0, 0.19);
    z-index: 9999;
    background: #fff;
  }

  .login-form-2 h3 {
    text-align: center;
  }

  .login-container form {
    padding: 10%;
  }

  .btnSubmit {
    width: 50%;
    border-radius: 1rem;
    padding: 1.5%;
    border: none;
    cursor: pointer;
  }

  .login-form-1 .btnSubmit {
    font-weight: 600;
    color: #1abc9c;
    background-color: #fff;
  }

  .login-form-1 .btnSubmit {
    font-weight: 600;
    color: #1abc9c;
    background-color: #fff;
  }

  .login-form-1 .ForgetPwd {
    font-weight: 600;
    text-decoration: none;
  }
</style>
<body>
<div class="auth-wrapper">
    <div class="container login-container">
        <div class="row">
            <div class="col-md-6 login-form-1">
                <h3>Khách Hàng</h3>
                <br>
                <br>
                <br>
                <form id="register-form" class="form"
                      action="<%=request.getContextPath()%>/bookingAppointment" method="get">
                    <div style="text-align: center;" class="form-group">
                        <input type="submit" class="btnSubmit" value="Booking Appointment"/>
                    </div>
                </form>
            </div>
            <div class="col-md-6 login-form-2">
                <h3>Quản Lý, Bác Sỹ, Y Tá</h3>
                <form id="login-form" class="form" action="<%=request.getContextPath()%>/login"
                      method="post">
                    <h4 class="mb-3 f-w-400">Login</h4>
                    <hr>
                    <div class="form-group mb-3">
                        <input type="text" class="form-control" id="username" name="username"
                               placeholder="Username">
                    </div>
                    <div class="form-group mb-4">
                        <input type="password" class="form-control" id="password" name="password"
                               placeholder="Password">
                    </div>
                    <div class="custom-control custom-checkbox text-left mb-4 mt-2">
                        <input type="checkbox" class="custom-control-input" id="customCheck1">
                        <label class="custom-control-label" for="customCheck1">Remember
                            account</label>
                    </div>
                    <button class="btn btn-block btn-primary mb-4">Login</button>
                    <hr>
                    <p class="mb-2 text-muted">Forgot password? <a type="button" type="button"
                                                                   data-toggle="modal"
                                                                   data-target="#exampleModalLive"
                                                                   class="f-w-400 text-dark">Reset</a>
                    </p>
                    <p class="mb-0 text-muted">Don’t have an account? <a
                            href="<%=request.getContextPath()%>/RegisterController" class="f-w-400">Signup</a>
                    </p>
                </form>
            </div>
        </div>
    </div>
    <div id="exampleModalLive" class="modal fade" tabindex="-1" role="dialog"
         aria-labelledby="exampleModalLiveLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <form action="<%=request.getContextPath()%>/ResetPassword" method="post">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLiveLabel">Reset password</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span></button>
                    </div>
                    <div class="modal-body">
                        <p class="mb-3">A new password will send to your email. Check it out!</p>
                        <div class="form-group">
                            <input type="text" class="form-control" name="resetEmail"
                                   placeholder="Enter your email">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn  btn-secondary" data-dismiss="modal">
                            Close
                        </button>
                        <button type="submit" class="btn  btn-primary">Save changes</button>
                    </div>
                </form>
            </div>
        </div>
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