<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 가입</title>
</head>
<body>
	개인 정보를 입력하세요.
	<form action="Agreement.jsp" method="post">
		아이디 : <input type="text" name="id" /> <br />
		패스워드 : <input type="password" name="password" /> <br />
		이름 : <input type="text" name="name" /> <br />
		<input type="submit" value="확인" />
	</form>
</body>
</html>