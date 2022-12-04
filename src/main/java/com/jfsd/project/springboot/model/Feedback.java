package com.jfsd.project.springboot.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "FooDooFeedback")
public class Feedback {
	@Id
	@GeneratedValue
    private int id;
	@Column
	private int citizen_rating;
	
	@Column
	private int donar_rating;
	
	@Column
	private int volunteer_rating;
	
	@Column
	private int Foodoo_rating;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCitizen_rating() {
		return citizen_rating;
	}

	public void setCitizen_rating(int citizen_rating) {
		this.citizen_rating = citizen_rating;
	}

	public int getDonar_rating() {
		return donar_rating;
	}

	public void setDonar_rating(int donar_rating) {
		this.donar_rating = donar_rating;
	}

	public int getVolunteer_rating() {
		return volunteer_rating;
	}

	public void setVolunteer_rating(int volunteer_rating) {
		this.volunteer_rating = volunteer_rating;
	}

	public int getFoodoo_rating() {
		return Foodoo_rating;
	}

	public void setFoodoo_rating(int foodoo_rating) {
		Foodoo_rating = foodoo_rating;
	}

	@Override
	public String toString() {
		return "Feedback [id=" + id + ", citizen_rating=" + citizen_rating + ", donar_rating=" + donar_rating
				+ ", volunteer_rating=" + volunteer_rating + ", Foodoo_rating=" + Foodoo_rating + "]";
	}

}
