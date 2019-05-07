<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    	int sum = 0;
    	for(int i = 1; i<=100; i++){
    		sum += i;
    	}
    	request.setAttribute("RESULT", new Integer(sum));
    	RequestDispatcher dispatcher = request.getRequestDispatcher("HundredResult.jsp");
    	dispatcher.forward(request, response);
    %>
