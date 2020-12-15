<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">@import url("common.css");</style>
</head><body>
<h2>연산할 숫자</h2>
<form action="oper1.jsp">
<table>
	<tr><th>첫 번째 수</th><td><input type="number"  name="num1"
		required="required" autofocus="autofocus"></td></tr>
	<tr><th>두 번째 수</th><td><input type="number" name="num2"
		required="required"></td></tr>
	<tr><th colspan="2"><input type="submit" value="확인"></th></tr>
</table>
</form>
</body>
</html>