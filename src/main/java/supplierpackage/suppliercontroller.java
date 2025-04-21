package supplierpackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;





public class suppliercontroller {

	//connect DB
	
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;
		private static boolean isSuccess;
		
		
		
		//Insert Data Function
		
		public static boolean insertdata (String name,String number, String address, String category, String company)
		{
			boolean isSuccess = false;
			
			try {
				//DB CONNECTION CALL
				con = dbconnection.getConnection();
				stmt = con.createStatement();
				
				
				//SQL QUERY
				String sql = "insert into supplier values (0 , '"+name+"','"+number+"', '"+address+"', '"+category+"', '"+company+"')";
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
		
		public static List<suppliermodel> getById(String Id){
			
			int convertedID = Integer.parseInt(Id);
			
			ArrayList<suppliermodel> supplier = new ArrayList<suppliermodel>();
			
			try {
				//DB CONNECTION CALL
				con = dbconnection.getConnection();
				stmt = con.createStatement();
				
				//SQL QUERY
				String sql = "select * from supplier where id '"+convertedID+"'";
				
				 rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					int id = rs.getInt(1);
					String name = rs.getString(2);
					String number = rs.getString(3);
					String address = rs.getString(4);
					String category = rs.getString(5);
					String company = rs.getString(6);
					
					suppliermodel sm =new suppliermodel(id, name, number, address, category, company);
					supplier.add(sm);
				
				}
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return supplier ;
			
		}
		
		
		
		
		

		//GET ALL DATA
		
		public static List<suppliermodel> getAllBook(){
			
			ArrayList<suppliermodel> suppliers = new ArrayList<suppliermodel>();
			
			try {
				//DB CONNECTION CALL
				con = dbconnection.getConnection();
				stmt = con.createStatement();
				
				//SQL QUERY
				String sql = "select * from supplier ";
				
				 rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					int id = rs.getInt(1);
					String name = rs.getString(2);
					String number = rs.getString(3);
					String address = rs.getString(4);
					String category = rs.getString(5);
					String company = rs.getString(6);
					
					suppliermodel sm =new suppliermodel(id, name, number, address, category, company);
					suppliers.add(sm);
					
				}
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return suppliers ;
		}
		
		
		
		
		
		//UPDATE DATA
		public static boolean updatedata(String id, String name,String number, String address, String category, String company)
		{
			try {
				//DB CONNECTION CALL
				con = dbconnection.getConnection();
				stmt = con.createStatement();
				
				//SQL QUERY
				String sql = "update supplier set name='"+name+"', number='"+number+"', address='"+address+"' , category='"+category+"', company='"+company+"' "
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
				String sql = "delete from supplier  where id ='"+convID+"'";
				
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
