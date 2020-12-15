<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<%
	List<String> list = new ArrayList<>();
	list.add("red"); list.add("orange"); list.add("yellow"); 
	list.add("green"); list.add("blue"); list.add("navy"); 
	list.add("violet"); 
	request.setAttribute("list", list);
%>
<jsp:forward page="yahoResult.jsp"></jsp:forward>
</body>
</html>