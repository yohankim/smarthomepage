package net.syntex.part03;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/part03/login_demo2.do")
public class LoginDemo2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		String id = "admin";
		//입력받은 지역변수 id를 String id 에 넣겠다.
		String pwd = "pass"; 
		PrintWriter out = response.getWriter();
		if(id.equalsIgnoreCase(request.getParameter("id"))
				&& //저장되어있는 ID와 비밀번호 if문으로 제어
			pwd.equalsIgnoreCase(request.getParameter("pwd"))
				){
			RequestDispatcher dispatcher = request.getRequestDispatcher("/part02/template.jsp");
			dispatcher.forward(request, response);
			
		/*//PrintWriter는 브라우저에 뜬다.
		out.println("<html><body>");
		out.println("당신이 입력한 정보입니다.<br/>");
		out.println("아 이 디 :");
		out.println(id);
		out.println("<br/> 비밀번호 :");
		out.println(pwd);
		//자바 스크립트로 이전 페이지로 이동하는 링크를 만들어 줌.
		out.println("<br><a href='javascript:history.go(-1)'>뒤로</a>");
		out.println("</body></html>");//닫아줘야함
		out.close();*/
		}else{
			RequestDispatcher dispatcher = request.getRequestDispatcher("/part03/login_fail.jsp");
			dispatcher.forward(request, response);
		}
	}
}
