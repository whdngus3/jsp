<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<%
	List<String> list = new ArrayList<>();
	list.add("산토끼"); list.add("판토끼"); list.add("죽은토끼"); 
	list.add("알카리토끼"); list.add("집토끼");  
	request.setAttribute("list", list);
	RequestDispatcher rd = 
		request.getRequestDispatcher("listResult.jsp");
	rd.forward(request, response);
%>
</body>
</html>