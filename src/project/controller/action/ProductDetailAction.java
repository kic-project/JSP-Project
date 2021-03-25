package project.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDao;
import Model.Product;

public class ProductDetailAction implements Action {

  @Override
  public void execute(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    String url="productDetail.jsp";
    
    String pseq=request.getParameter("pseq").trim();
    
    ProductDao productDao=ProductDao.getInstance();
    Product product= productDao.getProduct(pseq);
    
    request.setAttribute("product", product);
    
    RequestDispatcher dispatcher = request
        .getRequestDispatcher(url);
    dispatcher.forward(request, response);
  }
}
