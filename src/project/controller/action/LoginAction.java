package project.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDao;
import Model.Member;

public class LoginAction implements Action {

  @Override
  public void execute(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    String url="loginForm.jsp";
    HttpSession session=request.getSession();
  
    String id=request.getParameter("id");
    String pass=request.getParameter("pass");
    Member mem=new MemberDao().selectOne(id);
       
    if(mem!=null){
      if(pass.equals(mem.getPass())){    
    	  session.setAttribute("login", id);
        url="/project/project/loginForm.jsp";
      }
    }
    
    request.getRequestDispatcher(url).forward(request, response);  
  }
}
