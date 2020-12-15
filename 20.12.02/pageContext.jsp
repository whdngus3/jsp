<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
${pageContext.request.localAddr }<p>
${pageContext.request.requestURI}<p>

${pageContext.request.requestURL }<p>
${pageContext.request.contextPath }<p>
</body>
</html>