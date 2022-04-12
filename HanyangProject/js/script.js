function test (){
    document.body.classList.toggle('dark-theme');
}



$(document).ready(function(){
    $("#user").removeClass("user-hidden");
    $("#user").addClass("user");
  });


function div_click(){
	location = "login.html";
}


var loginBox = document.querySelector('.outBox');
var loginInputBox = document.querySelector('#sampleId');
loginInputBox.addEventListener('keyup', function(){
    if(!loginInputBox.value == ''){
        //빈 값이 아닌 경우
        loginBox.classList.add('existence');   
    }else{
        //빈 값인 경우
        loginBox.classList.remove('existence');   
    }
});

var loginInputBox2 = document.querySelector('#sampleId2');
loginInputBox2.addEventListener('keyup', function(){
    if(!loginInputBox2.value == ''){
        loginBox.classList.add('existence');   
    }else{
        loginBox.classList.remove('existence');   
    }
});