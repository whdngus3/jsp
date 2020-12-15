<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<%	request.setCharacterEncoding("utf-8");
	String[] email = request.getParameterValues("email");
%>
<h2><%=request.getParameter("name")%>님 환영</h2>
암호 : <%=request.getParameter("pass") %><p>
성별 : <%=request.getParameter("gender") %><p>
메일 수신 : 
<%
	if (email==null || email.length==0) 
		out.println("메일 수신 없음");
	else for(int i=0; i< email.length;i++) {
		if (i == email.length-1) out.println(email[i]);
		else out.println(email[i]+", ");
	}
%><p>
전화 : <%=request.getParameter("tel") %><p>
취미 : <%=request.getParameter("hobby") %>
</body>
</html>