package com.smarthomepage.join;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member/searchPwd.do")
public class SearchPwdController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String pwd = SearchPwdServiceImpl.getInstance().searchPwdByName(name);
		System.out.println("컨트롤러에서 받아온 pwd :" + pwd);
		request.setAttribute("pwd",pwd);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/searchPwdForm.jsp");
		dispatcher.forward(request, response);
	}
}
