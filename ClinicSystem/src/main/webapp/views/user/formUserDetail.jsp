<div class="modal fade" id="formUserDetail" tabindex="-1" role="dialog"
     aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <form id="formUserDetail">
            <div class="modal-content">
                <div class="modal-header">
                    <c:if test="${not empty user.id}">
                        <h5 class="modal-title" id="exampleModalLabel">Edit User</h5>
                    </c:if>
                    <c:if test="${ empty user.id}">
                        <h5 class="modal-title" id="exampleModalLabel">New User</h5>
                    </c:if>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                </div>
                <div class="modal-body">
                    <c:if test="${not empty messageResponse.message}">
                        <div class="alert alert-${messageResponse.alert}" role="alert">
                                ${messageResponse.message}
                        </div>
                    </c:if>
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
                        <label for="dob">Specialization</label>
                        <input type="text" required="" class="form-control" name="dob" id="dob"
                               placeholder="" value="${user.dob}">
                    </div>
                    <input type="hidden" id="id" name="id" value="${user.id}">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn  btn-secondary" data-dismiss="modal">Close
                    </button>

                    <c:if test="${not empty user.id}">
                        <button type="submit" class="btn btn-primary" id="btnUpdateOrAddUser">Edit
                        </button>
                    </c:if>
                    <c:if test="${empty user.id}">
                        <button type="submit" class="btn btn-primary" id="btnUpdateOrAddUser">Create
                            new
                        </button>
                    </c:if>
                </div>
        </form>
    </div>
</div>