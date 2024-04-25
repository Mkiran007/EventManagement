package com.login.bean;
import java.sql.*;

  


import com.login.bean.LoginBean;  
public class LoginDao {  
  
public static boolean validate(LoginBean bean){  
boolean status=false;  
try{  
Connection con=ConnectionProvider.getCon();  
              
PreparedStatement ps=con.prepareStatement("select * from user2 where email=? and pass=?");  
  
ps.setString(1,bean.getEmail());  
ps.setString(2, bean.getPass());  
              
ResultSet rs=ps.executeQuery();  
status=rs.next();  
              
}catch(Exception e){}  
return status;  
  
} 
public static boolean validateuser(LoginBean bean){  
boolean status=false;  
try{  
Connection con=ConnectionProvider.getCon();  
              
PreparedStatement ps=con.prepareStatement("select * from user2 where email=? and pass=?");  
  
ps.setString(1,bean.getEmail());  
ps.setString(2, bean.getPass());  
              
ResultSet rs=ps.executeQuery();  
status=rs.next();  
              
}catch(Exception e){}  
  
return status;  
  
}  
public static int save(LoginBean u) {
	int status=0;
	try {
		Connection con=ConnectionProvider.getCon();
		PreparedStatement ps=con.prepareStatement("insert into user2(fullname,email,pass,phone_no,college_name,student_id,college_id) values(?,?,?,?,?,?,?)");
		ps.setString(1, u.getName());
		ps.setString(2, u.getEmail());
		ps.setString(3, u.getPass());
		ps.setInt(4, u.getPhone_no());
		ps.setString(5, u.getCollege_name());
		ps.setString(6, u.getStudent_id());
		ps.setString(7, u.getCollege_id());
		status =ps.executeUpdate();	
	}
	catch(Exception e){
		System.out.println(e);
	}
	return status;
	
}
public static boolean validates(LoginBean bean){  
boolean status=false;  
try{  
Connection con=ConnectionProvider.getCon();  
              
PreparedStatement ps=con.prepareStatement("select * from user2 where email=? , pass=? and type=? ");  
  
ps.setString(1,bean.getEmail());  
ps.setString(2, bean.getPass()); 
ps.setString(3, bean.gettype());
              
ResultSet rs=ps.executeQuery();  
status=rs.next();  
              
}catch(Exception e){
	System.out.println(e);
	}  
  
return status;  
  
}  

}  
