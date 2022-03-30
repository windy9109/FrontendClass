<%@page import="kr.or.ddit.buyer.vo.BuyerVo"%>
<%@page import="java.util.List"%>
<%@page import="com.ibatis.sqlmap.client.SqlMapClient"%>
<%@page import="kr.or.ddit.ibatis.config.SqlMapClientFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

//SqlMapClient client = SqlMapClientFactory.getSqlMapClient();
List<BuyerVo> list = (List<BuyerVo>)request.getAttribute("listvalue");
//List<BuyerVo> list = client.queryForList("buyer.selectAll");
//BuyerVo list2 = client.queryForObject("buyer.selectBuyer");

%>


<%-- jsp 주석 --%>

[
<% 
	for(int i=0; i<list.size(); i++){
		BuyerVo vo = list.get(i);
		if(i>0){ out.print(","); }
	
%>
{
	"id" : "<%= vo.getBuyer_id() %>",
	"name" : "<%= vo.getBuyer_name() %>",
	"lgu" : "<%= vo.getBuyer_lgu() %>",
	"bank" : "<%= vo.getBuyer_bank() %>",
	"bankname" : "<%= vo.getBuyer_bankname() %>",
	"zip" : "<%= vo.getBuyer_zip() %>",
	"add1" : "<%= vo.getBuyer_add1() %>",
	"add2" : "<%= vo.getBuyer_add2() %>",
	"mail" : "<%= vo.getBuyer_mail() %>"
}
<%
}

%>
]

