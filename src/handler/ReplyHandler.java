package handler;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

import Model.Board;
import command.CommandHandler;
import dao.BoardDao;

public class ReplyHandler implements CommandHandler{
	public String process(HttpServletRequest request, HttpServletResponse res){
		try {
			request.setCharacterEncoding("euc-kr");
		Board board=new Board();
		board.setNum(Integer.parseInt(request.getParameter("num")));
		board.setRef(Integer.parseInt(request.getParameter("ref")));
		board.setReflevel(Integer.parseInt(request.getParameter("reflevel")));
		board.setRefstep(Integer.parseInt(request.getParameter("refstep")));		
		board.setName(request.getParameter("name"));
		board.setPass(request.getParameter("pass"));
		board.setSubject(request.getParameter("subject"));
		board.setContent(request.getParameter("content"));
		board.setFile1(request.getParameter("file1"));
		
		BoardDao dao=new BoardDao();
	    dao.refstepadd(board.getRef(),board.getRefstep());
	    String msg="답변등록시 오류발생";
	    String url="replyForm?num="+board.getNum();
	    if(dao.insert(board)){
	    	msg="답변등록 완료";
	    	url="list";
	    }
	    request.setAttribute("msg", msg);
    	request.setAttribute("url", url);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
		return "/project/view/board/alert.jsp";
	}
}