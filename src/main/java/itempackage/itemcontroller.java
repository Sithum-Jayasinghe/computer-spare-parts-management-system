package itempackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class itemcontroller {
	
	
	//connect DB
	
			private static Connection con = null;
			private static Statement stmt = null;
			private static ResultSet rs = null;
			private static boolean isSuccess;
			
			
			
			//Insert Data Function
			
			public static boolean insertdata (String name,String category, String quantity, String price, String date)
			{
				boolean isSuccess = false;
				
				try {
					//DB CONNECTION CALL
					con = dbconnection.getConnection();
					stmt = con.createStatement();
					
					
					//SQL QUERY
					String sql = "insert into item values (0 , '"+name+"','"+category+"', '"+quantity+"', '"+price+"', '"+date+"')";
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
			
			public static List<itemmodel> getById(String Id){
				
				int convertedID = Integer.parseInt(Id);
				
				ArrayList<itemmodel> item = new ArrayList<itemmodel>();
				
				try {
					//DB CONNECTION CALL
					con = dbconnection.getConnection();
					stmt = con.createStatement();
					
					//SQL QUERY
					String sql = "select * from item where id '"+convertedID+"'";
					
					 rs = stmt.executeQuery(sql);
					
					while(rs.next()) {
						int id = rs.getInt(1);
						String name = rs.getString(2);
						String category = rs.getString(3);
						String quantity = rs.getString(4);
						String price = rs.getString(5);
						String date = rs.getString(6);
						
						itemmodel im =new itemmodel(id, name, category, quantity, price, date);
						item.add(im);
					
					}
					
					
				} catch (Exception e) {
					e.printStackTrace();
				}
				return item ;
				
			}
			
			
			
			
			

			//GET ALL DATA
			
			public static List<itemmodel> getAllBook(){
				
				ArrayList<itemmodel> items = new ArrayList<itemmodel>();
				
				try {
					//DB CONNECTION CALL
					con = dbconnection.getConnection();
					stmt = con.createStatement();
					
					//SQL QUERY
					String sql = "select * from item ";
					
					 rs = stmt.executeQuery(sql);
					
					while(rs.next()) {
						int id = rs.getInt(1);
						String name = rs.getString(2);
						String category = rs.getString(3);
						String quantity = rs.getString(4);
						String price = rs.getString(5);
						String date = rs.getString(6);
						
						itemmodel sm =new itemmodel(id,name, category, quantity, price, date );
						items.add(sm);
						
					}
					
					
				} catch (Exception e) {
					e.printStackTrace();
				}
				return items ;
			}
			
			
			
			
			
			//UPDATE DATA
			public static boolean updatedata(String id, String name,String category, String quantity, String price, String date)
			{
				try {
					//DB CONNECTION CALL
					con = dbconnection.getConnection();
					stmt = con.createStatement();
					
					//SQL QUERY
					String sql = "update item set name='"+name+"', category='"+category+"', quantity='"+quantity+"' , price='"+price+"', date='"+date+"' "
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
					String sql = "delete from item  where id ='"+convID+"'";
					
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
