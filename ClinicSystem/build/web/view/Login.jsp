<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <jsp:include page="../general/header.jsp" />

    <body>
        <!-- [ auth-signin ] start -->
        <div class="auth-wrapper">
            <div class="auth-content text-center">
                <img src="assets/images/logo.png" alt="" class="img-fluid mb-4">
                <div class="card borderless">
                    <div class="row align-items-center ">
                        <div class="col-md-12">
                            <div class="card-body">
                                <form id="login-form" class="form" action="<%=request.getContextPath()%>/LoginController" method="post">
                                    <h4 class="mb-3 f-w-400">Login</h4>
                                    <hr>
                                    <div class="form-group mb-3">
                                        <input type="text" class="form-control" id="username" name="username" placeholder="Username">
                                    </div>
                                    <div class="form-group mb-4">
                                        <input type="password" class="form-control" id="password" name="password" placeholder="Password">
                                    </div>
                                    <div class="custom-control custom-checkbox text-left mb-4 mt-2">
                                        <input type="checkbox" class="custom-control-input" id="customCheck1">
                                        <label class="custom-control-label" for="customCheck1">Remember account</label>
                                    </div>
                                    <button class="btn btn-block btn-primary mb-4">Login</button>
                                    <hr>
                                    <p class="mb-2 text-muted">Forgot password? <a type="button" type="button" data-toggle="modal" data-target="#exampleModalLive" class="f-w-400 text-dark">Reset</a></p>
                                    <p class="mb-0 text-muted">Don’t have an account? <a href="<%=request.getContextPath()%>/RegisterController" class="f-w-400">Signup</a></p>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="exampleModalLive" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalLiveLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <form action="<%=request.getContextPath()%>/ResetPassword" method="post">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLiveLabel">Reset password</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        </div>
                        <div class="modal-body">
                            <p class="mb-3">A new password will send to your email. Check it out!</p>
                            <div class="form-group">
                                <input type="text" class="form-control" name="resetEmail" placeholder="Enter your email">
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn  btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn  btn-primary">Save changes</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- [ auth-signin ] end -->

        <jsp:include page="../general/footer.jsp" />

        <script>
            let form = new Validation("test-form");
            // Validation Functions
            form.requireText("username", 4, 30, [" "], []);
            form.registerPassword("password", 6, 20, [" "], [], "password");
        </script>

        <c:if test="${not empty alert}">${alert}</c:if>
        
    </body>

</html>