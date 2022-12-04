package com.jfsd.project.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.jfsd.project.springboot.model.Admin;
import com.jfsd.project.springboot.model.Donation;
import com.jfsd.project.springboot.model.Citizen;

@Repository
public interface CitizenRepository extends JpaRepository<Citizen, Integer> 
{

	@Query("select a from Citizen a where fullname=?1 and password=?2")
	public Citizen checkuserlogin(String uname, String upwd);
	
	@Query("select a from Citizen a where fullname=?1")
	public static List<Citizen> findAllByUser(String uname) {
		// TODO Auto-generated method stub
		return null;
	}
}
