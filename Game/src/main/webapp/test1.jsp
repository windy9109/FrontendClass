<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script language="JavaScript">
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
<!--     <td width="150" height="150">
     
    <table border="1" onmouseover="setCursor(this,'wait')" width="100%" height="100%">
        <tr>
        <td><p align="center">wait</p></td>
        </tr>
    </table>
     
    </td> -->
        <td><p align="center" onclick="setCursor()" >pointer</p></td>
    </tr>
<!--     <tr>
    <td width="150" height="150">
     
    <table border="1" onmouseover="setCursor(this,'move')" width="100%" height="100%">
        <tr>
        <td><p align="center">move</p></td>
        </tr>
    </table>
     
    </td>
    <td width="150" height="150">
     
    <table border="1" onmouseover="setCursor(this,'crosshair')" width="100%" height="100%">
        <tr>
        <td><p align="center">crosshair</p></td>
        </tr>
    </table>
     
    </td>
    </tr> -->
</table>