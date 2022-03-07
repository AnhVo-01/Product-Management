var nameErr = document.getElementById('name-error');
var passErr = document.getElementById('pass-error');
var emailErr = document.getElementById('email-error');
const nameArea = document.getElementById('user-name'),
        passArea = document.getElementById('user-pass'),
        emailArea = document.getElementById('user-email');

nameArea.onkeyup = () => {
    var name = nameArea.value;

    if (name.length == 0) {
        nameErr.innerHTML = '<i class="fa-solid fa-circle-xmark"></i>';
        return false;
    }
    if (!name.match(/^[A-Za-z0-9_\.]+$/)) {
        nameErr.innerHTML = '<i class="fa-solid fa-circle-xmark"></i>';
        return false;
    }
    nameErr.innerHTML = '<i style="color: #2e8b57;" class="fa-solid fa-circle-check"></i>';
    return true;
};

passArea.onkeyup = () => {
    var pass = passArea.value;

    if (pass.length == 0) {
        passErr.innerHTML = '<i class="fa-solid fa-circle-xmark"></i>';
        return false;
    }
    if (!pass.match(/^[A-Za-z0-9]+$/)) {
        passErr.innerHTML = '<i class="fa-solid fa-circle-xmark"></i>';
        return false;
    }
    passErr.innerHTML = '<i style="color: #2e8b57;" class="fa-solid fa-circle-check"></i>';
    return true;
};

emailArea.onkeyup = () => {
    var email = emailArea.value;

    if (email.length == 0) {
        emailErr.innerHTML = '<i class="fa-solid fa-circle-xmark"></i>';
        return false;
    }
    if (!email.match(/^[A-Za-z\._\-[0-9]*[@][A-Za-z]*[\.][a-z]{2,4}$/)) {
        emailErr.innerHTML = '<i class="fa-solid fa-circle-xmark"></i>';
        return false;
    }
    emailErr.innerHTML = '<i style="color: #2e8b57;" class="fa-solid fa-circle-check"></i>';
    return true;
};