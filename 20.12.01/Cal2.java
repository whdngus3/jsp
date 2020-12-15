package ch03;

import java.io.IOException;import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Cal2")
public class Cal2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		try {
			int num1 = Integer.parseInt(request.getParameter("num1"));
			int num2 = Integer.parseInt(request.getParameter("num2"));
			out.printf("%d + %d = %d<br>",num1, num2, num1+num2);
			out.printf("%d - %d = %d<br>",num1, num2, num1-num2);
			out.printf("%d * %d = %d<br>",num1, num2, num1*num2);
			out.printf("%d / %d = %d<br>",num1, num2, num1/num2);		
		}catch (Exception e) {
			request.setAttribute("err", e.getMessage());
			RequestDispatcher rd = 
					request.getRequestDispatcher("error.jsp");
			rd.forward(request, response);
		}
		out.println("</body></html>");
		out.close();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
