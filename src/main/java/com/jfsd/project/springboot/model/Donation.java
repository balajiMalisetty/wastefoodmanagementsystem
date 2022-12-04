package com.jfsd.project.springboot.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "FooDooDonation")
public class Donation {

	
	@Id
	@GeneratedValue
    private int id;
	@Column
	private String fullname;
	@Column
	private String gender;
	@Column
	private String foodDetails;
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
	@Column
	private String status;
	@Column
	private String requests;
	@Column
	private String receiver;
	@Column
	private String citizen_name;
	@Column
	private String citizen_number;
	@Column
	private String citizen_address;
	@Column
	private String citizen_mail;
	@Column
	private String volunteer_name;
	@Column
	private String volunteer_number;
	@Column
	private String volunteer_mail;
	@Column
	private String volunteer_status;
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
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
	public String getFoodDetails() {
		return foodDetails;
	}
	public void setFoodDetails(String foodDetails) {
		this.foodDetails = foodDetails;
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
	public String getRequests() {
		return requests;
	}
	public void setRequests(String requests) {
		this.requests = requests;
	}
	@Override
	public String toString() {
		return "Donation [id=" + id + ", fullname=" + fullname + ", gender=" + gender + ", foodDetails=" + foodDetails
				+ ", phoneNumber=" + phoneNumber + ", mail=" + mail + ", address=" + address + ", city=" + city
				+ ", state=" + state + ", status=" + status + ", requests=" + requests + ", receiver=" + receiver
				+ ", citizen_name=" + citizen_name + ", citizen_number=" + citizen_number + ", citizen_address="
				+ citizen_address + ", citizen_mail=" + citizen_mail + ", volunteer_name=" + volunteer_name
				+ ", volunteer_number=" + volunteer_number + ", volunteer_mail=" + volunteer_mail
				+ ", volunteer_status=" + volunteer_status + "]";
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public String getCitizen_name() {
		return citizen_name;
	}
	public void setCitizen_name(String citizen_name) {
		this.citizen_name = citizen_name;
	}
	public String getCitizen_number() {
		return citizen_number;
	}
	public void setCitizen_number(String citizen_number) {
		this.citizen_number = citizen_number;
	}
	public String getCitizen_address() {
		return citizen_address;
	}
	public void setCitizen_address(String citizen_address) {
		this.citizen_address = citizen_address;
	}
	public String getCitizen_mail() {
		return citizen_mail;
	}
	public void setCitizen_mail(String citizen_mail) {
		this.citizen_mail = citizen_mail;
	}
	public String getVolunteer_name() {
		return volunteer_name;
	}
	public void setVolunteer_name(String volunteer_name) {
		this.volunteer_name = volunteer_name;
	}
	public String getVolunteer_number() {
		return volunteer_number;
	}
	public void setVolunteer_number(String volunteer_number) {
		this.volunteer_number = volunteer_number;
	}
	public String getVolunteer_mail() {
		return volunteer_mail;
	}
	public void setVolunteer_mail(String volunteer_mail) {
		this.volunteer_mail = volunteer_mail;
	}
	public String getVolunteer_status() {
		return volunteer_status;
	}
	public void setVolunteer_status(String volunteer_status) {
		this.volunteer_status = volunteer_status;
	}

	
	
	
	
}
