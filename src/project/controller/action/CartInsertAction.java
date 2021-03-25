package project.controller.action;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import dao.CartDao;
import Model.Cart;
import Model.Member;

public class CartInsertAction implements Action {
	

  @Override
  public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String url = "projectServlet?command=cart_list";
   
   
    HttpSession session = request.getSession();
    String login=(String)session.getAttribute("login");
    
    if (login == null) {
      url = "projectServlet?command=login_form";
    } else {
      Cart cart = new Cart();
      cart.setId(login.getId());
      cart.setPseq(Integer.parseInt(request.getParameter("pseq")));
      cart.setQuantity(Integer.parseInt(request.getParameter("quantity")));
 
      CartDao cartDao = CartDao.getInstance();
      cartDao.insertCart(cart);
    }

    response.sendRedirect(url);
  }
}
