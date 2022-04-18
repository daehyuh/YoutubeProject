function test(){

    if ( document.body.classList.contains('white-theme') ){
        document.body.classList.replace('white-theme', 'dark-theme');
        document.getElementById("darkmode").innerText = "화이트 테마";
    } else{
        document.body.classList.replace('dark-theme', 'white-theme');
        document.getElementById("darkmode").innerText = "다크 테마";
    }
}

function test2(){
    if ( document.getElementById("user").classList.contains('userhidden') ){
        document.getElementById("user").classList.replace('userhidden', 'user');
    } else{
        document.getElementById("user").classList.replace('user', 'userhidden');
    }
}