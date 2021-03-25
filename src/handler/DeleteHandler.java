package handler;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Board;
import command.CommandHandler;
import dao.BoardDao;

public class DeleteHandler implements CommandHandler{
	public String process(HttpServletRequest request, HttpServletResponse res){
		int num =Integer.parseInt(request.getParameter("num"));
		String pass=request.getParameter("pass");
	    String msg="��й�ȣ�� Ʋ�Ƚ��ϴ�.";
	    String url="deleteForm?num="+"${num}";
	    BoardDao dao=new BoardDao();
	    Board board=dao.selectOne(num);
	    if(pass.equals(board.getPass())){
	    	if(dao.delete(num)){
	    		msg="�Խñ��� ���������� �����Ͽ����ϴ�.";
	    		url="list";
	    	}else{
	    		msg="�Խñ��� �����ϴµ� �����߽��ϴ�.";
	    		url="info?num="+num;
	    	}
	    	request.setAttribute("msg", msg);
	    	request.setAttribute("url", url);
	    }
	    request.setAttribute("info",  "writeForm �Դϴ�.");
		return "/project/view/board/delete.jsp";
	}
}
