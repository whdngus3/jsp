<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
	<h2>사칙 연산 결과</h2>
<%	try {
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		out.println(num1+" + "+num2+" = "+(num1+num2)+"<p>");
		out.println(num1+" - "+num2+" = "+(num1-num2)+"<p>");
		out.println(num1+" * "+num2+" = "+(num1*num2)+"<p>");
		out.println(num1+" / "+num2+" = "+(num1/num2)+"<p>");		
	}catch (ArithmeticException e) {
		out.println("0으로 못 나눠");
	}catch (NumberFormatException e) {
		out.println("숫자가 아닙니다");
	}
%>
</body>
</html>