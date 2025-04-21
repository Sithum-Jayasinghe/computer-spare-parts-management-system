package userpackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class usercontroller {
	
	//connect DB
	
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;
		private static boolean isSuccess;
		
		
		//Insert Data Function
		
			public static boolean insertdata (String name,String gmail, String password, String phone)
			{
				boolean isSuccess = false;
				
				try {
					//DB CONNECTION CALL
					con = dbconnection.getConnection();
					stmt = con.createStatement();
					
					
					//SQL QUERY
					String sql = "insert into user values (0 , '"+name+"','"+gmail+"', '"+password+"', '"+phone+"')";
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
			
			
			
			//Login Validate
			
			public static List<usermodel> loginValidate(String gmail,String password)
			{
				
				ArrayList<usermodel> user = new ArrayList<usermodel>();
				
				
				try {
					//DB CONNECTION CALL
					con = dbconnection.getConnection();
					stmt = con.createStatement();
					

					//SQL QUERY
					String sql= "select * from user where "+"gmail='"+ gmail + "'and password= '" +password +"'";
					
					rs = stmt.executeQuery(sql);
					
					if(rs.next())
					{
						int id = rs.getInt(1);
						String name = rs.getString(2);
						String email =rs.getString(3);
						String pass =rs.getString(4);
						String phone= rs.getString(5);
						

						usermodel u =new usermodel(id, name, email, pass, phone);
						user.add(u);
						
					}
					
				} catch (Exception e) {
					e.printStackTrace();
				}
				return user;
			}
			
			
			
			//USER PROFILE DISPLAY
			
			public static List<usermodel>  userProfile(String id)
			{
				int converID = Integer.parseInt(id);
				
				ArrayList<usermodel> user = new ArrayList<usermodel>();
				
				try {
					//DB CONNECTION CALL
					con = dbconnection.getConnection();
					stmt = con.createStatement();
					
					//SQL QUERY
					String sql = "select * from user where id='"+converID+"'";
					
	                rs = stmt.executeQuery(sql);
					
					if(rs.next())
					{
						int id = rs.getInt(1);
						String name = rs.getString(2);
						String gmail =rs.getString(3);
						String password =rs.getString(4);
						String phone= rs.getString(5);
						

						usermodel u =new usermodel(id, name, gmail, password, phone);
						user.add(u);
						
					}
					
					
				} catch (Exception e) {
					e.printStackTrace();
				}
				return user;
				
				
			}
			
			
			
			
			//USER PROFILE update
			
			public static boolean updateprofile(String id, String name,String gmail, String password, String phone)
			{
				try {
					//DB CONNECTION CALL
					con = dbconnection.getConnection();
					stmt = con.createStatement();
					
					//SQL QUERY
					String sql = "update user set name='"+name+"', gmail='"+gmail+"', password='"+password+"' , phone='"+phone+"' "
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
			
			
			
			
			//GET BY ID
			
			public static List<usermodel> getById(String Id){
				
				int convertedID = Integer.parseInt(Id);
				
				ArrayList<usermodel> user = new ArrayList<usermodel>();
				
				try {
					//DB CONNECTION CALL
					con = dbconnection.getConnection();
					stmt = con.createStatement();
					
					//SQL QUERY
					String sql = "select * from user where id '"+convertedID+"'";
					
					 rs = stmt.executeQuery(sql);
					
					while(rs.next()) {
						int id = rs.getInt(1);
						String name = rs.getString(2);
						String gmail = rs.getString(3);
						String password = rs.getString(4);
						String phone = rs.getString(5);
						

						usermodel u =new usermodel(id, name, gmail, password, phone);
						user.add(u);
					
					}
					
					
				} catch (Exception e) {
					e.printStackTrace();
				}
				return user;
				
			}
			
			
			
			
			

			//DELETE DATA
			public static boolean deleteAccount(String id)
			{
				int convID =Integer.parseInt(id);
				
				try {
					//DB CONNECTION CALL
					con = dbconnection.getConnection();
					stmt = con.createStatement();
					
					//SQL QUERY
					String sql = "delete from user  where id ='"+convID+"'";
					
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
