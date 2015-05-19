package net.syntex.part01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.plaf.basic.BasicInternalFrameTitlePane.RestoreAction;
import javax.xml.ws.RespectBinding;


@WebServlet("/part01/post_method.do")
public class PostMethod extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	response.setContentType("text/html; charset=UTF-8");
	PrintWriter out = response.getWriter();
	out.print("<h1>POST Method.java에서 Get 방식으로 처리됨</h1>");
	out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("<h1>POST Method.java에서 Post 방식으로 처리됨</h1>");
		out.close();
	}

}
