package com.nagarro.librarymanagement.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class User {

	// Fields
	@Id
	String userName;
	String passwd;

	// Constructors
	
	public User() {
		
	}
	
	public User(String userName, String passwd) {
		this.userName = userName;
		this.passwd = passwd;
	}
	
	//Getters And Setters
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	
	// To String
	@Override
	public String toString() {
		return "User [userName=" + userName + ", passwd=" + passwd + "]";
	}
}
