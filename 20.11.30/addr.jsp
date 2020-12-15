<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>이름과 주소</h2>
<form action="addrResult.jsp">
<table>
	<tr><th>이름</th><td><input type="text" name="name" required="required"></td></tr>
	<tr><th>주소</th><td><input type="text"name="addr" required="required"></td></tr>
	<tr><th colspan="2"><input type="submit"></th></tr>
</table>
</form>
</body>
</html>