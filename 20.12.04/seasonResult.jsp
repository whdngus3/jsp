<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
${month }월은 
<c:if test="${month==12 || month==1 || month==2 }">
	<c:if test="${month==12 }">초겨울입니다</c:if>
	<c:if test="${month==1 }">찐겨울입니다</c:if>
	<c:if test="${month==2 }">늦겨울입니다</c:if>
</c:if>
<c:if test="${month==3 or month==4 or month==5 }">
	봄입니다
</c:if>
<c:if test="${month==6 || month==7 || month==8 }">
	여름입니다
</c:if>
<c:if test="${month==9 || month==10 || month==11 }">
	가을입니다
</c:if>
</body>
</html>