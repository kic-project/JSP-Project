package controller.action.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDao;
import Model.Product;

public class ProductKindAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url="productKind.jsp";
		
		String kind=request.getParameter("kind").trim();
		
		ProductDao productDao=ProductDao.getInstance();
		ArrayList<Product> productKindList= productDao.listKindProduct(kind);
		
		request.setAttribute("productKindList", productKindList);
		RequestDispatcher dispatcher = request
				.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}