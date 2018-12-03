package com.test.pojo;

public class WorkLog {
	private Integer id;                     
	private Integer uid;                             
	private Integer year;                                     
	private Integer month;                          
	private Integer day;                              
	private String title;                  // 日志标题  
	private String describe;                   // 日志内容  
	private String longtime;                 //记录时间 
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
	public Integer getYear() {
		return year;
	}
	public void setYear(Integer year) {
		this.year = year;
	}
	public Integer getMonth() {
		return month;
	}
	public void setMonth(Integer month) {
		this.month = month;
	}
	public Integer getDay() {
		return day;
	}
	public void setDay(Integer day) {
		this.day = day;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescribe() {
		return describe;
	}
	public void setDescribe(String describe) {
		this.describe = describe;
	}
	public String getLongtime() {
		return longtime;
	}
	public void setLongtime(String longtime) {
		this.longtime = longtime;
	}
	
	
}
