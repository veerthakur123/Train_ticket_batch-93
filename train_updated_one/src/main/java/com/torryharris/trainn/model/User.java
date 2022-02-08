package com.torryharris.trainn.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int userid;
	private String userName;
	private String fName;
	private String lName;
	private String password;
	private int age;
	public User() {
		super();
		 
	}
	public User( String fName,String lName,String userName,String password,int age) {
		super();
 		this.userName = userName;
		this.fName = fName;
		this.lName = lName;
		this.password = password;
		this.age = age;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getlName() {
		return lName;
	}
	public void setlName(String lName) {
		this.lName = lName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	@Override
	public String toString() {
		return "User [userid=" + userid + ", userName=" + userName + ", fName=" + fName + ", lName=" + lName
				+ ", password=" + password + ", age=" + age + "]";
	}
	
	
 
	
	
	
	
	
}
