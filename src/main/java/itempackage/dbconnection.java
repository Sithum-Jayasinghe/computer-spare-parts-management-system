package itempackage;

import java.sql.Connection;
import java.sql.DriverManager;

public class dbconnection {
	private static String url = "jdbc:mysql://localhost:3306/computer";
	private static String user = "root";
	private static String pass = "Sithum123";
	private static Connection con;
	
	
	public static Connection getConnection()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, user, pass);
		}catch(Exception e){
			System.out.println("Database Not Connect !");
		}
		
		return con ;
	}

}
