<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
<%  
	String deptno = request.getParameter("deptno");
	String driver = "oracle.jdbc.driver.OracleDriver"; 
	String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	String sql = "select * from dept where deptno="+deptno;
	try{Class.forName(driver);
	Connection conn = 
		DriverManager.getConnection(url,"scott","tiger");
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	while(rs.next()){
		String dname = rs.getString("dname");
		out.println("<tr><td>"+deptno+"</td>");
		out.println("<tr><td>"+rs.getString("dname")+"</td></tr>");
	}
	rs.close();stmt.close();conn.close();
	}
	catch(Exception e){
		System.out.println(e.getMessage());
	}

%>
</table>
</body>
</html>