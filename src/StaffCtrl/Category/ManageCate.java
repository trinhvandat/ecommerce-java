package StaffCtrl.Category;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Category;
@WebServlet(urlPatterns = {"/ManageCate"})
public class ManageCate extends HttpServlet{
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/View/Staff/Category/ManageCate.jsp");
		Category cate = new Category();	
		res.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("utf-8");
		// lay id from jsp
		// deleteCategory
		int count =0;
		int idCate=0;
		if(req.getParameter("id")!= null) {
		String id =  req.getParameter("id");
		 idCate = Integer.parseInt(id);
		}
		
		String action = req.getParameter("action");
		if( action != null && action.equals("key")) {	
		try {
			count = cate.Delete(idCate);
			PrintWriter pw = res.getWriter();
			res.setContentType("text/html");
			if(count == 0 ) {
			pw.write("<script>alert('Xóa thành công')</script>");
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace(); 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}					
		//showCategory
		
		List<Category> list = new ArrayList<>();
		try {
			list = cate.showCate();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}			
		req.setAttribute("category", list); // xet thuoc tinh cho req
		rd.include(req, res);
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/View/Staff/Category/ManageCate.jsp");
		res.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("utf-8");
		Category cate = new Category();	
		String inputName = req.getParameter("input").trim();;
		List<Category> list = new ArrayList<>();
				try {
					list = cate.SearchCate(inputName);
				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		for(int i=0; i<list.size(); i++) {
			System.out.print(list.get(i).getNameCate());
		}
		req.setAttribute("category", list);
		rd.include(req, res);
	}
}
