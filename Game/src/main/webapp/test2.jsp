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
	 
/* 	 $(function(){
		 
	 }) */

	 var arr=[];
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
			//console.log(document.getElementById(data))
			er = document.getElementById(data);
			a1 = ev.target.closest('.pot');
			//console.log("a1:"+a1);
			qww = ev.target.closest('.pot').childNodes;
			//console.log("qww: "+qww.node);
			
/* 			for(var i=0; i<qww.length; i++){
				
				console.log(qww.nodeValue;);
			} */
			
			var arr = Array.prototype.slice.call(qww);
			console.log("arr: "+arr);

			//ev.target.closest('.pot');

			//console.log(arr[0].parentNode);
			
			//만약 이미 추가된 인스턴스라면 처음으로
 			for(var i = 0; i<arr.length; i++ ){
				if(data == arr[i].id){
					return;
				}  	
			}  
			
			
			
/* 			for(i=0; i<ev.target.closest('.pot').classList.length; i++){
				if(ev.target.closest('.pot').classList[i] == "t1"){
					console.log("성공");	
				}		
			} */
			//console.log(ev.target.closest('div'));
			
 			ev.target.closest('div').appendChild(er.cloneNode());// 다른 div태그에 img를 추가함(옮김. 드래그처리)
			
 			//var ww1 = document.getElementById(ev.target.closest('div').id);
 			//ev.target.closest('div').removeChild(arr);
 			//console.log(arr[0].parentElement);
 			
 			//만약 모든재료가 가득찼다면
 			if(arr.length >= 4 && arr[0].parentNode.id == "t1"){
					arr[0].parentNode.id ='';
 					arr[0].parentNode.style.background = 'url("img/last.png") 0% 0% / 140px 78px';
 					//arr[0].parentNode.remove();
 					//arr[0].parentNode.removeChild();
/*  				for (var i = 1; i < arr.length; i++) {
 					//pot.style.backgroundSize = "125px 75px";
 					//pot.style.backgroundPosition = "-3px -4px !important";
 					console.log(i+"번째"+arr[i]+"삭제완료");
 					arr[i].remove();
 				}  */
 				console.log(document.querySelector(arr[0].parentNode.id+" img")[i]);
 				
 				//arr[1].remove();
 				//arr[2].remove();
 				//arr[3].remove();
 				//arr[4].remove();
 				
 				if(arr.length == 0){
 					//arr[0].parentNode.appendChild("0");
 				}
				//alert("꽉찼습니다.");		
			}  
 			
			
			
		}
	</script>
	
	<!-- HTML5 API Drag and Drop END-->
	
	
	
    <script>
    var flag = false;

    
	    function setCursor(){
	        var circle = document.querySelector(".circle");
	        var img_ju = document.querySelector(".img_ju");


			       
				    document.addEventListener('mousemove',e=>{
				    	const mouseX = e.clientX;
			            const mouseY = e.clientY;
			            circle.style.left = mouseX + 'px';
			            circle.style.top = mouseY + 'px';
			            circle.style.display = "block";
			            img_ju.style.display = "none";
			           // circle.style.z-index= "99999";
			            flag = true;    
			        });
		            
		            
		            for (var j = 0; j < 4; j++) {
			        	pot = document.querySelectorAll(".pot")[j];
			        	//console.log(pot)
			        	pot.style.cursor = "pointer";	
		        }
   
	    	


    }
	    
	    

	    
	    
        function setWater(pot){

	        var circle = document.querySelector(".circle");
	        var img_ju = document.querySelector(".img_ju");
	        
        	if(flag == true ){
        		pot.style.background = "url(img/1_1.png)";
        		pot.id ='t1';
        		
    			
    			
			    document.addEventListener('mousemove',e=>{
			    	const mouseX = e.clientX;
		            const mouseY = e.clientY;
		            circle.style.left = '0px ';
		            circle.style.top = '0px ';
		            circle.style.display = "none";
		            img_ju.style.display = "block ";
		           	// circle.style.z-index= "0";
		            flag = false;    
		        });
			    
			    qww = pot.childNodes;
			    var arr = Array.prototype.slice.call(qww);
			    
			   	// qww = ev.target.closest('.pot').childNodes;
    			//var arr = Array.prototype.slice.call(qww);
    			
    			
		
			    
		
			    
			    //만약 모든재료가 가득찼다면
	 			if(arr.length >= 5){
	 				for (var i = 1; i < arr.length; i++) {
	 					arr[i].remove();
	 					pot.id ='';
	 					pot.style.background = 'url("img/last.png") 0% 0% / 140px 78px';
	 					//pot.style.backgroundSize = "125px 75px";
	 					//pot.style.backgroundPosition = "-3px -4px !important";
	 				}
					//alert("꽉찼습니다.");		
				} 
			    
        	}
        	

        
        	
 
 			
    } 
        
        

    </script>
    <style>
    .mate .su1{
       top: 0 !important;
    left: 0 !important;
    padding: 17px 25px;
    }
    
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
    z-index: 99999;
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
width: 85px;
    height: 43px;
    top: 20px;
    left: 18px;
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
	

		<div class="qw11 pot1 pot"  onclick="setWater(this);" ondrop="drop(event)"  ondragover="dragEnter(event)">1</div>
		<div class="qw11 pot2 pot"  onclick="setWater(this);" ondrop="drop(event)"  ondragover="dragEnter(event)">2</div>
	</div>
	<div class="pot_sub2">
		<div class="qw11 pot3 pot" onclick="setWater(this);" ondrop="drop(event)"  ondragover="dragEnter(event)">3</div>
		<div class="qw11 pot4 pot" onclick="setWater(this);" ondrop="drop(event)"  ondragover="dragEnter(event)">4</div>
	</div>
</div>


			<div id="setC" onclick="setCursor()" >
				<img src="img/pngwing.png" class="img_ju">
			</div>

</div>

    <div class="circle"></div>


	
</body>
</html>