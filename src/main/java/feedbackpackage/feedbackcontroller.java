package feedbackpackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class feedbackcontroller {
	
	//connect DB
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static boolean isSuccess;
	
	
	
	//Insert Data Function
	
	public static boolean insertdata (String name,String email, String type, String rating, String message)
	{
		boolean isSuccess = false;
		
		try {
			//DB CONNECTION CALL
			con = dbconnection.getConnection();
			stmt = con.createStatement();
			
			
			//SQL QUERY
			String sql = "insert into feedback values (0 , '"+name+"','"+email+"', '"+type+"', '"+rating+"', '"+message+"')";
			int rs = stmt.executeUpdate(sql);
			if(rs>0) {
				isSuccess =true;
				
				}else {
					isSuccess =false;
				}
			
			}catch (Exception e) {
				e.printStackTrace();
			}
		return isSuccess;
		
	}
	
	
	
	
	//GET BY ID
	
	public static List<feedbackmodel> getById(String Id){
		
		int convertedID = Integer.parseInt(Id);
		
		ArrayList<feedbackmodel> feedback = new ArrayList<feedbackmodel>();
		
		try {
			//DB CONNECTION CALL
			con = dbconnection.getConnection();
			stmt = con.createStatement();
			
			//SQL QUERY
			String sql = "select * from feedback where id '"+convertedID+"'";
			
			 rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String type = rs.getString(4);
				String rating = rs.getString(5);
				String message = rs.getString(6);
				
				feedbackmodel feed =new feedbackmodel(id, name, email, type, rating, message);
				feedback.add(feed);
			
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return feedback ;
		
	}
	
	
	
	
	

	//GET ALL DATA
	
	public static List<feedbackmodel> getAllBook(){
		
		ArrayList<feedbackmodel> feedbacks = new ArrayList<feedbackmodel>();
		
		try {
			//DB CONNECTION CALL
			con = dbconnection.getConnection();
			stmt = con.createStatement();
			
			//SQL QUERY
			String sql = "select * from feedback ";
			
			 rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String type = rs.getString(4);
				String rating = rs.getString(5);
				String message = rs.getString(6);
				
				feedbackmodel feed =new feedbackmodel(id,name, email, type, rating, message );
				feedbacks.add(feed);
				
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return feedbacks ;
	}
	
	

	
	
	//UPDATE DATA
	public static boolean updatedata(String id, String name,String email, String type, String rating, String message)
	{
		try {
			//DB CONNECTION CALL
			con = dbconnection.getConnection();
			stmt = con.createStatement();
			
			//SQL QUERY
			String sql = "update feedback set name='"+name+"', email='"+email+"', type='"+type+"' , rating='"+rating+"', message='"+message+"' "
					+ "where id ='"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess =true;
				
				}else {
					isSuccess =false;
				}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		return isSuccess;
	}
	
	
	
	//DELETE DATA
	public static boolean deletedata(String id)
	{
		int convID =Integer.parseInt(id);
		
		try {
			//DB CONNECTION CALL
			con = dbconnection.getConnection();
			stmt = con.createStatement();
			
			//SQL QUERY
			String sql = "delete from feedback  where id ='"+convID+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess =true;
				
				}else {
					isSuccess =false;
				}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}

	
}

