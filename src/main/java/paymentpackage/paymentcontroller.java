package paymentpackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class paymentcontroller {
	
	//connect DB
	
			private static Connection con = null;
			private static Statement stmt = null;
			private static ResultSet rs = null;
			private static boolean isSuccess;
			
			
			
			//Insert Data Function
			
			public static boolean insertdata (String name,String date,String method, String amount, String currency, String address)
			{
				boolean isSuccess = false;
				
				try {
					//DB CONNECTION CALL
					con = dbconnection.getConnection();
					stmt = con.createStatement();
					
					
					//SQL QUERY
					String sql = "insert into payment values (0 ,'"+name+"', '"+date+"','"+method+"', '"+amount+"', '"+currency+"', '"+address+"')";
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
			
			public static List<paymentmodel> getById(String Id){
				
				int convertedID = Integer.parseInt(Id);
				
				ArrayList<paymentmodel> payment = new ArrayList<paymentmodel>();
				
				try {
					//DB CONNECTION CALL
					con = dbconnection.getConnection();
					stmt = con.createStatement();
					
					//SQL QUERY
					String sql = "select * from payment where id '"+convertedID+"'";
					
					 rs = stmt.executeQuery(sql);
					
					while(rs.next()) {
						int id = rs.getInt(1);
						String name = rs.getString(2);
						String date = rs.getString(3);
						String method = rs.getString(4);
						String amount = rs.getString(5);
						String currency = rs.getString(6);
						String address = rs.getString(7);
						
						paymentmodel pay =new paymentmodel(id,name, date, method, amount, currency, address);
						payment.add(pay);
					
					}
					
					
				} catch (Exception e) {
					e.printStackTrace();
				}
				return payment ;
				
			}
			
			
			
			
			

			//GET ALL DATA
			
			public static List<paymentmodel> getAllBook(){
				
				ArrayList<paymentmodel> payments = new ArrayList<paymentmodel>();
				
				try {
					//DB CONNECTION CALL
					con = dbconnection.getConnection();
					stmt = con.createStatement();
					
					//SQL QUERY
					String sql = "select * from payment ";
					
					 rs = stmt.executeQuery(sql);
					
					while(rs.next()) {
						int id = rs.getInt(1);
						String name = rs.getString(2);
						String date = rs.getString(3);
						String method = rs.getString(4);
						String amount = rs.getString(5);
						String currency = rs.getString(6);
						String address = rs.getString(7);
						
						paymentmodel pay =new paymentmodel(id,name, date, method, amount, currency, address);
						payments.add(pay);
						
					}
					
					
				} catch (Exception e) {
					e.printStackTrace();
				}
				return payments ;
			}
			
			
			
			
			
			//UPDATE DATA
			public static boolean updatedata(String id,String name, String date,String method, String amount, String currency, String address)
			{
				try {
					//DB CONNECTION CALL
					con = dbconnection.getConnection();
					stmt = con.createStatement();
					
					//SQL QUERY
					String sql = "update payment set name='"+name+"',date='"+date+"', method='"+method+"', amount='"+amount+"' , currency='"+currency+"', address='"+address+"' "
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
					String sql = "delete from payment  where id ='"+convID+"'";
					
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
