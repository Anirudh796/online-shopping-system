package project;
import java.sql.*;
public class ConnectionProvider {

	public static Connection getCon()
	{
		try
		{
			Connection con = null;
	 		String url = "jdbc:mysql://localhost:3306/OnlineShopping"; //MySQL URL and followed by the database name
	 		String username = "universityDB0013"; //MySQL username
	 		String password = "Manu@2509"; //MySQL password
			
	 		Class.forName("com.mysql.cj.jdbc.Driver"); 
			con = DriverManager.getConnection(url, username, password);
			return con;
		}
		catch(Exception e) 
		{
			return null;
		}
	}
}
