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
@WebServlet(urlPatterns = {"/AddCate"})
public class AddCate extends HttpServlet{
	private static final long serialVersionUID = 1741539813835698457L;
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/View/Staff/Category/AddCate.jsp");
		res.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("utf-8");
		rd.include(req, res);
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/View/Staff/Category/AddCate.jsp");
		res.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("utf-8");
		String id =  req.getParameter("idCate");
		int idCate = Integer.parseInt(id);
		String nameCate = req.getParameter("nameCate").trim();
		String descript = req.getParameter("descript").trim();	
		
		Category cate = new Category(idCate,nameCate,descript);
		System.out.print(idCate);
		rd.include(req, res);
		int count =0;
		
		try {
			count= cate.addCate(idCate);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		PrintWriter pw = res.getWriter();
		res.setContentType("text/html");
		if(count == 0 ) {
		pw.write("<script>alert('Thêm thành công')</script>");
		}else pw.write("<script>alert('Bị trùng id - Thêm không thành công ')</script>");
		
	}
	
}
