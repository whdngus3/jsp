<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head>
<body>
<h2>세제곱</h2>
<u:compute end="20" var="num" start="11">
${num }의 세제곱 ${num*num*num }<br>
</u:compute>
</body>
</html>