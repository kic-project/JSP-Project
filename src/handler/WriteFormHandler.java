package handler;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;

public class WriteFormHandler implements CommandHandler{
	public String process(HttpServletRequest req, HttpServletResponse res){
		
		req.setAttribute("info",  "writeForm �Դϴ�.");
		return "/project/view/board/writeForm.jsp";
	}
}
