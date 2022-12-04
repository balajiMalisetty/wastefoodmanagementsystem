package com.jfsd.project.springboot.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "FooDooUserRegister")
public class Citizen {

	@Id
	@GeneratedValue
    private int id;
	@Column
	private String fullname;
	@Column
	private String gender;
	@Column
	private String phoneNumber;
	@Column
	private String mail;
	@Column
	private String address;
	@Column
	private String city;
	@Column
	private String state;
	@Column(nullable = false, length = 200)
	private String password;
	@Column(nullable = false, length = 200)
	private String confirmpassword;
	@Column
	private String status;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirmpassword() {
		return confirmpassword;
	}
	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}
	@Override
	public String toString() {
		return "Citizen [id=" + id + ", fullname=" + fullname + ", gender=" + gender + ", phoneNumber=" + phoneNumber
				+ ", mail=" + mail + ", address=" + address + ", city=" + city + ", state=" + state + ", password="
				+ password + ", confirmpassword=" + confirmpassword + ", status=" + status + "]";
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
}