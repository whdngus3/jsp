<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<%
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("numn2"));
	int result = 0;
	if (num1 > num2) result = num1;
	else result = num2;
%>
두수 <%=num1 %>과 <%=num2 %>중에서 <br>
큰수는 <%=result %>입니다
</body>
</html>