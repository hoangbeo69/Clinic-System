$(document).ready(function () {

    $("#formUserDetail").validate({
        rules: {
            username: {
                required: true,
                minlength: 3,
                maxlength: 100
            },
            fullname: {
                required: true,
                minlength: 3,
                maxlength: 100
            },
            repassword: {
                required: true,
                minlength: 5,
                maxlength: 250
            },
            password: {
                required: true,
                minlength: 5,
                maxlength: 250
            },
            phoneNumber: {
                matches: "[0-9]+"
            },

            email: {
                required: true,
                minlength: 3,
                maxlength: 100
            },
            dob: {
                required: true
            }
        },
        messages: {
            username: {
                required: "Please enter national",
                minlength: "Username must contain at least 3 characters",
                maxlength: "Username must contain at most 100 characters"
            },
            fullname: {
                required: "Please enter national",
                minlength: "Full name must contain at least 3 characters",
                maxlength: "Full name must contain at most 100 characters"
            },
            password: {
                required: "Please enter password",
                minlength: "Password must contain at least 5 characters",
                maxlength: "Password must contain at most 250 characters"
            },
            repassword: {
                matches: true
            },
            phoneNumber: {
                matches: "Phone Number Invalid"
            },
            email: {
                required: "Please enter password",
                minlength: "Password must contain at least 5 characters",
                maxlength: "Password must contain at most 250 characters"
            },
            dob: {
                required: "Please choose Date Of Birth"
            }

        },
        errorElement: "em",
        errorPlacement: function (error, element) {
            // Add the `invalid-feedback` class to the error element
            error.addClass("invalid-feedback");
            error.insertAfter(element);
        },
        highlight: function (element, errorClass, validClass) {
            $(element).addClass("is-invalid").removeClass("is-valid");
        },
        unhighlight: function (element, errorClass, validClass) {
            $(element).addClass("is-valid").removeClass("is-invalid");
        },
        submitHandler: function (form) {
            $.ajax({
                url: form.action,
                type: form.method,
                data: JSON.stringify($(form).serializeObject()),
                contentType: 'application/json;charset=utf-8',
                statusCode: {
                    201: function (response) {
                        let messageFeedback = $("#add-trainee-feedback");
                        messageFeedback.css({"display": "block", "color": "red"});
                        messageFeedback.html("Add New Trainee Not Successfully");
                    },
                    200: function (response) {
                        let messageFeedback = $("#add-trainee-feedback");
                        messageFeedback.css({"display": "block", "color": "green"});
                        messageFeedback.html("Add New Trainee Successfully");
                        //after 0.5s modal add trainee auto close
                        window.setTimeout(function () {
                            $('#addTraineeModal').modal('toggle');
                            resetFormAddNewUser();
                            window.location.reload(true);
                        }, 500)
                    }
                },
                success: function (response) {
                }
            });
        }
    });
    // Form Reset
    $("#btn-addTrainee-reset").click(resetFormAddNewUser());

});

function resetFormAddNewUser() {
    var form = $('#formUserDetail');
    var validator = form.validate();

    validator.resetForm();
    form.find(".form-control").removeClass("is-valid is-invalid");
    $("#add-trainee-feedback").html("");
    $("#formUserDetail").trigger("reset");
}