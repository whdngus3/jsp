<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<%
	int sum = 0;
	for (int i=1; i<=100; i++) {
		sum += i;
	}
	//       받는 쪽에서 사용하는 이름  변수
	request.setAttribute("sum", sum);
	RequestDispatcher rd = 
		request.getRequestDispatcher("hundredResult.jsp");
	rd.forward(request, response);
%>

</body>
</html>