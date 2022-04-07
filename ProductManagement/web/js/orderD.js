const postBtn = document.querySelector(".post"),
    messArea = document.getElementById("fb-area"),
    num = document.getElementById("left");

function req(){
    var mess = messArea.value;
    var required = 1000;
    var left = required - mess.length;

    if(left > 0){
        num.innerHTML = left;
        return false;
    }

    num.innerHTML = "0";
    return true;
};
            
postBtn.onclick = () => {
    messArea.disabled = true;
    postBtn.style.display = "none";
    num.style.display = "none";
};