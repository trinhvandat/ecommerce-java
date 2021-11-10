package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CartItem {
	private int idPro;
	private String namePro;
	private int pricePro;
	private String descript;
	private String imgPro;
	private int soluong;
	private int thanhtien;

	public CartItem() {
		
	}
	public CartItem(int idPro) {
		this.idPro = idPro;
	}
	public CartItem(int idPro, String namePro, int pricePro, String descript, String imgPro, int soluong,
			int thanhtien) {
		this.idPro = idPro;
		this.namePro = namePro;
		this.pricePro = pricePro;
		this.descript = descript;
		this.imgPro = imgPro;
		this.soluong = soluong;
		this.thanhtien = thanhtien;
	}
	public CartItem(int idPro, String namePro, String imgPro, int soluong,
			int thanhtien) {
		this.idPro = idPro;
		this.namePro = namePro;;
		this.imgPro = imgPro;
		this.soluong = soluong;
		System.out.println(soluong);
		this.thanhtien = thanhtien;
	}
	public CartItem( String namePro,  String imgPro, int soluong,
			int thanhtien) {
		this.namePro = namePro;
		this.imgPro = imgPro;
		this.soluong = soluong;
		this.thanhtien = thanhtien;
		
	}
	
	public int getIdPro() {
		return idPro;
	}
	
	public void setIdPro(int idPro) {
		this.idPro = idPro;
	}

	public String getNamePro() {
		return namePro;
	}

	public void setNamePro(String namePro) {
		this.namePro = namePro;
	}

	public int getPricePro() {
		return pricePro;
	}

	public void setPricePro(int pricePro) {
		this.pricePro = pricePro;
	}

	public String getDescript() {
		return descript;
	}

	public void setDescript(String descript) {
		this.descript = descript;
	}

	public String getImgPro() {
		return imgPro;
	}

	public void setImgPro(String imgPro) {
		this.imgPro = imgPro;
	}

	public int getSoluong() {
		return soluong;
	}
	
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}

	public int getThanhtien() {
		return thanhtien;
	}

	public void setThanhtien(int thanhtien) {
		this.thanhtien = thanhtien;
	}

	public Connection getConnect(String urlDb, String name, String password) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		return DriverManager.getConnection(urlDb, name,password);
	}
	
	
	public void addPro() throws SQLException, ClassNotFoundException {
		Connection con = getConnect("jdbc:mysql://localhost:3306/food_shop", "root", "123456");
		String sql = "INSERT INTO cartitem(idPro,namePro,pricePro,descript,imgPro,soluong,thanhtien) VALUES(?,?,?,?,?,?,?)";
		 PreparedStatement ps =  con.prepareStatement(sql); 
		 ps.setInt(1,idPro);
		 ps.setString(2, namePro);
		 ps.setInt(3, pricePro);	
		 ps.setString(4, descript);
		 ps.setString(5,imgPro);
		 ps.setInt(6,soluong);
		 ps.setInt(7,thanhtien);		
		 ps.executeUpdate();
	}
	 public List<CartItem> showCartItem() throws ClassNotFoundException, SQLException{
			Connection con = getConnect("jdbc:mysql://localhost:3306/food_shop", "root", "123456");
			String sql = "SELECT *  from cartitem";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			List<CartItem> list = new ArrayList<>();
			while(rs.next()) {
				int intPro = rs.getInt(1);
				String namePro = rs.getString(2);
				String imgPro = rs.getString(5);
				int soluong = rs.getInt(6);
				int thanhtien = rs.getInt(7);
				list.add(new CartItem(intPro,namePro,imgPro,soluong,thanhtien));
			}
			return list;
	}
	 public int Delete(int id) throws ClassNotFoundException, SQLException {
			Connection con = getConnect("jdbc:mysql://localhost:3306/food_shop", "root", "123456");
			String sql = "DELETE from cartitem Where idPro = ? ";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate(); // số hàng bị thay đổi
			String except = "SELECT* from cartitem  WHERE idPro =  " +  id ;
			 Statement st = con.createStatement();
			 ResultSet rs = st.executeQuery(except);// RS chứa ds cac record tm câu Select
			 int count =0;// luu so hang bị thay đoi
			 while(rs.next()) {
				 count++ ;
			 }	
			 return count;
	 }
	 public List<CartItem> getId(int id) throws SQLException, ClassNotFoundException{
		 Connection con = getConnect("jdbc:mysql://localhost:3306/food_shop", "root", "123456");
		 String sql = "select * from cartitem where idPro like ?";
		 PreparedStatement ps =  con.prepareStatement(sql);
         ps.setString(1, "%"+id+"%");
         ResultSet rs = ps.executeQuery();
         List<CartItem> list = new ArrayList<>();
         while(rs.next()) {
 			int idPro = rs.getInt(1) ;
 			list.add(new CartItem(idPro));
 		}
         return list;
	 }
	 public void UpdateCart(int soluong, int thanhtien,int id) throws ClassNotFoundException, SQLException {
		 Connection con = getConnect("jdbc:mysql://localhost:3306/food_shop", "root", "123456");
		 String sql = "UPDATE cartitem SET soluong =?, thanhtien=? WHERE idPro=?" ;
		 PreparedStatement ps = con.prepareStatement(sql);
		 ps.setInt(1,soluong);
		 ps.setInt(2, thanhtien);
		 ps.setInt(3, id);
		 ps.executeUpdate();		 
	 }
}
