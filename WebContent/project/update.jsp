<%@page import="dao.MemberDao"%>
<%@page import="Model.Member"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
String login = (String) session.getAttribute("login");
%>
<jsp:useBean id="mem" class="Model.Member" />
<jsp:setProperty property="*" name="mem" />
<%
	String msg = null;
String url = null;
MemberDao dao = new MemberDao();
Member dbMem = dao.selectOne(mem.getId());
if (!login.equals("admin") && !mem.getPass().equals(dbMem.getPass())) {
	msg = "비밀번호가 틀립니다. 확인 후 다시 거래하세요.";
	url = "updateForm.jsp?id=" + mem.getId();
} else {
	if (dao.update(mem) > 0) {
		msg = mem.getId() + "님의 회원정보가 수정되었습니다.";
		url = "main.jsp";
	} else {
		msg = mem.getId() + "님의 회원정보 수정 실패.";
		url = "updateForm.jsp?id=" + mem.getId();
	}
}
%>
<script type="text/javascript">
    alert("<%=msg%>");
    location.href="<%=url%>
	";
</script>