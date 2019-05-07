<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="pinfo" class="mall.PersonalInfo"></jsp:useBean>
	<jsp:setProperty property="name" name="pinfo" value="김연희"/>
	<jsp:setProperty property="gender" name="pinfo" value="여"/>
	<jsp:setProperty property="age" name="pinfo" value="29"/>
	
	이름: <jsp:getProperty property="name" name="pinfo"/> <br>
	성별: <jsp:getProperty property="gender" name="pinfo"/> <br />
	나이: <jsp:getProperty property="age" name="pinfo"/>
	

</body>
</html>