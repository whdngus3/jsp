<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<%	String empno = request.getParameter("empno");
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
	String sql = "select * from emp where empno="+empno;
	try {
		Class.forName(driver); // driver load
		Connection conn =      // db연결
			DriverManager.getConnection(url,"scott","tiger");
		Statement stmt = conn.createStatement(); // sql사용할 객체 생성
		// sql을 실해하여 그 결과를 rs에 저장
		ResultSet rs = stmt.executeQuery(sql);
		if (rs.next()) { // rs에 있는 데이터를 읽음
			out.println("사번 : "+empno+"<br>");
			out.println("이름 : "+rs.getString("ename")+"<br>");
			out.println("업무 : "+rs.getString("job")+"<br>");
			out.println("급여 : "+rs.getInt("sal")+"<br>");
			out.println("입사일 : "+rs.getDate("hiredate")+"<br>");
		}else out.println("없는 사원입니다");
		rs.close(); stmt.close(); conn.close();
	}catch(Exception e) {
		System.out.println(e.getMessage());
	}
%>
</body>
</html>