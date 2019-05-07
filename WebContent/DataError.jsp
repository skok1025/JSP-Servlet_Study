<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isErrorPage="true" %>

<% response.setStatus(200); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>덧셈 프로글매 - 에러화면</title>
</head>
<body>
	잘못된 데이터가 입력되었습니다. <br><br>
	상세 에러 메세지: <%= exception.getMessage() %> 
</body>
</html>


