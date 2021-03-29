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

public class OrderAllAction implements Action {

  @Override
  public void execute(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    String url = "orderpast.jsp";
    
    HttpSession session = request.getSession();
    String login=(String)session.getAttribute("login");
    if (login == null) {
      url = "projectServlet?command=login_form";
    } else {
      OrderDao orderDao = OrderDao.getInstance();
      ArrayList<Integer> oseqList = orderDao.selectSeqOrderIng(login);

      ArrayList<Order> orderList = new ArrayList<Order>();

      for (int oseq : oseqList) {
        ArrayList<Order> orderListIng = orderDao.listOrderById(login, "%", oseq);

        Order order = orderListIng.get(0);
        if (orderListIng.size() == 1) {
        	order.setPname(order.getPname());
        } else
        order.setPname(order.getPname() + " 외 " + (orderListIng.size()-1) + "건");
        System.out.println(order.getIndate());

        int totalPrice = 0;
        for (Order ovo : orderListIng) {
          totalPrice += ovo.getPrice2() * ovo.getQuantity();
        }
        order.setPrice2(totalPrice);
        orderList.add(order);
      }
      request.setAttribute("title", "총 주문 내역");
      request.setAttribute("orderList", orderList);
    }
    request.getRequestDispatcher(url).forward(request, response);
  }
}
