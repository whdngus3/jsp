<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<%                         // 쿠키명   쿠키값
	Cookie cook = new Cookie("name","길동");
	// pc(client)에 쿠키 저장
	response.addCookie(cook);
%>
<h2>쿠키를 저장했습니다</h2>
<!-- a태그 anchor의 약자 -->
<a href="useCookie.jsp">쿠키 보기</a>
</body>
</html>