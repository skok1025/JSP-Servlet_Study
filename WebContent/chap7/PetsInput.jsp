<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://hanb.co.kr/brain07/math-functions.tld" prefix="m" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="PetsResult.jsp">

		아이디: <input type="text" name="ID" /> <br />
		<br /> <br /> <input type="text" name="name" /> <br /> <br /> 개<input
			type="checkbox" name="ANIMAL" value="개"> 고양이<input
			type="checkbox" name="ANIMAL" value="고양이"> 금붕어<input
			type="checkbox" name="ANIMAL" value="금붕어"> <input
			type="reset" value="취소" /> <input type="submit" value="확인" />
	</form>

	<br /> ${header["User-Agent"] }
	<br /> ${headerValues["User-data"][1] }
	<br /> ${cookie["CART"]["maxAge"] }

	${m:squareroot(4)}
	
	
</body>
</html>