<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>구구단</title>
<style type="text/css">@import url("common.css");</style>
</head><body><h2>구구단</h2>
<table><tr>
<%	for(int i=2; i<=9;i++) {
		out.print("<th>"+i+"단</th>");
	}
	out.println("</tr><tr>");
	for(int i = 2; i<=9; i++) {
		out.println("<td>");
		for(int j=1;j<=9;j++) {
			out.println(i+" * "+j+" = "+i*j+"<br>");
		}
		out.println("</td>");
	}
%>
</tr></table>
</body>
</html>