package com.jfsd.project.springboot.service;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jfsd.project.springboot.model.Admin;
import com.jfsd.project.springboot.model.Donation;
import com.jfsd.project.springboot.model.Citizen;
import com.jfsd.project.springboot.repository.DonationRepository;
import com.jfsd.project.springboot.repository.CitizenRepository;


@Service
public class CitizenServiceImpl implements CitizenService{

	@Autowired
	private CitizenRepository citizenRepository;
	
	@Autowired
	private DonationRepository donationRepository;
	
	@Override
	public Citizen adduser(Citizen citizen) {
		return citizenRepository.save(citizen);
		
	}
	
	@Override
	public Citizen checkuserlogin(String uname, String upwd)
	{
		
		return citizenRepository.checkuserlogin(uname, upwd);
	}
	
	@Override
	public List<Donation> viewAllDonations() {
		
		 return (List<Donation>) donationRepository.findAll();
	}
	@Override
	public List<Donation> findAllByAccepted() {
		
		 return (List<Donation>) donationRepository.findAllByAccepted();
	}
	@Override
	public List<Donation> findAllByRequested() {
		
		 return (List<Donation>) donationRepository.findAllByRequested();
	}
	
	@Override
	public List<Citizen> findAllByUser(String uname) {
		
		 return (List<Citizen>) CitizenRepository.findAllByUser(uname);
	}

}
