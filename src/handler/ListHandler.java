package handler;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Board;
import command.CommandHandler;
import dao.BoardDao;

public class ListHandler implements CommandHandler{
	public String process(HttpServletRequest request, HttpServletResponse res){
		int pageNum = 1;
		try {
			pageNum = Integer.parseInt(request.getParameter("pageNum"));
		} catch (NumberFormatException e) {
		}

		int limit = 5;
		BoardDao dao = new BoardDao();
		int boardcount = dao.boardCount();
		List<Board> list = dao.list(pageNum, limit, boardcount);
		int maxpage=(int)(boardcount/limit)+(boardcount%limit==0?0:1);
		int bottomLine=3;
		int startpage=1+(pageNum-1)/bottomLine*bottomLine;
		int endpage=startpage+bottomLine-1;
		if(endpage>maxpage) endpage=maxpage;
		int boardnum = boardcount - (pageNum - 1) * limit;
		
		request.setAttribute("boardcount", boardcount);
		request.setAttribute("boardnum", boardnum);
		request.setAttribute("startpage", startpage);
		request.setAttribute("bottomLine", bottomLine);
		request.setAttribute("endpage", endpage);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("maxpage", maxpage);
		request.setAttribute("list", list);
		return "/project/view/board/list.jsp";
	}
}
