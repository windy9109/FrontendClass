
 
/* window.onload = () => {
	
	f = document.ff  //form 검색 접근
	f.addEventListener('submit', datapro);
	
}*/

	
	datapro = () => {
		
		f = document.ff  //form 검색 접근
		
		//입력한 값을 가져온다
		namevalue = f.name.value.trim();
//		console.log(namevalue);
		//공백검증
		if(namevalue.length < 1){
			alert("이름을 입력하세요");
			return false;
		}
		
		//길이검증
		if( namevalue.length <2 || namevalue.length > 5 ){
			//이걸 제거하면 형식오류로 넘어감
			alert("이름은 2~5사이입니다");
			return false;
		}
		
		
		//정규식
		namereg = /^[가-힣]{2,5}$/
		
		if(!(namereg.test(namevalue))){
			alert("이름 형식 오류입니다.");
			return false;
		}
		//-------------------------------------------------
		//아이디 검증
		idvalue = f.userid.value.trim();
		
		if(idvalue.length < 1){
			alert("아이디 입력하세요");
			return false;
		}
		if(idvalue.length < 4 || idvalue.length > 10){
			alert("아이디는 4~10사이입니다.");
			return false;
		}
		
		idreg = /^[a-zA-Z]{1}[a-zA-Z0-9]{3,9}$/
		if(!(idreg.test(idvalue))){
			alert("아이디 형식오류...");
			return false;
		}
		
		
		//------------------------------------------------
		//이메일 PasS123@w3c.org, ddit@or.kr 
		emailvalue = f.email.value.trim();
		
		//공백
		if(emailvalue.length < 1){
			alert("이메일을 입력해주세요");
			return false;
		}
		//정규식 - 첫글자는 영문자 1글자 - 영문자나 숫자가 올수 있다.
		emailreg = /^[a-zA-Z]{1}[a-zA-Z0-9]+@[a-zA-Z0-9]+(\.[a-z]+){1,2}$/;
		if(!(emailreg.test(emailvalue))){
			alert("이메일 형식오류...");
			return false;
		}
		
		//----------------------------------------------
		//휴대폰 전화번호
		
		phvalue = f.phone.value.trim();
		
		
		//공백
		if(phvalue.length < 1){
			alert("전화번호를 입력해주세요");
			return false;
		}
		
		//길이 = 11자리와 일치
		if(phvalue.length != 13){
			alert("전화번호는 11자리에 맞게 입력해주세요");
			return false;
		}
		
		//정규식
		
		phreg=/^\d{3}-\d{4}-\d{4}$/;
		if(!(phreg.test(phvalue))){
			alert("전화번호를 형식오류");
			return false;
		}
		
		
		
		
		
		//alert("올바른 데이터 성공");
		return true;
		
		
		
		
		/* 	f.addr.value
		f.birthday.value
		f.email.value
		f.userid.value
		f.pass.value
		f.phone.value */
		
		
	}//datapro끝
	