<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

<style>
p{
	padding: 5px;
	margin: 5px;
	
}
.p1{
	width: 70%;
	float: left;
	
}
.p2{
	width: 25%;
	float: right;
	text-align: right;
}
hr{
clear: both;
}

input[name=ready]{
height: 55px;
vertical-align: top;
}
</style>

<script>

$(function() {
	$.ajax({
		url : '<%= request.getContextPath() %>/List.do',
		type: 'get',
		success: function(res) {
			
		},
		error: function(vhr) {
			
		},
		dataType: 'json'
		
	})
})

</script>

</head>
<body>


</body>
</html>