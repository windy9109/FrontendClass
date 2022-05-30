<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <html>
    <head>
 
	<script>
		function dragEnter(ev) {
			ev.preventDefault();
		}
 
		function drag(ev) {
			ev.dataTransfer.setData("text", ev.target.id);
		}
 
		function drop(ev) {
			ev.preventDefault();
			var data = ev.dataTransfer.getData("text"); // img태그 아이디를 가져옴
			ev.target.appendChild(document.getElementById(data)); // 다른 div태그에 img를 추가함(옮김. 드래그처리)
		}
	</script>
	
	
	
<script language="JavaScript">
//
    // 커서 바꿔주는 스크립트
    function setCursor(){
    	str = document.getElementById("f1");
        str.style.cursor = 'url("pngwing.png"), auto';
       // str.style.cursor = 'url("https://blog.kakaocdn.net/dn/BQXpN/btq3qNR67Lg/8tx8tGzkOcr5BuX5dyIaKk/img.png"), auto';
        
/*         if( str.style.cursor != "pointer" ){
        	str.style.cursor = 
        } */
    }
    
    
</script>


<script>
        const circle = document.querySelector(".circle");

        document.addEventListener("mousemove", (e) => {
            const mouseX = e.clientX;
            const mouseY = e.clientY;
            circle.style.left = mouseX + 'px';
            circle.style.top = mouseY + 'px';
        });
</script>
    

    

 <style>
 
 .cursor {
    position:absolute;
    top:0;
    left: 0;
    z-index: 9999;
    width: 350px;
    height: 100px;
    transform:translate(-50%, -50%);
}


 table{ 
 background: url(4.png);
    width: 1000px;
    height: 700px;
    background-size: revert;
    background-repeat: no-repeat;
    border-collapse: collapse;
    border: 0pc solid #fff; }
 </style>
<table align="center" border="1" class="circle">
    <tr>
        <td><p align="center" onclick="setCursor()" >pointer</p></td>
    </tr>
</table>

</head>
    <body>
    
	<h1>드래그 앤 드롭을 이용한 객체의 이동</h1>
 
	<p>모나리자 그림을 드래그해서 옆의 사각형으로 옮겨보세요!</p>
 
	<div 
    	ondrop="drop(event)" 
    	ondragover="dragEnter(event)"
    >
		<img 
          id="monalisa" 
          width="180" height="280" 
          src="/examples/images/img_monalisa.png" 
          draggable="true" 
          ondragstart="drag(event)"
        >
	</div>
    
	<div 
      ondrop="drop(event)" 
      ondragover="dragEnter(event)"
    >
    </div>
    
    </body>
    </html>