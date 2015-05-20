package net.syntex.part03;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/part03/join_demo.do")
public class JoinDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		String gender = request.getParameter("gender");
		String check_mail = request.getParameter("check_mail");
		String content = request.getParameter("content");
		
		PrintWriter out = response.getWriter();
		out.print("<html><body>");
		out.println("당신이 입력한 정보입니다.<hr>");//hr은 밑에 선 하나 만드는거
		out.println("성별 : <b>");
		out.println(gender);//가져온 gender값 출력
		out.println("</b><br> 메일 정보 수신 여부 : <b>");
		out.println(check_mail);
		out.println("<b><br>가입 인사 : <b><pre>");
		out.println(content);
		out.println("</b></pre><br><a href='javascript:history.go(-1)'>뒤로</a>");
		out.println("</body></html>");
		out.close();
		
	}

}
