package com.test.chap2;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// ���� Ŭ������ JSP �������� �޸� ��ġ�Ӹ� �ƴ϶� ��� ������ �ʿ��ϴ�.
// �� ���ø����̼��� ���÷��̸�Ʈ ��ũ���� ����(web.xml - ����������) �� ����ؾ� �Ѵ�.


public class HundredServlet extends HttpServlet {

	// �ٸ� �ͼ����� �߰��� ���� ����.
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int total = 0 ;
		for(int cnt = 1; cnt <101; cnt++) {
			total += cnt;
		}
	
		PrintWriter out = resp.getWriter();
		// javax.servlet.http.HttpServletRespone �������̽� Ÿ��
		// getWriter �޼ҵ带 ȣ�� 
		
		out.println("<html>");
		out.println("<head><title>Hundred Servlet</title></head>");
		out.println("<body>");
		out.printf("1+2+...+100 = %d",total);
		out.println("</body>");
		out.println("</html>");
	}
	
}
