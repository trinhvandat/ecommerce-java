package StaffCtrl.Product;

import java.io.IOException;
import java.io.PrintWriter;
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

@WebServlet(urlPatterns = {"/ManageProduct"})
public class ManageProduct extends HttpServlet{
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
			RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/View/Staff/Product/ManageProduct.jsp");
			res.setContentType("text/html;charset=UTF-8");
			req.setCharacterEncoding("utf-8");
			//deletePro
			Product pro = new Product();
			int idPro=0;
			if(req.getParameter("idP")!= null) {
			String id =  req.getParameter("idP");
			idPro = Integer.parseInt(id);
			}
			int count =0;
			String action = req.getParameter("actionP");
			if( action != null && action.equals("keyP")) {			
					try {
						count= pro.DeletePro(idPro);
					} catch (ClassNotFoundException | SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					PrintWriter pw = res.getWriter();
					res.setContentType("text/html");
					if(count == 0 ) {
					pw.write("<script>alert('Xóa thành công')</script>");
					}
			}
			//show Pro
			List<Product> list = new ArrayList<>();
			try {
				list = pro.showProduct();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}						
			req.setAttribute("product", list); // xet thuoc tinh cho req
			rd.include(req, res);
				
	}
}

