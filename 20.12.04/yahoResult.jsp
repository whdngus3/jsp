<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<c:forEach var="color" items="${list }">
	<c:forEach var="i" begin="1" end="7">
		<font size="${i }" color="${color }">
			야호 
		</font>
	</c:forEach>
	<br>
</c:forEach>
<c:forEach var="i" begin="1" end="7">
	<c:forEach var="color" items="${list }">	
		<font size="${i }" color="${color }">
			야호 
		</font>
	</c:forEach>
	<br>
</c:forEach>
<c:forEach var="color" items="${list }" varStatus="v">
	<font size="${v.count}" color="${color }">
			야호 
		</font>
</c:forEach>
</body>
</html>