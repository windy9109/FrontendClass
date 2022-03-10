/**
 * 
 
 람다함수  : => 를 이용하는 함수
 proc3 =(매개변수) => {}
 
 */
 
 
 function proc1(){
	//1~10합
	
}

 function proc2(){
	//1~100 짝수합
	hap = 0;
	
	for(i=1; i<=100; i++){
		//if(i%2 == 0) hap += i;
		if(i %2 !=0 ) continue;
		hap += i
	}
	
	document.querySelector("#result2").innerHTML = hap;
	
}

proc3 = () => {
	
	var hap = 0;
	var str = "";
	
	while(true){
		//입력
		su = parseInt(prompt("수를 입력"));
		
		//비교
		if(su == 0) break;
		
		
		//더하고
		hap += su; 
		str += su+ ", ";
	}
	
	res = "입력한 값들: "+str+"<br>";
	res += "더한 합:"+hap; 
	document.querySelector("#result3").innerHTML = res;
	
	
}










