package com.jfsd.project.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jfsd.project.springboot.model.Admin;
import com.jfsd.project.springboot.model.Donation;
import com.jfsd.project.springboot.model.Volunteer;
import com.jfsd.project.springboot.repository.VolunteerRepository;


@Service
public class VolunteerServiceImpl implements VolunteerService{

	@Autowired
	private VolunteerRepository VolunteerRepository;
	@Override
	public Volunteer newvolunteer(Volunteer volunteer) {
		return VolunteerRepository.save(volunteer);
		
	}
	
	@Override
	public Volunteer checkvolunteerlogin(String uname, String pwd)
	{
		
		return VolunteerRepository.checkvolunteerlogin(uname, pwd);
	}
	
	@Override
	public List<Volunteer> viewAllVolunteers() {
		
		 return (List<Volunteer>) VolunteerRepository.findAll();
	}

}
