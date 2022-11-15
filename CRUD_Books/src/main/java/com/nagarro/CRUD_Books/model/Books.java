package com.nagarro.CRUD_Books.model;

import java.text.ParseException;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.format.annotation.DateTimeFormat;

import com.nagarro.CRUD_Books.constant.Constant;

@Entity
public class Books {
	//Fields
	@Id
	int code;

	String name;
	String author;
	
	@DateTimeFormat(pattern = "dd-MM-yyyy")
	Date dob;
	
	//Constructor
	public Books() {
			
	}
	
	public Books(int code, String name, String author, Date dob) {
		this.code = code;
		this.name = name;
		this.author = author;
		this.dob = dob;
	}
	
	public Books(int code, String name, String author, String dob) {
		this.code = code;
		this.name = name;
		this.author = author;
		try {
			this.dob = Constant.DATE_FORMAT.parse(dob);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	// Getters And Setters
	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		System.out.println("Date " + dob);
		this.dob = dob;
	}
	
	public void setDob(String dob) {
		System.out.println("String " + dob);
		try {
			this.dob = Constant.DATE_FORMAT_JAVASCRIPT_TO_EMPLOYEE.parse(dob);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Override
	public String toString() {
		return "Books [code=" + code + ", name=" + name + ", author=" + author + ", dob=" + dob + "]";
	}

	
	
}
