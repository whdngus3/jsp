<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<% 
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
%>
<!-- catch 에러(예외)가 발생하면 그 에러 내용을 변수(e)에 저장 -->
<c:catch var="e">
	<%=num1%> / <%=num2 %> = <%=(num1/num2) %>
</c:catch>
<c:if test="${e != null }">
	<!-- 에러가 있으면 --> <br>
	에러 메세지 : ${e.message }
</c:if>
</body>
</html>