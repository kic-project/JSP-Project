package handler;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Board;
import command.CommandHandler;
import dao.BoardDao;

public class InfoHandler implements CommandHandler{
	public String process(HttpServletRequest request, HttpServletResponse res){

		int num=Integer.parseInt(request.getParameter("num"));
	    BoardDao dao=new BoardDao();
	    Board board=dao.selectOne(num);
	    dao.readcntadd(num);
	    
	    request.setAttribute("num", num);
		request.setAttribute("board", board);
		return "/project/view/board/info.jsp";
	}
}
