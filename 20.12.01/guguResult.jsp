<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">@import url("common.css");</style>
</head>
<body>
<table>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	out.print("<th>"+num+"단</th><br>");
	for(int i =0; i<10;i++){
		out.print("<tr><td>"+num+"x"+i+" = "+(num*i)+"</td></tr>");
	}
%>
</table>
</body>
</html>