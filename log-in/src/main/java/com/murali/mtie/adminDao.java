package com.murali.mtie;
import java.sql.*;
import java.util.ArrayList;  
import java.util.List;  
import com.murali.mtie.admin;

public class adminDao {
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

	
	public static int save(admin u) {
		int status=0;
		try {
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("insert into events(eventname,host,event_location,starting_time,ending_time,event_description,event_host_name,event_host_password) values(?,?,?,?,?,?,?,?)");
			ps.setString(1, u.geteventname());
			ps.setString(2, u.gethost());
			ps.setString(3, u.getEvent_location());
			ps.setString(4, u.getStarting_time());
			ps.setString(5, u.getEnding_time());
			ps.setString(6, u.getEvent_description());
			ps.setString(7, u.getEvent_host_email());
			ps.setString(8, u.getEvent_host_password());
			status =ps.executeUpdate();
			
			con.close();
		}
		catch(Exception e){
			System.out.println(e);
		}
		return status;
	}
	
	public static List<admin> getAllRecords(){  
	    List<admin> list=new ArrayList<admin>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from events");  
	        ResultSet rs=ps.executeQuery(); 
	        System.out.print("success");
	        while(rs.next()){  
	            admin u=new admin();  
	            u.seteventname(rs.getString("eventname"));  
	            u.sethost(rs.getString("host"));  
	            u.setEvent_location(rs.getString("event_location"));  
	            u.setStarting_time(rs.getString("starting_time"));  
	            u.setEnding_time(rs.getString("ending_time")); 
	            u.setEvent_description(rs.getString("event_description"));  
	            u.setEvent_host_email(rs.getString("event_host_name"));
	            u.setEvent_host_password(rs.getString("event_host_password"));
	          
	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  

	}
}
