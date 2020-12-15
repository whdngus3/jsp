package ch03;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/Member")
public class Member extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name= request.getParameter("name");
		String id= request.getParameter("id");
		String gender= request.getParameter("sex");
		String[] email = request.getParameterValues("mail");
		String job= request.getParameter("job");
		String tel1= request.getParameter("tel1");
		String tel2= request.getParameter("tel2");
		String tel3= request.getParameter("tel3");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("<h2>"+name+"님 회원 가입 환영</h2>");
		out.println("아이디 : "+id+"<p>");
		out.println("성별 : "+gender+"<p>");
		out.println("전화 : "+tel1+tel2+tel3+"<p>");
		out.println("업무 : "+job+"<p>");
		out.println("메일수신 : ");
		if (email==null) out.println("수신 안함");
		else 
			for(int i=0; i <email.length;i++) {
				if (i == email.length-1) out.println(email[i]);
				else out.println(email[i]+",");
			}
		out.print("</body></html>");
		out.close();
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}
}