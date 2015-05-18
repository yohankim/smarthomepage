package net.syntex.part01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//덧셈 연산을 서블릿으로만 구현한 예제. 초창기 모델

@WebServlet("/part01/add_demo.do")
public class AddDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num1 = 20;
		int num2 = 10;
		int add = num1 + num2;
		PrintWriter out = response.getWriter(); 
		out.print("<html><head><title>덧셈</title></head>");
		out.print("<body>");
		out.print(num1 + "+" + num2 + "=" + add);
		out.print("</body>");
		out.print("</html>");
	}

}
