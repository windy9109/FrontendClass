<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <script src="../js/jquery.serializejson.min.js"></script>
<title>Insert title here</title>

 <script>
	$(function() {
	//시도 찾기

 			$.ajax({
				url: '/jqpro/ZipServlet.do',
				type: 'get',
				success: function(res) {
					str ="";
					$.each(res, function(i, v) {
						str += "<option value='"+v+"'>"+v+"</option>" 
						
					})
					
					//$('#sido').html(str);
					$('#sido').html(str);
				},
				error: function(xhr) {
					alert("상태: "+xhr.status);
				},
				dataType: 'json'
				
			}) 
			
			
			
			
	  		$('#sido').on('change', function() {
				
	 			var opt = $('option:selected', this).val();
	 			
	 			$.ajax({
					url: '/jqpro/ZipServlet.do',
					type: 'post',
					data: { 'flag' : 1,
							'opt': opt },
					success: function(res) {
						str ="";
						$.each(res, function(i, v) {
							str += "<option value='"+v+"'>"+v+"</option>" 
						})
						
					
						$('#gugun').html(str);
					},
					error: function(xhr) {
						alert("상태: "+xhr.status);
					},
					dataType: 'json'
					
				}) 
				
				
			})  
			
			
			
			
	  		$('#gugun').on('change', function() {
				
	  			var opt = $('#sido option:selected').val();
	  			var opt2 = $('option:selected', this).val();
	 			
	 			
	 			$.ajax({
					url: '/jqpro/ZipServlet.do',
					type: 'post',
					data: { 'flag' : 2,
							'opt': opt,
							'opt2': opt2 },
					success: function(res) {
						str ="";
						$.each(res, function(i, v) {
							str += "<option value='"+v+"'>"+v+"</option>" 
						})
						
					
						$('#dong').html(str);
					},
					error: function(xhr) {
						alert("상태: "+xhr.status);
					},
					dataType: 'json'
					
				}) 
				
				
			})  
			
			
			
			
			
			

		
	})
	
	
	
	
 </script>

</head>
<body>

	<select id="sido">
	</select>
	
	
	
	<select id="gugun">
	</select>
	
	<select id="dong">
	</select>
	
	<div id="result"></div>
	

</body>
</html>