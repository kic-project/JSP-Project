package handler;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

import Model.Board;
import command.CommandHandler;
import dao.BoardDao;

public class UpdateHandler implements CommandHandler{
	public String process(HttpServletRequest request, HttpServletResponse res){
		Board board=new Board();
	    String uploadpath=request.getServletContext().getRealPath("/")+"view/board/upfile/";
	    
	    MultipartRequest multi;
		try {
			multi = new MultipartRequest(request, uploadpath,10*1024*1024,"euc-kr");
			board.setNum(Integer.parseInt(multi.getParameter("num")));
	    board.setName(multi.getParameter("name"));
	    board.setPass(multi.getParameter("pass"));
	    board.setSubject(multi.getParameter("subject"));
	    board.setContent(multi.getParameter("content"));
	    board.setFile1(multi.getFilesystemName("file1"));
	    if(board.getFile1()==null||board.getFile1().equals("")){
	    	board.setFile1(multi.getParameter("file2"));
	    }
	    BoardDao dao=new BoardDao();
	    Board dbBoard=dao.selectOne(board.getNum());
	    String msg="��й�ȣ�� Ʋ�Ƚ��ϴ�.";
	    String url="updateForm?num="+board.getNum();
	    if(board.getPass().equals(dbBoard.getPass())){
	    	if(dao.update(board)){
	    		msg="�Խù� �����Ϸ�";
	    		url="list";
	    	}else{
	    		msg="�Խù� ���� ����";
	    	}
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