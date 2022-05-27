<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mouse Animation</title>
    <script>
    var flag = false;
    
    function setCursor(){
        var circle = document.querySelector(".circle");
        
        var img_ju = document.querySelector(".img_ju");
        document.addEventListener("mousemove", (e) => {
            const mouseX = e.clientX;
            const mouseY = e.clientY;
            circle.style.left = mouseX + 'px';
            circle.style.top = mouseY + 'px';
            circle.style.display = "block";
            img_ju.style.display = "none";
            

            

            flag = true;
        }); 
        var pot;
        for (var j = 0; j < 4; j++) {
        	pot = document.querySelectorAll(".pot")[j];
        	console.log(pot)
        	pot.style.cursor = "pointer";	  
        }
    }
    
    function setWater(pot){
    	if(flag == true ){
    		//var pot1 = document.querySelector(pot);
    		//pot.style.cursor = "pointer";
    		pot.style.background = "url(1_1.png)";


    	}


    }

    </script>
    <style>
        * {
            margin: 0;
        }
.f1{ 
 background: url(4.png);
    width: 1000px;
    height: 700px;
    background-size: revert;
    background-repeat: no-repeat;
    border-collapse: collapse;
    border: 0pc solid #fff; 
        position: relative;
    }
    
.circle {
position: absolute;
    width: 300px;
    height: 250px;
    background: url(pngwing.png);
    display: none;
    margin-left: 20px;
    background-size: contain;
    background-repeat: no-repeat;
    margin-top: -100px;
        }
        
   .img_ju{
   	 position: absolute;
	  top: 220px;
	  right: 360px;
	  width: 250px;
   }
   .material1{
   	border: 1px solid;
   }
   .material2{
   	border: 1px solid;
   }
   .material3{
   	border: 1px solid;
   }
   .material4{
   	border: 1px solid;
   }
   .mate{
    width: 120px;
    height: 70px;
    display: inline-block;
    margin-left: 15px;
    margin-top: 5px;
    cursor: pointer;
   }
   .material_wrap{
   	position: absolute;
    top: 20px;
    left: 120px;
   }
   .material_sub1{
   
   }
   
   .material_sub2{
   
   }
   
   
   
   .pot1{

   }
   .pot2{

   	margin-left: 45px !important;
   }
   .pot3{

   }
   .pot4{

   	margin-left: 45px !important;
   }
   .pot{
    width: 120px;
    height: 70px;
    display: inline-block;
    margin-left: 15px;
    background-position: -14px -6px !important;
    border-radius:100%;
   }
   .pot_wrap{
    position: absolute;
    top: 240px;
    left: 100px;
   }
   .pot_sub1{
   margin-left: 47px;
    margin-top: 3px;
   }
   .pot_sub2{
      margin-top: 32px;
    margin-left: 5px;
   }
    </style>
</head>
<body>

<div class="f1">

<div class="material_wrap">
	<div class="material_sub">
		<div class="material1 mate"></div>
		<div class="material2 mate"></div>
	</div>
	<div class="material_sub">
		<div class="material3 mate"></div>
		<div class="material4 mate"></div>
	</div>
</div>


<div class="pot_wrap">
	<div class="pot_sub1">
		<div class="pot1 pot" onclick="setWater(this);">1</div>
		<div class="pot2 pot" onclick="setWater(this);">2</div>
	</div>
	<div class="pot_sub2">
		<div class="pot3 pot" onclick="setWater(this);">3</div>
		<div class="pot4 pot" onclick="setWater(this);">4</div>
	</div>
</div>


			<div onclick="setCursor()" >
				<img src="pngwing.png" class="img_ju">
			</div>

</div>

    <div class="circle"></div>
    
</body>
</html>