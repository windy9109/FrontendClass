<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
teble{
border: 1px solid blue;
margin: 30px auto;

}
td{
width:200px;
height: 50px;

}
</style>

</head>
<body>

<%

request.setCharacterEncoding("UTF-8");
String userId = request.getParameter("id");
String userPass = request.getParameter("pass");
String userArea = request.getParameter("area");
String car = request.getParameter("car");
String[] foods = request.getParameterValues("food");

//area에는 enter기호가 \r\n- 삽입되어있다.
//브라우저에 출력할때는 <br>태그로 변경되어야한다.
userArea = userArea.replaceAll("\r", "").replaceAll("\n", "<br>");

String str="";
for(int i=0; i<foods.length; i++){
	str += foods[i] + "&nbsp;&nbsp";
}

// 출력방법1
/* out.print("<p>이름"+userId+"</p>");
out.print("<p>패스워드"+userPass+"</p>");
out.print("<p>소개<br>"+userArea+"</p>");

out.print("<table border='1'>");
out.print("<tr><td>아이디</td>");
out.print("<td>"+userId +"</td></tr>");

out.print("<tr><td>비밀번호</td>");
out.print("<td>"+userPass +"</td></tr>");

out.print("<tr><td>소개</td>");
out.print("<td>"+userArea +"</td></tr>");
out.print("</table>"); */


%>



<!-- 출력방법2 -->
<table border="1">
	<tr>
		<td>아이디</td>
		<td> <%= userId %> </td>
	</tr>
	<tr>
		<td>패스워드</td>
		<td> <%= userPass %> </td>
	</tr>
	<tr>
		<td>소개</td>
		<td> <%= userArea %> </td>
	</tr>
	<tr>
		<td>자동차</td>
		<td> <%= car %> </td>
	</tr>
	<tr>
		<td>좋아하는 음식</td>
		<td> <%= str %> </td>
	</tr>
</table>




</body>
</html>