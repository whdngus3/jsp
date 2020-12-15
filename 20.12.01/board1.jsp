<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="common.css">
</head><body>
<form action="board1Result.jsp">
<table>
	<tr><th>제목</th><td><input type="text" name="title" 
		required="required" autofocus="autofocus"></td></tr>
	<tr><th>작성자</th><td><input type="text" name="writer"
		required="required"></td></tr>
	<tr><th>내용</th><td><textarea rows="5" cols="40" 
		required="required" name="content"></textarea></td></tr>
	<tr><th colspan="2"><input type="submit"></th></tr>
</table>
</form>
</body>
</html>