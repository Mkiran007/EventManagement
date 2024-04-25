package com.login.bean;

public class LoginBean {
	
	 
	private String email,pass; 
private String fullname;
private int phone_no;
private String college_name;
private String student_id;
private String college_id;
public String type="a";
	
	
	public String getName()
	{
		return fullname;
	}
	public void setName(String fullname) {
		this.fullname=fullname;
	}
	  
	public String getEmail() {  
	    return email;  
	}  
	  
	public void setEmail(String email) {  
	    this.email = email;  
	}  
	  
	public String getPass() {  
	    return pass;  
	}  
	  
	public void setPass(String pass) {  
	    this.pass = pass;  
	}  
	public int getPhone_no() {
		return phone_no;
		
	}
	public void setPhone_no(int phone_no) {
		this.phone_no=phone_no;
		
	}
	public String getCollege_name() {  
	    return college_name;  
	}  
	  
	public void setcollege_name(String college_name) {  
	    this.college_name = college_name;  
	}  
	  
	public String getStudent_id() {  
	    return student_id;  
	}  
	  
	public void setStudent_id(String student_id) {  
	    this.student_id = student_id;  
	}  
	  
	public String getCollege_id() {  
	    return college_id;  
	}  
	  
	public void setCollege_id(String college_id) {  
	    this.college_id = college_id;  
	} 
	  
	public String gettype() {  
	    return "a";  
	}  
	public void settype(String a) {  
	    this.type = "a";  
	} 
	  
	
	}  

