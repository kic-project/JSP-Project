package handler;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Board;
import command.CommandHandler;
import dao.BoardDao;

public class DeleteFormHandler implements CommandHandler{
	public String process(HttpServletRequest request, HttpServletResponse res){
		int num =Integer.parseInt(request.getParameter("num"));
	    request.setAttribute("num",  num);
		return "/project/view/board/deleteForm.jsp";
	}
}
