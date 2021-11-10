package StaffCtrl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/StaffHome"})
public class ShowHome extends HttpServlet{
	private static final long serialVersionUID = 1741539813835698457L;
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/View/Staff/StaffHome.jsp");
		res.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("utf-8");
		rd.include(req, res);
	}
}
