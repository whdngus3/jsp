<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<c:set var="date" value="<%=new Date() %>"></c:set>
<!-- MM 월,  mm 분 E는 요일 -->
날자 : <fmt:formatDate value="${date }" type="date"
	pattern="yyyy/MM/dd (E)"/><br>
<!-- a는 오전/오후 -->
시간 : <fmt:formatDate value="${date }" type="time" 
	pattern="(a) hh:mm:ss"/>
</body>
</html>