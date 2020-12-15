<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<%-- <fmt:setLocale value="en_us"/> --%>
<%-- <fmt:setLocale value="ja_jp"/> --%>
<fmt:setLocale value="ko_kr"/>
<fmt:setBundle basename="intro"/>
<h2><fmt:message key="TITLE"></fmt:message></h2>
<fmt:message key="GREETING"></fmt:message><p>
<fmt:message key="BODY"></fmt:message><p>
<fmt:message key="COMPANY_NAME"></fmt:message><p>
</body>
</html>