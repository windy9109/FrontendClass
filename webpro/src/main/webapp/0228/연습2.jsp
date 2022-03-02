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
String userId = request.getParameter("name");
String userAddr = request.getParameter("addr");
String userEmail = request.getParameter("email");
String usergender = request.getParameter("gender");

%>




<div>회원가입</div>

<table border="1">
	<tr>
		<td>아이디</td>
		<td> <%= userId %> </td>
	</tr>
	<tr>
		<td>주소</td>
		<td> <%= userAddr %> </td>
	</tr>
	<tr>
		<td>이메일</td>
		<td> <%= userEmail %> </td>
	</tr>
		<tr>
		<td>성별</td>
		<td> <%= usergender %> </td>
	</tr>

</table>

</body>
</html>