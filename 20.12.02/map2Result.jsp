<%@page import="java.util.stream.Stream"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<h2>개인별 취미</h2>
kim : ${hobby.kim }<p>
lee : ${hobby.lee }<p>
choi : ${hobby.choi }<p>
park : ${hobby.park }
<h2>개인별 취미</h2>
<%	Map<String, String> hobby = 
		(Map<String, String>)request.getAttribute("hobby");
	Set<String> set = hobby.keySet();
	for (String key:set) {
		out.println(key+" : "+hobby.get(key)+"<p>");
	}
	final JspWriter out2 = out;
	out.println("<h2>개인별 취미</h2>");
	Stream<String> map = hobby.keySet().stream();
	map.forEach(k -> {
		try{
			out2.println(k+" : "+hobby.get(k)+"<br>");
		}catch(Exception e){}});

%>
</body>
</html>