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


proc4 = () => {
	str = "";
	for(i=1; i<=10; i++){
		for(k=1; k<=10; k++){
			if( (i+k) % 3 != 0) {continue;}			
			else {str += `${i} ${k}, &nbsp;&nbsp;&nbsp; <br>`;}
		}
	}
	document.querySelector("#result4").innerHTML = str;

}

//<!-- 1~100까지 중 2의 배수이면서 3의 배수인것만 출력 -->

proc5 =() => {
	str="";
	for(i=1; i<=100; i++){
		if(i%2 == 0 && i%3 == 0){
			str += `${i}<br>`
		}
	}
		document.querySelector("#result5").innerHTML = str;
	
}


//<!-- 두 수를 입력(prompt) 두수의 합이 100이상일때와 두수의 합이 100미만일때를 구분하여 출력
//continue를 이용, 두수 모두 0이 입력되면 종료 -->
proc6 = () => {
	
	
	grth=""; //100이상
	leth=""; //100미만
	while(true){
		input1 = parseInt(prompt("첫번째 수를 입력해주세요"));
		input2 = parseInt(prompt("두번째 수를 입력해주세요"));
			if(input1+input2 >= 100){
				grth += `${input1+input2}<br>`;
			}
			else if(input1+input2 < 100 && input1+input2 > 0){
				leth += `${input1+input2}<br>`;
			}
			if(input1+input2 == 0){
				break;
			 }
	}
		document.querySelector("#result6").innerHTML += `합이 100이상인 값들 <br>${grth}`;
		document.querySelector("#result6").innerHTML += `합이 100이상인 값들 <br>${leth}`;
	


}
