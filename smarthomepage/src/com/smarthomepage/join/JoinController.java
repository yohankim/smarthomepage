package com.smarthomepage.join;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/join.do")//문서 자체를 노출시키면 공격자가 바로 들어갈수가 있음. 
public class JoinController extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//user(request, response);
		//System.out.println("doGet(request, response)호출");
	}//end

	public void user(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("test/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
	}
	
	}

