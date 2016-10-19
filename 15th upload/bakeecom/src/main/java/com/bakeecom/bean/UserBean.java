package com.bakeecom.bean;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class UserBean implements Serializable{

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int uid;
private	String name ;
private	String password;
private	String emailid;
private String address;
private String mobile;
private boolean enable;

public String getName() {
	return name;
}
public boolean isEnable() {
	return enable;
}
public void setEnable(boolean enable) {
	this.enable = enable;
}
public void setName(String name) {
	this.name = name;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getEmailid() {
	return emailid;
}
public void setEmailid(String emailid) {
	this.emailid = emailid;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getMobile() {
	return mobile;
}
public void setMobile(String mobile) {
	this.mobile = mobile;
}
public int getUid() {
	return uid;
}
public void setUid(int uid) {
	this.uid = uid;
}

	
/*
private static final long serialVersionUID = 4657462015039726030L;
private String userId;
private String email;
private Integer age;

public String getUserId() {
	return userId;
}
public void setUserId(String userId) {
	this.userId = userId;
}
public void setAge(Integer age) {
	this.age = age;
}
public Integer getAge() {
	return age;
}
public void setEmail(String email) {
	this.email = email;
}
public String getEmail() {
	return email;
} 
*/}
