function onloadtheme(){
	const storedTheme = localStorage.getItem("darkTheme");
    if (storedTheme === "true") {
        document.body.classList.replace('white-theme', 'dark-theme');
		document.getElementById("themeinfo").innerHTML = "디자인 : 어두운테마";
    }
}

function test(){

	if ( document.body.classList.contains('white-theme') ){
		 document.body.classList.replace('white-theme', 'dark-theme');
		document.getElementById("themeinfo").innerHTML = "디자인 : 어두운테마";
		localStorage.setItem("darkTheme", "true");
		
	} else{
		document.body.classList.replace('dark-theme', 'white-theme');
		document.getElementById("themeinfo").innerHTML = "디자인 : 밝은 테마";
		localStorage.setItem("darkTheme", "false");
	}
}

function test2(){
    if ( document.getElementById("user").classList.contains('userhidden') ){
        document.getElementById("user").classList.replace('userhidden', 'user');    
	} else{
        document.getElementById("user").classList.replace('user', 'userhidden');
    }
}



function check(){

	var form = document.getElementById("form")	
	var user_id = document.getElementById("user_id");
	var user_pwd = document.getElementById("user_pwd");
	var user_pwd_check = document.getElementById("user_pwd_check");
	var user_name = document.getElementById("user_name");
	
	if(user_id.value == "" || user_id.value == null){
		alert("아이디를 입력하세요.");
		user_id.focus();
		return;
	}
	if (user_pwd.value == "" || user_pwd.value == null){
		alert("비밀번호를 입력하세요.");
		user_pwd.focus();
		return;
	}
	if (user_pwd_check.value != user_pwd.value || user_pwd_check.value == "" || user_pwd_check.value == null) {
		alert("비밀번호가 일치하지 않습니다.");
		user_pwd_check.focus();
		return;
	}
	if(user_name == "" || user_name == null){ 
		alert("이름을 입력하세요.");
		user_name.focus();
		return;
	}

	form.method="post";
	form.action="/JOINUS";
	form.submit();
	
}


function SearchCheck(){
	
	var title = document.getElementById("title").vaule;
	if (title == ""){
		return;
	}
	form.method="post";
	form.action="/SEARCH";
	form.submit();
	
}
