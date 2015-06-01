package com.smarthomepage.login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/member/logout.do")
public class LogoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			HttpSession session = request.getSession();
			//세션에 담겨있는 "id"의 밸류값이 사라지면서
			// 세션이 필요한 경우에는 재로그인을 요청하게 된다.
			session.invalidate();
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/login_form.do");
			dispatcher.forward(request, response);
	}

}
