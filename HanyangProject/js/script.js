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