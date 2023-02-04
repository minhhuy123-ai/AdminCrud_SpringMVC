package com.nmh.model;

public class Account {
	
	private String usr, pwd;
	private int role;
	private String name, address, phone;
	private int check;
	
	public Account() {
		
	}

	public Account(String usr, String pwd, int role) {
		this.usr = usr;
		this.pwd = pwd;
		this.role = role;
	}

	public Account(String usr, String pwd, int role, String name, String address, String phone, int check) {
		this.usr = usr;
		this.pwd = pwd;
		this.role = role;
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.check = check;
	}
	
	public String getUsr() {
		return this.usr;
	}
	
	public String getPwd() {
		return this.pwd;
	}
	
	public int getRole() {
		return this.role;
	}
	
	public String getName() {
		return this.name;
	}
	
	public String getAddress() {
		return this.address;
	}
	
	public String getPhone() {
		return this.phone;
	}
	
	public void setUsr(String usr) {
		this.usr = usr;
	}
	
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	public void setRole(int role) {
		this.role = role;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public void setAddress(String address) {
		this.address = address;
	}
	
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public void setCheck(int check) {
		this.check = check;
	}
	
	public int getCheck() {
		return this.check;
	}
}
