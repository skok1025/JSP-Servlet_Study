<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" errorPage="DataError.jsp"%>

<!DOCTYPE html>

<%	
	int num1 = 0, num2 = 0, result = 0;
	try{
		String str1 = request.getParameter("num1");
		String str2 = request.getParameter("num2");
		num1 = Integer.parseInt(str1);
		num2 = Integer.parseInt(str2);
		result = num1 / num2;
		
	} catch(NumberFormatException e){
		RequestDispatcher dispatcher = request.getRequestDispatcher("DataError.jsp"); 
		dispatcher.forward(request, response);
	}
%>


<html>
<head>
<meta charset="EUC-KR">
<title>덧셈 프로그램</title>
</head>
<body>
	<%= num1 %>+<%= num2 %>=<%=result %>
</body>
</html>