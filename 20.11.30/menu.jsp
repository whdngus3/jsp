<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<h2>메뉴를 선택</h2>
<form action="menuResult.jsp">
	<fieldset><legend>선택</legend>
		<select name="menu">
			<option value="http://www.daum.net">이전</option>
			<option value="http://www.naver.com">네이놈</option>
			<option value="http://www.google.com">가글</option>
			<option value="http://www.choongang.co.kr">중앙</option>
			<option value="gugu.jsp">구구단</option>
			<option value="color.jsp">배경색</option>
		</select><p>
		<input type="submit">
	</fieldset>
</form>
</body>
</html>