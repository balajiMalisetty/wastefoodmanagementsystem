package com.jfsd.project.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.jfsd.project.springboot.model.Admin;
import com.jfsd.project.springboot.model.Donation;
import com.jfsd.project.springboot.model.Volunteer;

@Repository
public interface VolunteerRepository extends JpaRepository<Volunteer, Integer> 
{

	@Query("SELECT t from Donation t where t.status = 'available'")
	public List<Donation> findAllByAccepted();
	
	@Query("SELECT t from Donation t where t.requests = 'requested'")
	public List<Donation> findAllByRequested();
	
	@Query("select a from Volunteer a where fullname=?1 and password=?2")
	public Volunteer checkvolunteerlogin(String uname, String pwd);
	
}
