<%@page import="java.util.GregorianCalendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��¥�� �ð�</title>
</head>
<body>
	<%
		GregorianCalendar now = new GregorianCalendar();
		String date = String.format("%TF",now);
		String time = String.format("%TT", now);
		
	
	%>
		������ ��¥: <%=date%> <br />
		������ �ð�: <%=time %> <br />
</body>
</html>