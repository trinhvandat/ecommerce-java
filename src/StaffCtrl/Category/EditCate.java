package StaffCtrl.Category;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Category;
import sun.font.Script;
@WebServlet(urlPatterns = {"/EditCate"})
public class EditCate extends HttpServlet{
	private static final long serialVersionUID = 1741539813835698457L;
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/View/Staff/Category/EditCate.jsp");
		res.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("utf-8");
		rd.include(req, res);
	}
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/View/Staff/Category/EditCate.jsp");
		res.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("utf-8");
		
		String id =  req.getParameter("idCate");
		int idCate = Integer.parseInt(id);
		String nameCate = req.getParameter("nameCate").trim();
		String descript = req.getParameter("descript").trim();		
		Category cate = new Category(nameCate,descript);	
		rd.include(req, res);	
		try {
			cate.EditCate(idCate, nameCate, descript);;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	//	res.sendRedirect("http://localhost:8080/Food_Shop/ManageCate");
	
		res.sendRedirect("http://localhost:8080/Food_Shop/ManageCate");
	}
}