<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<c:set var="date" value="<%=new Date() %>"></c:set>
<h2>시간</h2>
서울 : <fmt:formatDate value="${date }" type="both"/><br>
<fmt:timeZone value="Asia/Hong_Kong">
홍콩 : <fmt:formatDate value="${date }" type="both"/><br>
</fmt:timeZone>
<fmt:setTimeZone value="Europe/London"/>
영국 : <fmt:formatDate value="${date }" type="both"/><br>
<fmt:setTimeZone value="America/New_York"/>
미국 : <fmt:formatDate value="${date }" type="both"/><br>
</body>
</html>