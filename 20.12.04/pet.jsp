<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<%
	Set<String> set = new HashSet<>();
	set.add("굼벵이"); set.add("애벌레");
	set.add("번데기"); set.add("구렁이");
	request.setAttribute("set", set);
%>
<jsp:forward page="petList.jsp"></jsp:forward>
</body>
</html>