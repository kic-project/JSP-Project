package handler;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Board;
import command.CommandHandler;
import dao.BoardDao;

public class UpdateFormHandler implements CommandHandler{
	public String process(HttpServletRequest request, HttpServletResponse res){
	    int num=Integer.parseInt(request.getParameter("num"));
	    Board board=new BoardDao().selectOne(num);
	    request.setAttribute("board", board);
		return "/project/view/board/updateForm.jsp";
	}
}