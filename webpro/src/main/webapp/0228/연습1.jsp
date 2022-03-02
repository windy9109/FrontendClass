<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



<% 


request.setCharacterEncoding("Utf-8");
String userId = request.getParameter("id");
String userPass = request.getParameter("mail");
String userConain = request.getParameter("contain");




%>

<div>이메일</div>
<table border="1">
	<tr>
		<td>아이디</td>
		<td> <%= userId %> </td>
	</tr>
	<tr>
		<td>이메일</td>
		<td> <%= userPass %> </td>
	</tr>
	<tr>
		<td>내용</td>
		<td> <%= userConain %> </td>
	</tr>

</table>





</body>
</html>

