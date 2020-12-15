<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="common.css">
</head><body>
<h2>애완 동물을 선택하세요</h2>
<form action="petResult.jsp">
<table>
	<tr><th><label for="p1">굼벵이</label> <input type="checkbox"
	 	name="pet" id="p1" value="굼벵이"><br>
	 	<label for="p2">구렁이</label> <input type="checkbox"
	 	name="pet" id="p2" value="구렁이"><br>
	 	<label for="p3">팔렁이</label> <input type="checkbox"
	 	name="pet" id="p3" value="팔렁이"><br>
	 	<label for="p4">고슴도치</label> <input type="checkbox"
	 	name="pet" id="p4" value="고슴도치"></th></tr>
	 <tr><th><input type="submit"></th></tr>
</table>
</form>
</body>
</html>