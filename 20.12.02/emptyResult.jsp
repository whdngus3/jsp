<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<h2>인사</h2>
<!-- empty : 값이 없으면
	 not empty : 값이 있으면 -->
${empty param.name1?"손":param.name1 }님 안녕하세요<p>
${not empty param.name2?param.name2:"손" }님 안녕하세요
</body>
</html>