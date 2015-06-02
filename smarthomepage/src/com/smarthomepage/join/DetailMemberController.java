package com.smarthomepage.join;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//마이 페이지 폼으로 가는 길
@WebServlet("/member/mypage.do")
public class DetailMemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberBean bean = new MemberBean();
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		bean = DetailMemberServiceImpl.getInstance().getMemberInfo(id);
		request.setAttribute("name", bean.getName());
		request.setAttribute("id", bean.getId());
		request.setAttribute("age", bean.getAge());
		request.setAttribute("gender", bean.getGender());
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/mypage.jsp");
		dispatcher.forward(request, response);
	}

}
