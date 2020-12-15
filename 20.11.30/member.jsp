<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<style type="text/css">@import url("common.css");</style>
<title>Insert title here</title>
<script type="text/javascript">
	function chk() {
		if (frm.pass.value != frm.passConfirm.value) {
			alert("암호와 암호 확인이 다릅니다");
			frm.pass.focus(); 
			frm.pass.value="";
			return false;
		}
	}
</script></head><body>
<h2>회원 등록</h2>
<form action="memberResult.jsp" method="post" name="frm" 
	onsubmit="return chk()">
<table>
	<tr><th>이름</th><td><input type="text" name="name" 
		required="required" autofocus="autofocus"></td></tr>
	<tr><th>암호</th><td><input type="password" name="pass" 
		required="required" ></td></tr>
	<tr><th>암호확인</th><td><input type="password" name="passConfirm" 
		required="required" ></td></tr>	
	<tr><th>성별</th><td><label for="g1">남자</label>
		<input type="radio" name="gender" id="g1" value="남자"><br>
		<label for="g2">여자</label> <input type="radio" 
			name="gender" id="g2" checked="checked" value="여자"></td></tr>	
	<tr><th>메일수신</th><td><label for="e1">공고</label>
		<input type="checkbox" name="email" value="공고" id="e1"><br>
		<label for="e2">광고</label>
		<input type="checkbox" name="email" value="광고" id="e2"><br>
		<label for="e3">기타</label> <input type="checkbox" 
			name="email" value="기타" id="e3"></td></tr>
	<tr><th>전화</th><td><input type="tel" name="tel" required="required"
		placeholder="010-1111-1111" pattern="\d{3}-\d{3,4}-\d{4}"
			title="010-xxx-xxxx형식을 맞추세요"></td></tr>
	<tr><th>취미</th><td><select name="hobby">
		<option>졸기<option>웃기<option>놀기<option>침뱉기<option>기타
	</select></td></tr>
	<tr><th colspan="2"><input type="submit"></th></tr>
</table>
</form>
</body>
</html>