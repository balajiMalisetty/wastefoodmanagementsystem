package com.jfsd.project.springboot.service;


import java.util.List;

import com.jfsd.project.springboot.model.Donation;
import com.jfsd.project.springboot.model.Citizen;

public interface CitizenService {

	public Citizen adduser(Citizen citizen);
	public Citizen checkuserlogin(String uname, String upwd);
	public List<Donation> viewAllDonations();
	public List<Donation> findAllByAccepted();
	public List<Donation> findAllByRequested();
	public List<Citizen> findAllByUser(String uname);
	
	
}
