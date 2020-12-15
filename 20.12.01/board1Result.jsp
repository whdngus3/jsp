<%@page import="java.io.FileWriter"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<%
	request.setCharacterEncoding("utf-8");
	String title = request.getParameter("title");
	String writer  = request.getParameter("writer");
	String content = request.getParameter("content");
	
	Date date = new Date();
	long time = date.getTime(); // 파일명을 계속 다르게 지정하기 위해서 사용
	String fileName = time+".txt";
	String filePath = // 이클립스에 서 실제 사용하는 위치
		application.getRealPath("/WEB-INF/"+fileName);
	FileWriter fw = new FileWriter(filePath);
	String str = "제목 : "+title+"\r\n";
	str += "작성자 : "+writer+"\r\n";
	str += "내용 : "+content;
	fw.write(str);
	fw.close();
%>
입력성공
</body>
</html>