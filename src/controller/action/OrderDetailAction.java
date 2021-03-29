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
      
      //�ֹ���ȣ�� ������.
      int oseq=Integer.parseInt(request.getParameter("oseq"));
      OrderDao orderDao = OrderDao.getInstance();
      
      //ex) �ֹ���ȣ(oseq)�� 29�� ��� ���� ������.                          result(�ֹ�����) �� 1,2 ��� ������
      ArrayList<Order> orderList = orderDao.listOrderById(login, "%", oseq);
      
      int totalPrice=0;
      for(Order ovo :orderList){//�ѿ��� ������.
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
