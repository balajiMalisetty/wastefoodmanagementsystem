package com.jfsd.project.springboot.service;

import java.util.List;

import com.jfsd.project.springboot.model.Admin;
import com.jfsd.project.springboot.model.Donation;

public interface AdminService {

	public Admin checkadminlogin(String uname, String pwd);
	public List<Donation> viewAllDonations();
	public List<Donation> viewAllDonationsByRequests();
	public List<Donation> viewAllDonationsByVoltName(String auname);
	
}
