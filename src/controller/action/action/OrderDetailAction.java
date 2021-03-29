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

public class OrderDetailAction implements Action {

  @Override
  public void execute(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    String url = "orderDetail.jsp";
    
    HttpSession session = request.getSession();
    String login=(String)session.getAttribute("login");
    if (login == null) {
      url = "projectServlet?command=login_form";
    } else {
      
      //주문번호를 가져옴.
      int oseq=Integer.parseInt(request.getParameter("oseq"));
      OrderDao orderDao = OrderDao.getInstance();
      
      //ex) 주문번호(oseq)가 29인 모든 값을 가져옴.                          result(주문상태) 가 1,2 모두 가져옴
      ArrayList<Order> orderList = orderDao.listOrderById(login, "%", oseq);
      
      int totalPrice=0;
      for(Order ovo :orderList){//한열씩 가져옴.
        totalPrice+=ovo.getPrice2()*ovo.getQuantity();
      }
      request.setAttribute("orderDetail", orderList.get(0));  
      request.setAttribute("orderList", orderList);
      request.setAttribute("totalPrice", totalPrice);
      System.out.println(orderList);
    }
    request.getRequestDispatcher(url).forward(request, response);
  }    
}
