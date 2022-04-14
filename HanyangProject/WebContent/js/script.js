function test(){
    document.body.classList.toggle('dark-theme');
}

function test2(){
    if ( document.getElementById("user").classList.contains('userhidden') ){
        document.getElementById("user").classList.replace('userhidden', 'user');
    } else{
        document.getElementById("user").classList.replace('user', 'userhidden');
    }
}

function check(){
	
	var user_id = document.getElementById("user_id");
	var user_pwd = document.getElementById("user_pwd");
	var user_pwd_check = document.getElementById("user_pwd_check");
	var user_name = document.getElementById("user_name");
	
	if(user_id.value == "" || user_id.value == null){
		alert("아이디를 입력하세요.");
		user_id.focus();
		return;
	} else if (user_pwd.value == "" || user_pwd.value == null){
		alert("비밀번호를 입력하세요.");
		user_pwd.focus();
		return;
	} else if (user_pwd_check.value == user_pwd || user_pwd_check == "" || user_pwd_check == null){
		alert("비밀번호가 일치하지 않습니다.");
		user_pwd_check.focus();
		return;
	} else if(user_name == "" || user_name == null){ 
		alert("이름을 입력하세요.");
		user_name.focus();
		return;
	}
	form.method="post";
	form.action="/JOINUS";
	form.submit();
	
}