<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<h2>1부터 100까지 합</h2>
<!-- setAttribute전달 받은 데이터는 getAttribute읽어야 한다 -->
<%=request.getAttribute("sum") %><p>
<!-- EL은 $와 중괄호({})로 처리 -->
${sum }\\
</body>
</html>