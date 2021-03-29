package controller.action.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CartDao;
import dao.OrderDao;
import Model.Cart;
import Model.Member;

public class OrderInsertAction implements Action {

  @Override
  public void execute(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    String url = "projectServlet?command=order_list";    
    
    HttpSession session = request.getSession();
    String login=(String)session.getAttribute("login");
    if (login == null) {
      url = "projectServlet?command=login_form";
    } else {
      CartDao cartDao = CartDao.getInstance();
      ArrayList<Cart> cartList = cartDao.listCart(login);//userId가 카트에 넣은 모든 값들을 가져옴.
      
      OrderDao orderDao = OrderDao.getInstance();      
      
      int maxOseq=orderDao.insertOrder(cartList, login);
      url = "projectServlet?command=order_list&oseq="+maxOseq;
    }
    response.sendRedirect(url);
  }
}
