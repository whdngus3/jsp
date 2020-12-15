package ch03;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/Ome")
public class Ome extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] menus = request.getParameterValues("menu");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("<h2>오늘의 메뉴</h2>");
		if (menus==null)
			out.println("먹고 싶은게 없나 보다");
		else 
			for(int i =0; i < menus.length;i++) {
				if (i == menus.length - 1) // 마지막 데이터 이면
					out.println(menus[i]);
				else out.println(menus[i]+", ");
			}
		out.println("</body></html>");
		out.close();
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}