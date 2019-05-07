<%@page import="java.util.GregorianCalendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>날짜와 시각</title>
</head>
<body>
	<%
		GregorianCalendar now = new GregorianCalendar();
		String date = String.format("%TF",now);
		String time = String.format("%TT", now);
		
	
	%>
		오늘의 날짜: <%=date%> <br />
		현재의 시각: <%=time %> <br />
</body>
</html>