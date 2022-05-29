<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mouse Animation</title>
    
    
    
    <!-- HTML5 API Drag and Drop -->
	 <script>
		function dragEnter(ev) {
			ev.preventDefault();
		}
 
		function drag(ev) {
			ev.dataTransfer.setData("text", ev.target.id);
			//console.log(ev.dataTransfer.setData("text", ev.target.id));
		}
 
		function drop(ev) {
			//console.log(ev);
			//ev.preventDefault();
			var data = ev.dataTransfer.getData("text"); // img태그 아이디를 가져옴

			er = document.getElementById(data);
			qww = ev.target.closest('.pot').childNodes;
			var arr = Array.prototype.slice.call(qww);


			
 			for(var i = 0; i<arr.length; i++ ){
				if(data == arr[i].id){
					return;
				}  	
			}  

 			ev.target.closest('div').appendChild(er.cloneNode());// 다른 div태그에 img를 추가함(옮김. 드래그처리)
			
			
			
			
			
		}
	</script>
	
	<!-- HTML5 API Drag and Drop END-->
	
	
	
    <script>
    var flag = false;
    
	    function setCursor(){
		        var circle = document.querySelector(".circle");
		        
		        var img_ju = document.querySelector(".img_ju");
		    		 const listen0 = (e) => {
		            const mouseX = e.clientX;
		            const mouseY = e.clientY;
		            circle.style.left = mouseX + 'px';
		            circle.style.top = mouseY + 'px';
		            circle.style.display = "block";
		            img_ju.style.display = "none";
		            flag = true;
		        }; 

		        document.addEventListener("mousemove", listen0);
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
        		pot.style.background = "url(img/1_1.png)";
        		flag = false;
        	}
  
    }
        
        

    </script>
    <style>
        * {
            margin: 0;
        }
.f1{ 
 background: url(img/4.png);
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
    background: url(img/pngwing.png);
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

   }
   .material2{

   }
   .material3{

   }
   .material4{

   }
   .mate{
    width: 120px;
    height: 70px;
    display: inline-block;
    margin-left: 15px;
    margin-top: 5px;
    cursor: pointer;
    position: relative;
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

   margin-left: 49px !important;
   }
   .pot3{

   }
   .pot4{
margin-left: 47px !important;
    margin-top: 3px;
   }
   .pot{
    width: 117px;
    height: 67px;
    display: inline-block;
    margin-left: 15px;
    background-position: -14px -6px !important;
    border-radius:100%;
    position: relative;
   }
   .pot_wrap{
    position: absolute;
    top: 240px;
    left: 100px;
        z-index: 99999;
   }
   .pot_sub1{
   margin-left: 47px;
    margin-top: 3px;
   }
   .pot_sub2{
      margin-top: 32px;
    margin-left: 5px;
   }
   
   
   		.qw11 {
/* 			width: 180px;
			height: 280px;
			margin: 10px;
			padding: 10px;
			border: solid 15px #8B4513;
			float: left; */
		}
		
		.mate img{
		width: 100%;
    height: 100%;
		}
		
		.su1{
		width: 100%;
    height: 100%;
    position: absolute;
        top: 20px;
        opacity: 0;
		}
		.pot img{
		opacity: 1;
		}
		
		#mon1{
		       width: 75px;
    height: 36px;
    z-index: 99;
		}
		#mon2{
		width: 94px;
    height: 28px;
        z-index: 9;
		}
		#mon3{
width: 80px;
    height: 53px;
        top: 10px;
    left: 20px;
		}
		#mon4{
		width: 61px;
    height: 31px;
        z-index: 999;
		}
		
    </style>
</head>
<body>

<div class="f1">

<div class="material_wrap">
	<div class="qw11" ondrop="drop(event)" ondragover="dragEnter(event)">
		<div class="material_sub">
			<div class="material1 mate">
				<img id="mon1"  class ="su1" width="180" height="280" src="img/su.png" draggable="true" ondragstart="drag(event)" />
			</div>
			<div class="material2 mate">
				<img id="mon2" class ="su1" width="180" height="280" src="img/pa.png" draggable="true" ondragstart="drag(event)" />
			</div>
		</div>
		<div class="material_sub">
			<div class="material3 mate">
				<img id="mon3" class ="su1" width="180" height="280" src="img/mu.png" draggable="true" ondragstart="drag(event)" />
			</div> 
			<div class="material4 mate">
				<img id="mon4" class ="su1" width="180" height="280" src="img/ru.png" draggable="true" ondragstart="drag(event)" />
			</div>
		</div>
	</div>
</div>

<div class="pot_wrap">
	<div class="pot_sub1">
	

		<div class="qw11 pot1 pot" id="y1" onclick="setWater(this);" ondrop="drop(event)"  ondragover="dragEnter(event)">1</div>
		<div class="qw11 pot2 pot" id="y1" onclick="setWater(this);" ondrop="drop(event)"  ondragover="dragEnter(event)">2</div>
	</div>
	<div class="pot_sub2">
		<div class="qw11 pot3 pot" id="y1" onclick="setWater(this);" ondrop="drop(event)"  ondragover="dragEnter(event)">3</div>
		<div class="qw11 pot4 pot" id="y1" onclick="setWater(this);" ondrop="drop(event)"  ondragover="dragEnter(event)">4</div>
	</div>
</div>


			<div onclick="setCursor()" >
				<img src="img/pngwing.png" class="img_ju">
			</div>

</div>

    <div class="circle"></div>


	
</body>
</html>