<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<h2>두수 비교</h2>
X = ${param.num1 }, Y = ${param.num2 }<p>
X가 크냐 ? ${param.num1 - param.num2 > 0 }<p>
Y가 크냐 ? ${param.num2 - param.num1 > 0 }<p>
X와 Y가 같으냐 ? ${param.num1 == param.num2?"예":"아니오" }<p>
X가 0보다 크냐 ? ${param.num1 > 0 }
</body>
</html>