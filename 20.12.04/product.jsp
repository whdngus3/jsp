<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<c:set var="code" value="${param.code }" scope="request"></c:set>
<c:set var="name" value="${param.name }" scope="request"></c:set>
<c:set var="price" value="${param.price }" scope="request"></c:set>
<jsp:forward page="productResult.jsp"></jsp:forward>

</body>
</html>