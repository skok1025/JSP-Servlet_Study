<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String agree = request.getParameter("agree");
	String result = null;
	if(agree.equals("yes")){
		String id = (String) session.getAttribute("id");
		String password = (String) session.getAttribute("password");
		String name = (String) session.getAttribute("name");
		PrintWriter writer = null;
		try{
			String filepath = application.getRealPath("/WEB-INF/"+id+".txt");
			writer = new PrintWriter(filepath);
			writer.println("아이디: "+id);
			writer.println("패스워드: "+password);
			writer.println("이름: "+name);
			result = "SUCCESS";
		} catch (IOException ioe){
			result = "FAIL";
		}
		finally{
			try{
				writer.close();
			} catch(Exception e){
				
			}
		}
	}
	else{
		result = "FAIL";
	}
	session.invalidate();
	response.sendRedirect("Result.jsp?result="+result);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>