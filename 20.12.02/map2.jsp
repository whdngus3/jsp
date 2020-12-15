<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<%
	Map<String, String> hobby = new HashMap<>();
	hobby.put("kim", "침뱉기"); hobby.put("lee", "졸기");
	hobby.put("choi", "놀기"); hobby.put("park", "울기");
	request.setAttribute("hobby", hobby);
	RequestDispatcher rd = 
		request.getRequestDispatcher("map2Result.jsp");
	rd.forward(request, response);
%>
</body>
</html>