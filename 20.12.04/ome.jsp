<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<%
	String[] menu={"컵라면","찐라면","군라면","볶은라면"};
	request.setAttribute("menu",menu);
%>
<jsp:forward page="omeResult.jsp"></jsp:forward>
</body>
</html>