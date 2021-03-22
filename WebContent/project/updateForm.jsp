<%@page import="Model.Member"%>
<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%-- /WebContent/model1/member/updateForm.jsp
   1. id 파라미터 
   2. 로그인상태 검증.
            로그아웃상태 : 로그인이 필요합니다. 메세지 출력하고, loginForm.jsp 페이지 이동
   3. 로그인 상태
      3-1 : id 파라미터정보와 login 정보를 비교해서 다르면
                         자신의 정보만 수정 가능합니다. 메세지 출력. info.jsp 페이지 이동.
      3-2 : id 파라미터정보와 login 정보를 비교하여 다르지만 login이  관리자인 경우
                     와   id와 로그인 정보가 같은 경우 화면에 내용 출력하기
           MemberDao().selectOne(id) 메서드를 이용하여 db 내용 조회하기
   4. id에 해당하는 회원의 정보를 db에서 조회 화면 출력 
--%>
<%
	String login = (String) session.getAttribute("login");
String id = request.getParameter("id");
if (login == null || login.trim().equals("")) {
%>
<script type="text/javascript">
        alert("로그인이 필요합니다.");
        location.href="loginForm.jsp";
    </script>
<%
	} else if (!login.equals("admin") && !login.equals(id)) {
%>
<script type="text/javascript">
        alert("자신의 정보만 수정이 가능합니다.");
        location.href="memberInfo.jsp?id=<%=login%>
	";
</script>
<%
	} else {
Member mem = new MemberDao().selectOne(id);
%>
<!DOCTYPE html><html><head><meta charset="EUC-KR">
<title>회원 정보 수정</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/project/css/main.css">
<script>
function input_check(f){
<%if(!login.equals("admin")){%>
if(f.pass.value==""){
	alert("비밀번호를 입력하세요");
	f.pass.focus();
	return false;
	}
<%}%>
return true;
}
function passchg_winopen(){
	var op="width=500, height=230, left=50, top=150";
	open("passwordForm.jsp","",op);
}
function win_upload(){
	var op="width=500, height=150, left=50, top=150";
	open("pictureimgForm.jsp","",op);
}
</script>
</head><body>
	<form action="update.jsp" name="f" method="post"
		onsubmit="return input_check(this)">
		<input type="hidden" name="picture" >
		<table style="width:80%; margin: auto;"><caption>MODEL1 회원 정보 수정</caption>
			<tr><td rowspan="5" valign="bottom"><img
					src="img/<%=mem.getPicture()%>" width="100" height="120" id="pic"><br>
					<font size="1"><a href="javascript:win_upload()">사진수정</a></font></td>
				<td>아이디</td>
				<td><input type="hidden" name="id" value="<%=mem.getId() %>"><%=mem.getId() %></td>
			</tr><tr><td>비밀번호</td>
				<td><input type="password" name="pass"></td></tr>
			<tr><td>이름</td>
				<td><input type="hidden" name="name" value="<%=mem.getId() %>"><%=mem.getName() %></td>	</tr>
			<tr>
				<td>전화번호</td>
				<td colspan="2"><input type="text" name="tel" value="<%=mem.getTel() %>"
					></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td colspan="2"><input type="text" name="email" value="<%=mem.getEmail() %>"
					></td>
			</tr>
			<tr>
				<td>주소</td>
				<td colspan="2"><input type="text" name="address" value="<%=mem.getAddress() %>"
					></td>
			</tr>
			<tr>
				<td colspan="3"><input type="submit" value="회원수정"> <input
					type="button" value="비밀번호수정" onclick="passchg_winopen()"></td>
			</tr>
		</table>
	</form>
</body>
</html>
<%
	}
%>
