<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>1���� 100 ���� ��</title>
</head>
<body>

	<% /* ��ũ��Ʋ�� : �ڹٸ�ɹ����� �� �� �ִ� */
		int total = 0;
		for(int cnt =1; cnt<=100; cnt++){
			total += cnt;
		}
	%>
	
	1���� 100���� ���� ����? <%= total%> <br />
	
	<%
		for(int cnt = 101; cnt <=200; cnt++){
			total += cnt;
		}
	%>
	1���� 200���� ���� ����? <%=total %> <br />
	
	<%
		int cnt;
		int total2 = 0;
	
		/* cnt �� ���������̸� ǥ���Ŀ��� ���� �Ұ��� */
		for(cnt=1;cnt <=6;cnt++){
			total2 += cnt;
		}
	%>
	
	1���� <%= cnt %>������ ���� <%= total2 %> �Դϴ�.

</body>
</html>