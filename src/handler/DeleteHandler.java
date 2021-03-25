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
	    String msg="비밀번호가 틀렸습니다.";
	    String url="deleteForm?num="+"${num}";
	    BoardDao dao=new BoardDao();
	    Board board=dao.selectOne(num);
	    if(pass.equals(board.getPass())){
	    	if(dao.delete(num)){
	    		msg="게시글을 성공적으로 삭제하였습니다.";
	    		url="list";
	    	}else{
	    		msg="게시글을 삭제하는데 실패했습니다.";
	    		url="info?num="+num;
	    	}
	    	request.setAttribute("msg", msg);
	    	request.setAttribute("url", url);
	    }
	    request.setAttribute("info",  "writeForm 입니다.");
		return "/project/view/board/delete.jsp";
	}
}
