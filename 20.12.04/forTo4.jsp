<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<c:set var="color" value="red,orange,yellow,green,blue,navy,violet"></c:set>
<c:set var="num" value="1,2,3,4,5,6,7"></c:set>
<c:forTokens var="col" items="${color }" delims=",">
	<c:forTokens var="n" items="${num }" delims=",">
		<font size="${n}" color="${col}">야호 </font>
	</c:forTokens><br>
</c:forTokens>
<c:forTokens var="col" items="${color }" delims="," varStatus="st">
	<font size="${st.count}" color="${col}">야호 </font>
</c:forTokens><br>
<c:forTokens var="n" items="${num }" delims=",">
	<c:forTokens var="col" items="${color }" delims=",">	
		<font size="${n}" color="${col}">야호 </font>
	</c:forTokens><br>
</c:forTokens>
</body>
</html>