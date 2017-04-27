window.onload = function(){
	listener("mid","blur",validateMid);
	listener("password","blur",validatePassword);
	listener("loginForm","submit",function(e){
		if(validateForm()){
			this.submit();
		}else{
			e.preventDefault();
		}
	});
	
}
function validateMid(){
	return validateEmpty("mid");
}
function validatePassword(){
	return validateEmpty("password");
}
function validateForm(){
	return validateMid() & validatePassword();
}