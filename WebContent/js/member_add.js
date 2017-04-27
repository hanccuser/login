window.onload = function(){
	listener("mid","blur",validateMid);
	listener("name","blur",validateName);
	listener("age","blur",validateAge);
	listener("sal","blur",validateSal);
	listener("birthday","click",laydate);
	listener("memberForm","submit",function(e){
		if(validateForm()){
			this.submit();
		}else{
			e.preventDefault();
		}
	});
}
function validateMid(){
	if (!validateRegex("mid",/^\w+@\w+\.\w+$/)) {
		if(!validateRegex("mid",/^[a-zA-Z0-9\._]+$/)){
			if(!validateRegex("mid",/^\d+$/)){
				return false;
			}
		}
	}
	return true;
}
function validateName(){
	return validateEmpty("name");
}
function validateAge(){
	return validateRegex("age",/\d{1,3}/);
}
function validateSal(){
	return validateRegex("sal",/^\d{1,10}(\.\d{1,2})?$/);
}
// function validateBirthday(){
// 	return validateRegex("birthday",/\d{4}-d{2}-d{2}/);
// }
function validatePrivilege(){
	if(validateCheckbox("privilege")){
		document.getElementById("privilegeMsg").innerHTML = "";
		return true;
	}else{
		document.getElementById("privilegeMsg").innerHTML = "<font color='red'>请至少选择一种权限</font>";
		return false;
	}
}
function validateForm(){
	return validateMid() & validateName() & validateAge() & validateSal() & validatePrivilege();
}