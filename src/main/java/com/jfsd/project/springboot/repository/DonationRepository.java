package com.jfsd.project.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.jfsd.project.springboot.model.Donation;

@Repository
public interface DonationRepository extends JpaRepository<Donation, Integer> 
{

	@Query("SELECT t from Donation t where t.status = 'available'")
	public List<Donation> findAllByAccepted();
	
	@Query("SELECT t from Donation t where t.requests = 'requested'")
	public List<Donation> findAllByRequested();
	
	@Query("SELECT t from Donation t where t.requests = 'accept'")
	public List<Donation> findAllByRequests();
	
	@Query("select t from Donation t where Volunteer_name=?1")
	public List<Donation> findAllByVoltName(String auname);
}
