<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<h2>좋아하는 동물</h2>
${paramValues.pet[0] } ${paramValues.pet[1] } 
${paramValues.pet[2] } ${paramValues.pet[3] } <p>
<%
	String[] pets = request.getParameterValues("pet");
	if (pets==null) out.println("데이터가 없습니다");
	else 
		for(int i=0;i< pets.length;i++) {
			out.println(pets[i]+" ");
		}
%>
</body>
</html>