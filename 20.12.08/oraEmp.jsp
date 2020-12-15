<%@ page import="java.util.*,ch03.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
	String sql = "select * from emp";
	try {List<Emp> list=new ArrayList<>();
		Class.forName(driver);
		Connection conn = DriverManager.getConnection(url,"scott","tiger");
		Statement stmt= conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		while(rs.next()){
			Emp emp = new Emp();
			emp.setEmpno(rs.getInt(1));
			emp.setEname(rs.getString(2));
			emp.setSal(rs.getInt(6));
			list.add(emp);
		}
		request.setAttribute("list",list);
		rs.close(); stmt.close(); conn.close();
		
		
	} catch(Exception e){
		System.out.println(e.getMessage());
	}

%>
<jsp:forward page="oraEmpResult.jsp"></jsp:forward>
</body>
</html>