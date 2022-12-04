package com.jfsd.project.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.jfsd.project.springboot.model.Donation;
import com.jfsd.project.springboot.model.Feedback;

@Repository
public interface FeedbackRepository extends JpaRepository<Feedback, Integer> 
{

}
