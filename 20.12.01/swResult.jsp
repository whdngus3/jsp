<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int num = Integer.parseInt(request.getParameter("num"));

	switch (num){
	case 1: out.println("안녕하세요"); break;
	case 2: out.println("반갑습니다"); break;
	case 3: out.println("처음 뵙겠습니다"); break;
	case 4: out.println("누구세요"); break;
	case 5: out.println("꺼져"); break;
	case 6: out.println("ㅈㄲ"); break;
	}

%>
</body>
</html>