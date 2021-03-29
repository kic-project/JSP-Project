package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.action.Action;

@WebServlet("/project/projectServlet")
public class projectServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
public String comm;

  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String command = request.getParameter("command");
	/* System.out.println("projectServlet�뿉�꽌 �슂泥��쓣 諛쏆쓬�쓣 �솗�씤 : " + command); */

    ActionFactory af = ActionFactory.getInstance();
    Action action = af.getAction(command);

    if (action != null) {
      action.execute(request, response);
    }
  }

  protected void doPost(HttpServletRequest request,
      HttpServletResponse response) throws ServletException, IOException {
    request.setCharacterEncoding("UTF-8");
    doGet(request, response);
  }
}
