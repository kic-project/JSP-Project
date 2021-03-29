package controller.action.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.OrderDao;
import Model.Member;
import Model.Order;

public class OrderListAction implements Action {

  @Override
  public void execute(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    String url = "orderList.jsp";
    
    HttpSession session = request.getSession();
    String login=(String)session.getAttribute("login");
    if (login == null) {
      url = "projectServlet?command=login_form";
    } else {
      OrderDao orderDao = OrderDao.getInstance();
      int oseq=Integer.parseInt(request.getParameter("oseq"));
      ArrayList<Order> orderList = orderDao.listOrderById(login, "1", oseq);
      
      int totalPrice=0;
      for(Order order :orderList){
        totalPrice+=order.getPrice2()*order.getQuantity();
      }
      
      request.setAttribute("orderList", orderList);
      request.setAttribute("totalPrice", totalPrice);
    }
    request.getRequestDispatcher(url).forward(request, response);
    }}
