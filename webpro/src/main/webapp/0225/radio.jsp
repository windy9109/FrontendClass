<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JSP: Java Server Page</h1>
	
	<p>
	//클라이언트 전송시
	//from에서 입력또는 선택한 값을 가져온다
	</p>
	
	<%
		request.setCharacterEncoding("utf-8"); //선언해야 post방식 글씨가 안깨짐
		String user = request.getParameter("gender");
		out.print("<strong>선택한 값: "+user+"</strong>");
	%>
	
	
	
</body>
</html>