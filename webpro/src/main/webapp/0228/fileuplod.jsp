<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
h1{
background: #32A4FF;
color: #fff;
}
p{
font-size: 20px;
}
</style>

</head>
<body>

<h1> JSP:Java Server page</h1>
<% 

request.setCharacterEncoding("UTF-8");
String userName = request.getParameter("name");
String userId = request.getParameter("id");
String userFile = request.getParameter("file");
String no = request.getParameter("no");

out.print("<p>이름"+userName+"</p>");
out.print("<p>아이디"+userId+"</p>");
out.print("<p>첨부파일"+userFile+"</p>");
out.print("<p>번호"+no+"</p>");

%>

</body>
</html>