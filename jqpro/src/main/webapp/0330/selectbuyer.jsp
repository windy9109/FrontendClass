<%@page import="kr.or.ddit.buyer.vo.BuyerVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<% 

//서블릿에서 실행결과를 공유하여 꺼내기
BuyerVo vo = (BuyerVo)request.getAttribute("listvalue2");

%>



{
	"id" : "<%= vo.getBuyer_id() %>",
	"name" : "<%= vo.getBuyer_name() %>",
	"lgu" : "<%= vo.getBuyer_lgu() %>",
	"bank" : "<%= vo.getBuyer_bank() %>",
	"bankname" : "<%= vo.getBuyer_bankname() %>",
	"bankno" : "<%= vo.getBuyer_bankno() %>",
	"zip" : "<%= vo.getBuyer_zip() %>",
	"add1" : "<%= vo.getBuyer_add1() %>",
	"add2" : "<%= vo.getBuyer_add2() %>",
	"mail" : "<%= vo.getBuyer_mail() %>"
}
