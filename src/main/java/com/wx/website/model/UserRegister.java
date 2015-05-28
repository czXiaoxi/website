package com.wx.website.model;

public class UserRegister {
	
    private String userName;

    private String password;
    
    private String againPasswd;
    
    private String address;
    
    private String phoneNumber;
    
    public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAgainPasswd() {
		return againPasswd;
	}

	public void setAgainPasswd(String againPasswd) {
		this.againPasswd = againPasswd;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}


}
