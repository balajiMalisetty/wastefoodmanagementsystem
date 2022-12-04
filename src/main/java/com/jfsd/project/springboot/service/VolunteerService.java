package com.jfsd.project.springboot.service;

import java.util.List;

import com.jfsd.project.springboot.model.Admin;
import com.jfsd.project.springboot.model.Donation;
import com.jfsd.project.springboot.model.Volunteer;

public interface VolunteerService {

	public Volunteer newvolunteer(Volunteer volunteer);
	
	public Volunteer checkvolunteerlogin(String uname, String pwd);
	
	public List<Volunteer> viewAllVolunteers();
}
