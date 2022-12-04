package com.jfsd.project.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jfsd.project.springboot.model.Donation;
import com.jfsd.project.springboot.model.Feedback;
import com.jfsd.project.springboot.repository.CitizenRepository;
import com.jfsd.project.springboot.repository.FeedbackRepository;


@Service
public class FeedbackServiceImpl implements FeedbackService{

	@Autowired
	private FeedbackRepository feedbackRepository;
	
	@Override
	public Feedback addfeedback(Feedback feedback) {
		// TODO Auto-generated method stub
		return feedbackRepository.save(feedback);
	}

}
