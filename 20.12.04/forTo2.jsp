<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<c:set var="ani" value="토끼,여우,늑대,사슴"></c:set>
<h2>사자 생일에 초대된 동물</h2>
				         <!--   데이터                             구분자     --> 
<c:forTokens var="animal" items="${ani }" delims=",.">
	${animal }<br>
</c:forTokens>
</body>
</html>