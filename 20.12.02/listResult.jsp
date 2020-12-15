<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<h2>토끼 종류</h2>
${list[0] }, ${list[1] }, ${list[2] }, 
${list[3] }, ${list[4] }
<h2>토끼 종류</h2>
<%
	List<String> list = (List<String>)request.getAttribute("list");
	for(int i = 0; i< list.size();i++) {
		if (i == list.size()-1) out.println(list.get(i));
		else out.println(list.get(i)+", ");
	}
%>
</body>
</html>