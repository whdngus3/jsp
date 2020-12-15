<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<%
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	request.setAttribute("add",num1+num2);
	request.setAttribute("min",num1-num2);
	request.setAttribute("mul",num1*num2);
	request.setAttribute("div",num1/num2);
	RequestDispatcher rd = 
		request.getRequestDispatcher("oper1Result.jsp");
	rd.forward(request, response);
%>
</body>
</html>