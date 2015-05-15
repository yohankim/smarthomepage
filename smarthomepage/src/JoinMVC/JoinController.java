package JoinMVC;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/join.do")
public class JoinController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
      public JoinController() {
        super();
  
    }

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//user(request, response);
		//System.out.println("doGet(request, response)호출");
	}//end

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//user(request, response);
		//System.out.println("doPost(request, response)호출");
	}//end

	public void user(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("test/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
	}
	
	}

