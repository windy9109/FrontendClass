<%@page import="kr.or.ddit.prod.vo.ProdVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

List<ProdVo> list = (List<ProdVo>)request.getAttribute("listvalue0");

%>

[
<% 
	for(int i=0; i<list.size(); i++){
		ProdVo vo = list.get(i);
		if(i>0){ out.print(","); }
	
%>
{

	"id" : "<%= vo.getProd_id() %>",
	"name" : "<%= vo.getProd_name() %>",
	"lgu" : "<%= vo.getProd_lgu() %>",
	"buyer" : "<%= vo.getProd_buyer() %>",
	"cost" : "<%= vo.getProd_cost() %>",
	"price" : "<%= vo.getProd_price() %>",
	"sale" : "<%= vo.getProd_sale() %>",
	"size" : "<%= vo.getProd_size() %>",
	"color" : "<%= vo.getProd_color() %>"
	
}
<%
}

%>
]


