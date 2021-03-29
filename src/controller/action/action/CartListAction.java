package controller.action.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CartDao;
import Model.Cart;
import Model.Member;

public class CartListAction implements Action {

  @Override
  public void execute(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {

    HttpSession session = request.getSession();
    String login=(String)session.getAttribute("login");
    String id=request.getParameter("id");
    String url = "Cart.jsp?id="+login;
    if (login == null) {
      url = "projectServlet?command=login_form";
    } else {
      CartDao cartDao = CartDao.getInstance();
      ArrayList<Cart> cartList = cartDao.listCart(login);

      int totalPrice = 0;
      for (Cart cart : cartList) {
        totalPrice += cart.getPrice2() * cart.getQuantity();
      }

      request.setAttribute("cartList", cartList);
      request.setAttribute("totalPrice", totalPrice);
    }
    request.getRequestDispatcher(url).forward(request, response);
  }
}
