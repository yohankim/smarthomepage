package com.smarthomepage.join;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/member/remove.do")
public class RemoveController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
	//	String id = request.getParameter("id");
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		RemoveServiceImple.getInstance().removeMember(id);
				System.out.println("서비스 단에 넘어온 아이디값 : " + id);
				System.out.println("회원 탈퇴");
				RequestDispatcher dispatcher = request.getRequestDispatcher("/views/template.jsp");
				dispatcher.forward(request, response);
	}

}
