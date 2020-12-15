<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<!-- import 현재 ip와 port번호를 가지고 시작 내부 것 사용 -->
<c:import url="gugu.jsp">
	<c:param name="num" value="7"></c:param>
</c:import>
</body>
</html>