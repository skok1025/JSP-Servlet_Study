<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isErrorPage="true" %>

<% response.setStatus(200); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ���α۸� - ����ȭ��</title>
</head>
<body>
	�߸��� �����Ͱ� �ԷµǾ����ϴ�. <br><br>
	�� ���� �޼���: <%= exception.getMessage() %> 
</body>
</html>


