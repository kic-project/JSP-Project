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
	msg = "��й�ȣ�� Ʋ���ϴ�. Ȯ�� �� �ٽ� �ŷ��ϼ���.";
	url = "updateForm.jsp?id=" + mem.getId();
} else {
	if (dao.update(mem) > 0) {
		msg = mem.getId() + "���� ȸ�������� �����Ǿ����ϴ�.";
		url = "main.jsp";
	} else {
		msg = mem.getId() + "���� ȸ������ ���� ����.";
		url = "updateForm.jsp?id=" + mem.getId();
	}
}
%>
<script type="text/javascript">
    alert("<%=msg%>");
    location.href="<%=url%>
	";
</script>