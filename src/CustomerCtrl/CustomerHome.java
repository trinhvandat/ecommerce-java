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
import javax.servlet.http.HttpSession;

import Model.CartItem;
import Model.CartItem;
import Model.Product;

@WebServlet(urlPatterns = {"/CustomerHome"})
public class CustomerHome extends HttpServlet{
	private static final long serialVersionUID = 1741539813835698457L;
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/View/Customer/Home/Home.jsp");
		res.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("utf-8");
		HttpSession session = req.getSession();
		Product pro = new Product();
		List<Product> list1 = new ArrayList<>();
		try {
			list1 = pro.showProductComChien();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}						
		session.setAttribute("productComChien", list1);
		
		List<Product> list2 = new ArrayList<>();
		try {
			list2 = pro.showProductTraSua();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}						
		session.setAttribute("productTraSua", list2);// xet thuoc tinh cho req
		
		//Xoa sp trong gio hang
		int idDele =0;
		CartItem item = new CartItem();
		if(req.getParameter("idDelete")!= null) {
			String id =  req.getParameter("idDelete");
			 idDele = Integer.parseInt(id);
		}
		String action = req.getParameter("action");
		if( action != null && action.equals("delete")) {
			try {
				item.Delete(idDele);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		List<CartItem> list = new ArrayList<CartItem>();
		try {
			list = item.showCartItem();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		session.setAttribute("cart", list);
		rd.include(req, res);			
	}
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/View/Customer/Home/Home.jsp");
		res.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("utf-8");
		
		int idPro = Integer.parseInt(req.getParameter("idPro"));	
		String namePro = req.getParameter("namePro").trim();
		int pricePro = Integer.parseInt(req.getParameter("pricePro"));
		String imgPro = req.getParameter("imgPro").trim();	
		int soluong = 1;
		int thanhtien = pricePro;
		HttpSession session = req.getSession(true);	
		// Them gio hang
		List<CartItem> list = new ArrayList<CartItem>();
		CartItem item = new CartItem();	
		try {
		if(session.getAttribute("cart")==null) {			
			item.setSoluong(soluong);
			item.setThanhtien(pricePro);
			item.setIdPro(idPro);
			item.setNamePro(namePro);
			item.setImgPro(imgPro);
			list.add(item);
			item.addPro();
			session.setAttribute("cart", list);						
			}else {
				 list = (List<CartItem>) session.getAttribute("cart");
				boolean check = false;
				for(CartItem  cartlist : list) {
					if(cartlist.getIdPro() == idPro) {
						cartlist.setSoluong(cartlist.getSoluong()+1);
						cartlist.setThanhtien(cartlist.getSoluong()*pricePro);
						
						check =true;
					}
					int soluongnew= cartlist.getSoluong();
					int thanhtiennew = cartlist.getThanhtien();
					item.UpdateCart(soluongnew, thanhtiennew, idPro);
				}
	
				if(check ==false) {		
					item.setSoluong(soluong);
					item.setThanhtien(pricePro);
					item.setIdPro(idPro);
					item.setNamePro(namePro);
					item.setImgPro(imgPro);
					item.addPro();
					list.add(item);					
				}
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		session.setAttribute("cart", list);
		rd.include(req, res);
	}	
}