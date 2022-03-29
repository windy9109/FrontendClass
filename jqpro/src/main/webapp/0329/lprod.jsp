<%@page import="kr.or.ddit.lprod.vo.LprodVo"%>
<%@page import="java.util.List"%>
<%@page import="com.ibatis.sqlmap.client.SqlMapClient"%>
<%@page import="kr.or.ddit.ibatis.config.SqlMapClientFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 

SqlMapClient client = SqlMapClientFactory.getSqlMapClient();

List<LprodVo> list = client.queryForList("lprod.selectAll");

%>

[
<% 
	for(int i=0; i<list.size(); i++){
		LprodVo vo = list.get(i);
		if(i>0){ out.print(","); }
	
%>
{
	"id" : "<%= vo.getLprod_id() %>",
	"gu" : "<%= vo.getLprod_gu() %>",
	"nm" : "<%= vo.getLprod_nm() %>"
}
<%
}

%>
]