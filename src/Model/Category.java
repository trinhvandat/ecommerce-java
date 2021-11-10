package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Category {
	 private int idCate;
	 private String nameCate;
	 private String descript;
	 
	public Category(int idCate, String nameCate, String descript) {
		this.idCate = idCate;
		this.nameCate = nameCate;
		this.descript = descript;
	}
	public Category() {
		
	}
	
	public Category(String nameCate, String descript) {
		this.nameCate = nameCate;
		this.descript = descript;
	}
	public int getIdCate() {
		return idCate;
	}

	public void setIdCate(int idCate) {
		this.idCate = idCate;
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
	 
	public Connection getConnect(String urlDb, String name, String password) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		return DriverManager.getConnection(urlDb, name,password);
	}
	
	public int addCate(int id) throws ClassNotFoundException, SQLException {
		Connection con = getConnect("jdbc:mysql://localhost:3306/food_shop", "root", "123456");
		String sql = "INSERT INTO category(idCate,nameCate,descript) VALUES(?,?,?)";
		 PreparedStatement ps =  con.prepareStatement(sql); 
		 ps.setInt(1,idCate);
		 ps.setString(2, nameCate);
		 ps.setString(3,descript);
		 String except = "SELECT* from category WHERE idCate =  " +  id ;
		 Statement st = con.createStatement();
		 ResultSet rs = st.executeQuery(except);
		 int count =0;
		 while(rs.next()) {
			 count++ ;
		 }
		 if(count == 0 ) {
			 ps.executeUpdate(); // tra ve số dòng bị hay đổi
		 }	
		 return count;
	}
	 public List<Category> showCate() throws ClassNotFoundException, SQLException{
		Connection con = getConnect("jdbc:mysql://localhost:3306/food_shop", "root", "123456");
		String sql = "SELECT *  from category";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(sql);
		List<Category> list = new ArrayList<>();
		while(rs.next()) {
			int idCate = rs.getInt(1) ;
			String nameCate = rs.getString(2);
			String descript =rs.getString(3);
			list.add(new Category(idCate,nameCate,descript));
		}
		return list;
	 }
	 public int Delete(int id) throws ClassNotFoundException, SQLException {
			Connection con = getConnect("jdbc:mysql://localhost:3306/food_shop", "root", "123456");
			String sql = "DELETE from category Where idCate = ? ";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate(); // số hàng bị thay đổi
			String except = "SELECT* from category WHERE idCate =  " +  id ;
			 Statement st = con.createStatement();
			 ResultSet rs = st.executeQuery(except);// RS chứa ds cac record tm câu Select
			 int count =0;// luu so hang bị thay đoi
			 while(rs.next()) {
				 count++ ;
			 }	
			 return count;
	 }
	 public void EditCate(int id, String name, String des) throws ClassNotFoundException, SQLException {
		 Connection con = getConnect("jdbc:mysql://localhost:3306/food_shop", "root", "123456");
		 String sql = "UPDATE category SET nameCate =?, descript=? WHERE idCate=?" ;
		 PreparedStatement ps = con.prepareStatement(sql);
		 ps.setString(1,name);
		 ps.setString(2, des);
		 ps.setInt(3, id);
		 ps.executeUpdate();
		 
	 }
	 public List<Category> SearchCate(String name) throws ClassNotFoundException, SQLException {
		 Connection con = getConnect("jdbc:mysql://localhost:3306/food_shop", "root", "123456");
		 String sql = "select * from category where nameCate like ?";
		 PreparedStatement ps =  con.prepareStatement(sql);
         ps.setString(1, "%"+name+"%");
         ResultSet rs = ps.executeQuery();
         List<Category> list = new ArrayList<>();
         while(rs.next()) {
 			int idCate = rs.getInt(1) ;
 			String nameCate = rs.getString(2);
 			String descript =rs.getString(3);
 			list.add(new Category(idCate,nameCate,descript));
 		}
         return list;
	 }
}
