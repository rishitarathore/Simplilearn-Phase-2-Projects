package servlet;

import java.io.IOException;
import java.util.ArrayList;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import product.Product;

@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Servlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();

		List<Product> lists = (ArrayList<Product>) session.getAttribute("products");
		

		if (lists == null) {
			lists = new ArrayList<Product>();
		}

		Product p = new Product();

		p.setProduct(request.getParameter("product"));
		p.setType(request.getParameter("type"));
		p.setPrice(request.getParameter("price"));
		lists.add(p);

		// retrive product list from session

		// session.setAttribute("products", lists);
		// List<Product> list = new ArrayList<Product>();

		session.setAttribute("products", lists);

		RequestDispatcher rd = request.getRequestDispatcher("Display.jsp");
		rd.forward(request, response);

	}

}
