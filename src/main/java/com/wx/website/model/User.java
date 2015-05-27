package com.wx.website.model;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ModelAttribute;

@Component
public class User {
	
    @Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName
				+ ", password=" + password + ", address=" + address
				+ ", phoneNumber=" + phoneNumber + "]";
	}
    private User user;
    
	private Integer userId;

    private String userName;

    private String password;

    private String address;

    private String phoneNumber;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber == null ? null : phoneNumber.trim();
    }
}