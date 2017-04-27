function validateCheckbox(eleId){
	count = 0;  //判断是否有保存的数据量
	obj = document.all(eleId);
	if(obj.length == undefined){
		if(obj.checked){
			count++;
		}
	}else{
		for(x=0;x<obj.length;x++){
			if(obj[x].checked){
				count++;
			}
		}
	}
	return count>0;
}
function validateRegex(eleId,regex){
	if(validateEmpty(eleId)){
		obj = document.getElementById(eleId);
			if(regex.test(obj.value)){
				obj.className = "right";
				return true;
			}else{
				obj.className = "wrong";
				return false;
			}

		}
}
function validateEmpty(eleId){
	obj = document.getElementById(eleId);
	if (obj != null) {
		if(obj.value == ""){
			obj.className = "wrong";
			return false;
		}else{
			
			obj.className = "right";
			return true;
		}
	}else{
		obj.className = "wrong";
		return false;
	}
}
function listener(eleId,eventType,fun){
	document.getElementById(eleId).addEventListener(eventType,fun,false);
}


