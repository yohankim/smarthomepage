/**
 * 로그인 입력시 영어와 숫자만 입력하도록 체크
 */
function check(){
	if(document.frm.id.value == ""){//아이디를 입력하지 않고 넘어가려 할 때 팝업창
		alert("아이디를 입력해 주세요.");
		document.frm.id.focus();
		return false;
	}else if(document.frm.age.value == ""){
		alert("나이를 입력해 주세요.");
		document.frm.age.focus();
		return false;
	}else if (isNaN(document.frm.age.value)){//isNaN ->'숫자가 아니라면' 이라는 메소드 
		alert("숫자로 입력해 주세요.");
		document.frm.age.focus();
		return false;
	}else{
		return true;
	}
}