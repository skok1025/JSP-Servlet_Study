<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>1부터 100 까지 합</title>
</head>
<body>

	<% /* 스크립틀릿 : 자바명령문들이 들어갈 수 있다 */
		int total = 0;
		for(int cnt =1; cnt<=100; cnt++){
			total += cnt;
		}
	%>
	
	1부터 100까지 더한 값은? <%= total%> <br />
	
	<%
		for(int cnt = 101; cnt <=200; cnt++){
			total += cnt;
		}
	%>
	1부터 200까지 더한 값은? <%=total %> <br />
	
	<%
		int cnt;
		int total2 = 0;
	
		/* cnt 가 지역변수이면 표현식에서 접근 불가능 */
		for(cnt=1;cnt <=6;cnt++){
			total2 += cnt;
		}
	%>
	
	1부터 <%= cnt %>까지의 합은 <%= total2 %> 입니다.

</body>
</html>