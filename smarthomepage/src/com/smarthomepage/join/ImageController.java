package com.smarthomepage.join;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.MultipartRequest;

import java.io.*;
import java.util.Date;
import java.text.SimpleDateFormat;;

@WebServlet("/member/image.do")
public class ImageController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		//10MB 제한
		int maxSize = 1024*1024*10;
		//웹서버 컨테이너 경로
		String root = request.getSession().getServletContext().getRealPath("/");
		//파일 저장 경로
		String savePath = root + "images";
		//업로드 파일명
		String uploadFile = "";
		//실제 저장할 파일명
		String newFileName = "";
		
		int read = 0;
		byte[] buf = new byte[1024];
		FileInputStream fis = null;
		FileOutputStream fos = null;
		long currentTime = System.currentTimeMillis();
		SimpleDateFormat simple = new SimpleDateFormat("yyyyMMddHHmmss");
		
		try{
			MultipartRequest multi = new MultipartRequest(
					request, savePath, maxSize, "UTF-8", new DefaultFileRenamePolicy());
			
			String title = multi.getParameter("title");
			//파일 업로드
			uploadFile = multi.getFilesystemName("imageFile");
			//"imageFile"는 image.jsp에서 name과 일치해야 한다.
			System.out.println("업로드 파일명 :" + uploadFile);
			System.out.println("저장경로 보기 :" + savePath + File.separator + uploadFile);
			//실제 저장할 파일명 (ex : 20150602031430.zip) 파일의 유일한 이름값 연월일시분초
			newFileName = simple.format(new Date(currentTime)) + "." + uploadFile.substring(uploadFile.lastIndexOf(".")+1);
			//업로드된 파일 객체 생성
			File oldFile = new File(savePath + File.separator + uploadFile);
			File newFile = new File(savePath + File.separator + uploadFile);
			
			newFileName = newFile.getName();
		}catch(Exception ex){
			ex.printStackTrace();
			System.out.println("ImageController에서 에러가 남.");
		}
		request.setAttribute("imageName", newFileName);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/image.jsp");
		dispatcher.forward(request, response);
	}

}
