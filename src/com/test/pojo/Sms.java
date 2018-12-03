package com.test.pojo;

public class Sms {

   private Integer 	id;        
   private Integer	uid;   
   private Integer	suid;      
   private String  message;              
   private String sendtime;              
   private String isread;
   
   private User user;
   
public User getUser() {
	return user;
}
public void setUser(User user) {
	this.user = user;
}
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public Integer getUid() {
	return uid;
}
public void setUid(Integer uid) {
	this.uid = uid;
}
public Integer getSuid() {
	return suid;
}
public void setSuid(Integer suid) {
	this.suid = suid;
}
public String getMessage() {
	return message;
}
public void setMessage(String message) {
	this.message = message;
}
public String getSendtime() {
	return sendtime;
}
public void setSendtime(String sendtime) {
	this.sendtime = sendtime;
}
public String getIsread() {
	return isread;
}
public void setIsread(String isread) {
	this.isread = isread;
}
   

}
