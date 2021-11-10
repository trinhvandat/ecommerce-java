package CustomerCtrl;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Product;

@WebServlet(urlPatterns = {"/DetailProduct"})
public class DetailProduct extends HttpServlet{
	private static final long serialVersionUID = 1741539813835698457L;
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/View/Customer/Home/DetailProduct.jsp");
		res.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("utf-8");
	
		Product pro = new Product();
		List<Product> list = new ArrayList<>();
		int idPro =0;
		if(req.getParameter("masp")!= null) {
			String id =  req.getParameter("masp");
			 idPro = Integer.parseInt(id);
		}				
				try {
					list = pro.showProductDetail(idPro);
				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		req.setAttribute("product", list);
		rd.include(req, res);
	}
}
