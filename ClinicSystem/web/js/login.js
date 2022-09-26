
function myFunction() {
    var x = document.getElementById("password");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
}
if (count($errors) > 0) {
    $('#loginModal').modal('show');
}
