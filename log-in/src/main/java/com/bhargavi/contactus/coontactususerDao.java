package com.bhargavi.contactus;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.bhargavi.contactus.*;

public class coontactususerDao {
	
	

	
		public static Connection getConnection()
		{
			Connection con=null;
			try {
				Class.forName("oracle.jdbc.OracleDriver");
				con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
				System.out.println("connected");
			}
			catch(Exception e) {System.out.println(e);
			System.out.println("connection not created");}
			return con;
		}
		public static int save(contactususer u) {
			int status=0;
			try {
				Connection con=getConnection();
				PreparedStatement ps=con.prepareStatement("insert into contactus(student_name,student_id,student_email,message) values(?,?,?,?)");
				ps.setString(1, u.getname());
				ps.setString(2, u.getid());
				ps.setString(3, u.getemail());
				ps.setString(4, u.getmessage());
				status =ps.executeUpdate();
				con.close();
			}
			catch(Exception e){
				System.out.println(e);
			}
			return status;
		}
		public static int update(contactususer u){  
		    int status=0;  
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("update contactus set student_name=?,student_id=?,student_email=?,message=?");  
		        ps.setString(1,u.getname());  
		        ps.setString(2,u.getid());  
		        ps.setString(3,u.getemail());  
		        ps.setString(4,u.getmessage());  
		        status=ps.executeUpdate();  
		    }catch(Exception e){System.out.println(e);}  
		    return status;  
		} 
		public static int delete(contactususer u){  
		    int status=0;  
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("delete from contactus where student_id=?");  
		        ps.setString(1,u.getid());  
		        status=ps.executeUpdate();  
		    }catch(Exception e){System.out.println(e);}  
		  
		    return status;  
		}  
		public static List<contactususer> getAllRecords(){  
		    List<contactususer> list=new ArrayList<contactususer>();  
		      
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("select * from contactus");  
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            contactususer u=new contactususer();  
		            u.setname(rs.getString("student_name"));  
		            u.setid(rs.getString("student_id"));  
		            u.setemail(rs.getString("student_email"));  
		            u.setmessage(rs.getString("message"));    
		            list.add(u);  
		        }  
		    }catch(Exception e){System.out.println(e);}
		    return list;
		}
		public static contactususer getRecordById(int id) {
			contactususer u=null;
			try {
				Connection con=getConnection();
				PreparedStatement ps=con.prepareStatement("select * from contactus where student_id=?");
				ps.setInt(1,id);
				ResultSet rs=ps.executeQuery();
				System.out.println("pass");
				while(rs.next()) {
					u=new contactususer();
					u.setname(rs.getString("student_name"));
					u.setid(rs.getString("student_id"));
					u.setemail(rs.getString("student_email"));
					u.setmessage(rs.getString("message"));
				}
			}catch(Exception e) {System.out.println(e);}
			return u;
		}
	}


