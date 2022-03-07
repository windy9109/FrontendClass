/**
 * 
 */
 
 function proc(){
	
	//div id="d1"를 검색
	var vd = document.getElementById("d1");
	
	//var를 붙이지 않으면 전역변수로 사용가능
	cr = parseInt(Math.random()*256);
	cg = parseInt(Math.random()*256);
	cb = parseInt(Math.random()*256);
	
	
	cr = cr.toString(16);
	cg = cg.toString(16);
	cb = cb.toString(16);
	vd.style.background = "#"+cr+cg+cb;
	
}