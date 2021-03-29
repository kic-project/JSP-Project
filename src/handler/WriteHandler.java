package handler;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

import Model.Board;
import command.CommandHandler;
import dao.BoardDao;

public class WriteHandler implements CommandHandler{
	public String process(HttpServletRequest request, HttpServletResponse res){
	    String uploadpath=request.getServletContext().getRealPath("/")+"project/view/board/upfile/";
	    int size=10*1024*1024;
	    MultipartRequest multi;
		try {
			multi = new MultipartRequest(request, uploadpath, size,"euc-kr");
			Board board=new Board();
	    board.setName(multi.getParameter("name"));
	    board.setPass(multi.getParameter("pass"));
	    board.setSubject(multi.getParameter("subject"));
	    board.setContent(multi.getParameter("content"));
	    board.setFile1(multi.getFilesystemName("file1"));
	    BoardDao dao=new BoardDao();
	    String msg="게시물 등록 실패";
	    String url="writeForm";
	    if(dao.insert(board)){
	    	msg="게시물 등록 성공";
	    	url="list";
	    	request.setAttribute("msg", msg);
	    	request.setAttribute("url", url);
	    }
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "/project/view/board/alert.jsp";
	}
}
