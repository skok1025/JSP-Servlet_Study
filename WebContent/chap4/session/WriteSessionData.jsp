<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	session.setAttribute("NAME", "김지영");
	session.setAttribute("AGE", new Integer(21));
	session.setAttribute("GENDER", "여");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세션 데이터를 저장하는 JSP 페이지</title>
</head>
<body>

	세션 데이터가 저장되었습니다. <br><br>
	<a href="<%= response.encodeURL("ReadSessionData.jsp") %>">세션 데이터 읽기</a>

</body>
</html>