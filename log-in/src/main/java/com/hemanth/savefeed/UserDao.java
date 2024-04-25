package com.hemanth.savefeed;
import java.sql.*;
import java.util.List;
import java.util.ArrayList;
import com.hemanth.savefeed.*;




	public class UserDao {
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

		
		public static int save(User u) {
			int status=0;
			try {
				Connection con=getConnection();
				PreparedStatement ps=con.prepareStatement("insert into fd(student_id,email,a,b,c,d,msg) values(?,?,?,?,?,?,?)");
				ps.setString(1, u.getStudent_id());
				/* ps.setString(2, u.getMobile_no()); */
				ps.setString(2, u.getemail());
				ps.setString(3, u.geta());
				ps.setString(4, u.getb());
				ps.setString(5, u.getc());
				ps.setString(6, u.getd());
				ps.setString(7, u.getmsg());/*
				 * ps.setString(4, u.getPassword()); ps.setString(5, u.getCollege_name());
				 * ps.setString(6, u.getCollege_id());
				 */
				//ps.setString(7, u.getStudent_id());
				status =ps.executeUpdate();
				
				
				
				
			
				con.close();
				
			}
			catch(Exception e){
				System.out.println(e);
			}
			return status;
		}
		public static User getRecordById(String id){  
		    User u=null;  
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("select * from fd where Student_id=?");  
		        ps.setString(1,id);  
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            u=new User();  
		            u.setStudent_id(rs.getString("student_id"));  
		            u.setemail(rs.getString("email"));  
		            u.seta(rs.getString("a"));  
		            u.setb(rs.getString("b"));  
		            u.setc(rs.getString("c"));  
		            u.setd(rs.getString("d")); 
		            u.setmsg(rs.getString("msg"));
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return u;  
		}  
		public static List<User> getAllRecords(){  
		    List<User> list=new ArrayList<User>();  
		      
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("select * from fd");  
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            User u=new User();  
		            u.setStudent_id(rs.getString("Student_id"));  
		            u.setemail(rs.getString("email"));  
		            u.seta(rs.getString("a"));  
		            u.setb(rs.getString("b"));  
		            u.setc(rs.getString("c"));  
		            u.setd(rs.getString("d"));
		            u.setmsg(rs.getString("msg"));
					/* u.setsendlink(rs.getString("sendlink")); */
		            list.add(u);  
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return list;  
		}
		}  



