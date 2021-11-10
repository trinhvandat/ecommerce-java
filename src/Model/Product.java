package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Product {
	private int idPro;
	private String namePro;
	private int pricePro;
	private String nameCate;
	private String descript;
	private String imgPro;
	
	public Product(int idPro, String namePro, int pricePro, String nameCate, String descript, String imgPro) {
		this.idPro = idPro;
		this.namePro = namePro;
		this.pricePro = pricePro;
		this.nameCate = nameCate;
		this.descript = descript;
		this.imgPro = imgPro;
	}
	public Product( String namePro, int pricePro, String nameCate, String descript, String imgPro) {
		
		this.namePro = namePro;
		this.pricePro = pricePro;
		this.nameCate = nameCate;
		this.descript = descript;
		this.imgPro = imgPro;
	}
	public Product(int idPro, String namePro, int pricePro) {
		this.idPro = idPro;
		this.namePro = namePro;
		this.pricePro = pricePro;

	}

	public Product() {
	}
	
	public Product(int idPro) {
		this.idPro = idPro;
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

	public String getNameCate() {
		return nameCate;
	}

	public void setNameCate(String nameCate) {
		this.nameCate = nameCate;
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
	
	public Connection getConnect(String urlDb, String name, String password) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		return DriverManager.getConnection(urlDb, name,password);
	}
	public int addPro(int id) throws SQLException, ClassNotFoundException {
		Connection con = getConnect("jdbc:mysql://localhost:3306/food_shop", "root", "123456");
		String sql = "INSERT INTO product(idPro,namePro,pricePro,nameCate,descript,imgPro) VALUES(?,?,?,?,?,?)";
		 PreparedStatement ps =  con.prepareStatement(sql); 
		 ps.setInt(1,idPro);
		 ps.setString(2, namePro);
		 ps.setInt(3, pricePro);
		 ps.setString(4, nameCate);
		 ps.setString(5, descript);
		 ps.setString(6,imgPro);
		 String except = "SELECT* from product WHERE idPro =  " +  id ;
		 Statement st = con.createStatement();
		 ResultSet rs = st.executeQuery(except);
		 int count =0;
		 while(rs.next()) {
			 count++ ;
		 }
		 if(count == 0 ) {
			 ps.executeUpdate();
		 }	
		 return count;
	}
	 public List<Product> showProduct() throws ClassNotFoundException, SQLException{
			Connection con = getConnect("jdbc:mysql://localhost:3306/food_shop", "root", "123456");
			String sql = "SELECT *  from product";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			List<Product> list = new ArrayList<>();
			while(rs.next()) {
				int idPro = rs.getInt(1) ;
				String namePro = rs.getString(2);
				int pricePro = rs.getInt(3);
				String nameCate = rs.getString(4);
				String descript =rs.getString(5);
				String imgPro = rs.getString(6);
				list.add(new Product(idPro, namePro, pricePro, nameCate, descript, imgPro));
			}
			return list;
	}
	 public List<Product> showProductComChien() throws ClassNotFoundException, SQLException{
			Connection con = getConnect("jdbc:mysql://localhost:3306/food_shop", "root", "123456");
			String sql = "SELECT *  from product WHERE nameCate = 'Cơm Chiên' ";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			List<Product> list = new ArrayList<>();
			while(rs.next()) {
				int idPro = rs.getInt(1) ;
				String namePro = rs.getString(2);
				int pricePro = rs.getInt(3);
				String nameCate = rs.getString(4);
				String descript =rs.getString(5);
				String imgPro = rs.getString(6);
				list.add(new Product(idPro, namePro, pricePro, nameCate, descript, imgPro));
			}
			return list;
	} 
	 public List<Product> showProductTraSua() throws ClassNotFoundException, SQLException{
			Connection con = getConnect("jdbc:mysql://localhost:3306/food_shop", "root", "123456");
			String sql = "SELECT *  from product WHERE nameCate = 'Trà Sữa' ";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			List<Product> list = new ArrayList<>();
			while(rs.next()) {
				int idPro = rs.getInt(1) ;
				String namePro = rs.getString(2);
				int pricePro = rs.getInt(3);
				String nameCate = rs.getString(4);
				String descript =rs.getString(5);
				String imgPro = rs.getString(6);
				list.add(new Product(idPro, namePro, pricePro, nameCate, descript, imgPro));
			}
			return list;
	}
	 public List<Product> showProductDetail(int id) throws ClassNotFoundException, SQLException{
			Connection con = getConnect("jdbc:mysql://localhost:3306/food_shop", "root", "123456");
			 String sql = "select * from product where idPro like ?";
			 PreparedStatement ps =  con.prepareStatement(sql);
	         ps.setString(1, "%"+id+"%");
	         ResultSet rs = ps.executeQuery();
	         List<Product> list = new ArrayList<>();
	         while(rs.next()) {
	        	 int idPro = rs.getInt(1) ;
	        	 String namePro = rs.getString(2);
	        	 int pricePro = rs.getInt(3);
	        	 String nameCate = rs.getString(4);
	        	 String descript =rs.getString(5);
	        	 String imgPro = rs.getString(6);
	        	 list.add(new Product(idPro, namePro, pricePro, nameCate, descript, imgPro));
	 		}
	         return list;
	 }
	 
	 public void EditPro(int id, String nameProduct, int price, String nameCategory,String des,String img) throws ClassNotFoundException, SQLException {
		 Connection con = getConnect("jdbc:mysql://localhost:3306/food_shop", "root", "123456");
		 String sql = "UPDATE product SET namePro =?, pricePro=?,nameCate=?,descript=?,imgPro=? WHERE idPro=?" ;
		 PreparedStatement ps = con.prepareStatement(sql);
		 ps.setString(1, nameProduct);
		 ps.setInt(2, price);
		 ps.setString(3, nameCategory);
		 ps.setString(4, des);
		 ps.setString(5,img);
		 ps.setInt(6, id);
		 ps.executeUpdate();		 
	 }
	 public int DeletePro(int id) throws ClassNotFoundException, SQLException {
			Connection con = getConnect("jdbc:mysql://localhost:3306/food_shop", "root", "123456");
			String sql = "DELETE from product Where idPro = ? ";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
			String except = "SELECT* from product WHERE idPro =  " +  id ;
			 Statement st = con.createStatement();
			 ResultSet rs = st.executeQuery(except);
			 int count =0;// luu so hang bị thay đoi
			 while(rs.next()) {
				 count++ ;
			 }	
			 return count;
	 }
}
