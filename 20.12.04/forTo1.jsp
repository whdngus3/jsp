<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<c:forTokens var="animal" items="사슴,토끼.원숭이,늑대" delims=",.">
	${animal }<br>
</c:forTokens>
</body>
</html>