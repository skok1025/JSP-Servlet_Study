package com.test.chap2;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 서블릿 클래스는 JSP 페이지와 달리 설치뿐만 아니라 등록 과정도 필요하다.
// 웹 어플리케이션의 디플로이먼트 디스크립터 파일(web.xml - 배포서술자) 에 등록해야 한다.


public class HundredServlet extends HttpServlet {

	// 다른 익셉션을 추가할 수는 없다.
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int total = 0 ;
		for(int cnt = 1; cnt <101; cnt++) {
			total += cnt;
		}
	
		PrintWriter out = resp.getWriter();
		// javax.servlet.http.HttpServletRespone 인터페이스 타입
		// getWriter 메소드를 호출 
		
		out.println("<html>");
		out.println("<head><title>Hundred Servlet</title></head>");
		out.println("<body>");
		out.printf("1+2+...+100 = %d",total);
		out.println("</body>");
		out.println("</html>");
	}
	
}
