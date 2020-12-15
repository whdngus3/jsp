<%@page import="ch03.Emp"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">@import url("../common.css");</style>
</head><body><h2>부서 목록</h2>
<table><tr><th>부서코드</th><th>부서명</th><th>근무지</th>
	<th>수정</th><th>삭제</th></tr>
<%  List<Emp> list=(List<Emp>)request.getAttribute("list");
	for(Emp emp:list) { %>
		<tr><td><%=emp.getEmpno()%></td>
		<td><%=emp.getEname()%></td>
		<td><%=emp.getSal()%></td>
		<td><a>수정</a></td>
		<td><a>삭제</a></td>
<%	} %>
<a>부서정보 입력</a>
</table>
</body>
</html>