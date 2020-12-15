<%@page import="java.util.*,ch03.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<%	String driver = "oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
	String sql = "select * from dept order by deptno";
	try{List<Dept> list = new ArrayList<>();
		Class.forName(driver);
		Connection conn = 
			DriverManager.getConnection(url,"scott","tiger");
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		while(rs.next()) {
			Dept dept = new Dept();
			dept.setDeptno(rs.getInt(1));
			dept.setDname(rs.getString(2));
			dept.setLoc(rs.getString(3));
			list.add(dept);
		}
		request.setAttribute("list", list);
		rs.close();  stmt.close();  conn.close();
	}catch(Exception e) {	System.out.println(e.getMessage());	}
%>
<jsp:forward page="oraDeptResult.jsp"></jsp:forward>
</body>
</html>