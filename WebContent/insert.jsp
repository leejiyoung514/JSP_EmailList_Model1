<%@page import="java.util.List"%>
<%@page import="com.javaex.dao.EmaillistDao"%>
<%@page import="com.javaex.vo.EmailVO"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%
//한글깨짐처리
    request.setCharacterEncoding("UTF-8");
//값을 넘겨받음
	String lastName = request.getParameter("ln");
	String firstName = request.getParameter("fn");
	String email = request.getParameter("email");
//값을 제대로 넘겨받았는지 확인 
	System.out.println(lastName);
	System.out.println(firstName);
	System.out.println(email);
//vo
 
  EmailVO vo=new EmailVO(lastName, firstName, email);
  EmaillistDao dao=new EmaillistDao();	
  dao.insert(vo);
  
   response.sendRedirect("list.jsp"); 
%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body{
	font-family: 돋움, Dotum, Helvetica, sans-serif;
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>