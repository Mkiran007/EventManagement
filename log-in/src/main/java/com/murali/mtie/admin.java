package com.murali.mtie;

public class admin {
	private String event_name;
    private String host;
    private String starting_time;
    private String ending_time;
    private String event_location;
    private String event_description;
    private String event_host_email;
    private String event_host_password;
   
    
    public String geteventname() {
 	   return this.event_name;
    }
    public void seteventname(String event_name) {
 	   this.event_name = event_name;
    }
    
    public String gethost() {
  	   return host;
     }
    public void sethost(String host) {
  	   this.host = host;
     }
     
    public String getStarting_time() {
   	   return starting_time;
      }
     public void setStarting_time(String starting_time) {
   	   this.starting_time= starting_time;
      }
     public String getEnding_time() {
     	   return ending_time;
        }
       public void setEnding_time(String ending_time) {
     	   this.ending_time= ending_time;
        }
      
    public String getEvent_location() {
   	   return event_location;
      }
    public void setEvent_location(String event_location) {
   	   this.event_location= event_location;
      }
     
       
     public String getEvent_description() {
     	   return event_description;
        }
     public void setEvent_description(String event_description) {
     	   this.event_description = event_description;
        }
     public String getEvent_host_email() {
  	   return this.event_host_email;
     }
     public void setEvent_host_email(String event_host_email) {
  	   this.event_host_email = event_host_email;
     }
     
     public String getEvent_host_password() {
   	   return event_host_password;
      }
     public void setEvent_host_password(String event_host_password) {
   	   this.event_host_password = event_host_password;
      }
    
}
