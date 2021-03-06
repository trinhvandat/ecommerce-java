package StaffCtrl.Product;

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

import Model.Category;
import Model.Product;
@WebServlet(urlPatterns = {"/EditProduct"})
public class EditProduct extends HttpServlet{
private static final long serialVersionUID = 1741539813835698457L;
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/View/Staff/Product/EditProduct.jsp");
		res.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("utf-8");
		Category cate = new Category();
		List<Category> list = new ArrayList<>();
		try {
			list = cate.showCate();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}			
		req.setAttribute("category", list);
		rd.include(req, res);
	}
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/View/Staff/Product/EditProduct.jsp");
		res.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("utf-8");
		
		String id =  req.getParameter("idPro");
		int idPro = Integer.parseInt(id);
		
		String namePro = req.getParameter("namePro").trim();
		
		String price = req.getParameter("pricePro").trim();	
		int pricePro = Integer.parseInt(price);
		String nameCate =req.getParameter("nameCate").trim();
		String descript = req.getParameter("descript").trim();
		String imgPro = req.getParameter("imgPro").trim();
		
		Product product = new Product(namePro, pricePro, nameCate, descript, imgPro);

		try {
			product.EditPro(idPro, namePro, pricePro, nameCate,descript, imgPro );
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	//	res.sendRedirect("http://localhost:8080/Food_Shop/ManageCate");
		rd.include(req, res);	
		res.sendRedirect("http://localhost:8080/Food_Shop/ManageProduct");
	}
}
