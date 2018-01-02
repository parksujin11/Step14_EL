<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scope/test01.jsp</title>
</head>
<body>
<%
	//page 영역에 "myname" 이라는 키값으로 String type 저장하기
	pageContext.setAttribute("myName", "김구라");
	//request 영역에 "yourName" 이라는 키값으로 String type 저장
	request.setAttribute("yourName", "원숭이");
	//session 영역에 "ourName" 이라는 키값으로 String type 저장
	session.setAttribute("id", "kimgura");
	//application 영역에 "count"라는 키값으로 int type 저장
	application.setAttribute("count", 999);
%>
<p> PageContext 객체에 저장된 문자열 :
	<strong>${pageScope.myName }</strong></p>
<p> PageContext 객체에 저장된 문자열 :
	<strong>${myName }</strong></p>
	
<p> HttpServletRequest 객체에 저장된 문자열 :
	<strong>${requestScope.yourName }</strong></p>
<p> HttpServletRequest 객체에 저장된 문자열 :
	<strong>${yourName }</strong></p>	
	
<p> HttpSession 객체에 저장된 문자열 :
	<strong>${sessionScope.id }</strong></p>
<p> HttpSession 객체에 저장된 문자열 :
	<strong>${id }</strong></p>	

<p> applicationContext 객체에 저장된 숫자 :
	<strong>${applicationScope.count }</strong></p>
<p> applicationContext 객체에 저장된 문자열 :
	<strong>${count }</strong></p>	
</body>
</html>