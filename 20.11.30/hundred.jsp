<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<% // scriptlet 자바코드를 사용 
	int sum=0;
for(int i=1; i<=100;i++){
	sum+=i;
}
%>
<body>
<h2>1부터 100까지 합</h2>
<%=sum%>
</body>
</html>