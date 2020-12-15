<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../common.css">
<style type="text/css">
	.a { background-color: yellow; }
</style>
</head><body>
<!-- forToken을 이용하여 구구단 출력 -->
<c:set var="dan" value="2,3,4,5,6,7,8,9"></c:set>
<h2>구구단</h2>
<table><tr>
<c:forTokens var="i" items="${dan }" delims=",">
	<th>${i }단</th>
</c:forTokens>
</tr><tr>
<c:forTokens var="i" items="${dan }" delims=",">
	<c:if test="${i%2 == 0 }"><td class="a"></c:if>
	<c:if test="${i%2 == 1 }"><td></c:if>
	<c:forTokens var="j" items="1,2,3,4,5,6,7,8,9" delims=",">
		${i } * ${j } = ${i*j }<br>
	</c:forTokens>
	</td>
</c:forTokens>
</tr></table>
</body>
</html>