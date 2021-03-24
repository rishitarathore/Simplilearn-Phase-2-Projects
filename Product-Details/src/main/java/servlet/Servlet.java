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

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Product p = new Product();
		
		HttpSession session = request.getSession(true);
		p.setProduct(request.getParameter("product"));
		p.setType(request.getParameter("type"));
		p.setPrice(request.getParameter("price")); 
		List<Product> list = new ArrayList<Product>();
		list.add(p);
		
		session.setAttribute("products", list);
		
		RequestDispatcher rd = request.getRequestDispatcher("Display.jsp");
		rd.forward(request, response);
		
		
	}

}
