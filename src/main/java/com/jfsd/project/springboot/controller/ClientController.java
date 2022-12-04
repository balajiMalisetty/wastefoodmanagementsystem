package com.jfsd.project.springboot.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jfsd.project.springboot.model.Admin;
import com.jfsd.project.springboot.model.Donation;
import com.jfsd.project.springboot.model.Feedback;
import com.jfsd.project.springboot.model.Volunteer;
import com.jfsd.project.springboot.model.Citizen;
import com.jfsd.project.springboot.repository.DonationRepository;
import com.jfsd.project.springboot.service.AdminService;
import com.jfsd.project.springboot.service.DonationService;
import com.jfsd.project.springboot.service.EmailSenderService;
import com.jfsd.project.springboot.service.FeedbackService;
import com.jfsd.project.springboot.service.VolunteerService;
import com.jfsd.project.springboot.service.CitizenService;

@Controller
public class ClientController 
{
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private DonationService donationService;

	@Autowired
	private CitizenService citizenService;
	
	@Autowired
	private VolunteerService volunteerService;
	
	@Autowired
	 private EmailSenderService emailSenderService;
	
	@Autowired
	 private FeedbackService feedbackService;
	
	@GetMapping("/")
	
	public String mainhomedemo()
	{
		return "Home";
	}
	
	@GetMapping("/adminlogin")
	public ModelAndView adminlogindemo()
	{
		ModelAndView mv = new ModelAndView("adminlogin");
		
		return mv;
	}
	
	@GetMapping("/volunteerlogin")
	public ModelAndView volunteerlogindemo()
	{
		ModelAndView mv = new ModelAndView("volunteerlogin");
		
		return mv;
	}
	
	@GetMapping("/userlogin")
	public ModelAndView userlogindemo()
	{
		ModelAndView mv = new ModelAndView("userlogin");
		
		return mv;
	}
	
	@GetMapping("/feedback")
	public ModelAndView feedbackdemo()
	{
		ModelAndView mv = new ModelAndView("feedback");
		
		return mv;
	}
	
	@GetMapping("/adminhome")
	public ModelAndView adminhomedemo()
	{
		ModelAndView mv = new ModelAndView("adminhome");
		
		List<Donation> donlist = adminService.viewAllDonations();
		
		mv.addObject("donlist", donlist);
		
		return mv;
	}
	
	
	@GetMapping("/newdonation")
	public ModelAndView newdonationdemo(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		String uname = request.getParameter("uname");
		ModelAndView mv = new ModelAndView("newdonation", "don", new Donation());
		
		
		List<Citizen> userlist = citizenService.findAllByUser(uname);
		
		mv.addObject("userlist", userlist);
		mv.setViewName("newdonation");
		
		return mv;
	}
	
	@PostMapping("/adddonation")
	public ModelAndView adddonationdemo(@ModelAttribute("don")Donation donation)
	{
		donationService.adddonation(donation);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("newdonation");
		return mv;
	}
	
	@PostMapping("/addfeedback")
	public ModelAndView addfeedbackdemo(@ModelAttribute("feed")Feedback feedback)
	{
		feedbackService.addfeedback(feedback);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("thankyou");
		return mv;
	}
	
	@PostMapping("/newvolunteer")
	public ModelAndView newvolunteer(@ModelAttribute("vol")Volunteer volunteer)
	{
		volunteerService.newvolunteer(volunteer);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("addvolunteer");
		return mv;
	}
	
	@PostMapping("/checkadminlogin")
	public ModelAndView checkadminlogindemo(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		String auname = request.getParameter("auname");
		String apwd = request.getParameter("apwd");
		
		Admin admin =  adminService.checkadminlogin(auname, apwd);
		
		if(admin!=null)
		{
			
			HttpSession session = request.getSession();
			
			
			List<Donation> donlist = adminService.viewAllDonations();
			
			mv.addObject("donlist", donlist);
			mv.setViewName("redirect:adminhome");
			
		}
		else
		{
			mv.setViewName("adminlogin");
			mv.addObject("msg", "Login Failed");
		}
		
		return mv;
	}
	
	
	@PostMapping("/checkvolunteerlogin")
	public ModelAndView checkvolunteerlogindemo(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		String auname = request.getParameter("auname");
		String apwd = request.getParameter("apwd");
		
		Volunteer volt =  volunteerService.checkvolunteerlogin(auname, apwd);
		
		if(volt!=null)
		{
			
			HttpSession session = request.getSession();
			
			
			List<Donation> donlist = adminService.viewAllDonationsByVoltName(auname);
			
			mv.addObject("donlist", donlist);
			mv.setViewName("volunteerhome");
			
		}
		else
		{
			mv.setViewName("adminlogin");
			mv.addObject("msg", "Login Failed");
		}
		
		return mv;
	}
	
	@GetMapping("/getdonation")
	public ModelAndView getdonationdemo(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
				
			HttpSession session = request.getSession();
			
			
			List<Donation> donlist = citizenService.viewAllDonations();
			
			mv.addObject("donlist", donlist);
			mv.setViewName("redirect:gethome");
			
		
		return mv;
	}
	
	@GetMapping("/gethome")
	public ModelAndView gethomedemo()
	{
		ModelAndView mv = new ModelAndView("getfood");
		
		List<Donation> donlist = citizenService.findAllByAccepted();
		
		mv.addObject("donlist", donlist);
		
		return mv;
	}
	
	@GetMapping("/getRequestTokens")
	public ModelAndView getRequestTokensdemo()
	{
		ModelAndView mv = new ModelAndView("getRequestTokens");
		
		List<Donation> donlist = citizenService.findAllByRequested();
		List<Volunteer> voltlist = volunteerService.viewAllVolunteers();
		
		mv.addObject("donlist", donlist);
		mv.addObject("voltlist", voltlist);
		mv.setViewName("adminhomerequesttoken");
		return mv;
	}
	
	@PostMapping("/checkuserlogin")
	public ModelAndView checkuserlogindemo(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		ModelAndView mv1 = new ModelAndView("Home");
		
		String uname = request.getParameter("uname");
		String upwd = request.getParameter("upwd");
		
		Citizen citizen =  citizenService.checkuserlogin(uname, upwd);
		
		if(citizen!=null)
		{
			
			HttpSession session = request.getSession();
			List<Citizen> userlist = citizenService.findAllByUser(uname);
			
			mv1.addObject("userlist", userlist);
			mv1.setViewName("Home");
			return mv1;
			
		}
		else
		{
			mv.setViewName("userlogin");
			mv.addObject("msg", "Login Failed");
		}
		
		return mv;
	}
	
	
	
	
	
	@PostMapping("/updateStatus")
	public String updateStatuDonation(@ModelAttribute("donn") Donation donation)
	{
		
		donationService.adddonation(donation);
		
		String subjectMail ="Thank You For Using FooDoo\n"+"\nSend Your Feedback: \n"+"http://localhost:2022/feedback";
	    String subjectMessage = "Donator details\n"+"donator name: "+donation.getFullname()+"\ndonar email: "+donation.getMail()+"\ndonar address: "+donation.getAddress()+"\ndonator number: "+donation.getPhoneNumber()+"\nReceiver Details\n"+"receiver name: "+donation.getCitizen_name()+"\nreceiver mail: "+donation.getCitizen_mail()+"\nreceiver address: "+donation.getCitizen_address()+"\nreceiver number: "+donation.getCitizen_number()+"\nVolunteer Details\n"+"volunteer name: "+donation.getVolunteer_name()+"\nvolunteer mail"+donation.getVolunteer_mail();
	    this.emailSenderService.sendEmail(donation.getMail(), subjectMail, subjectMessage );
	    this.emailSenderService.sendEmail(donation.getCitizen_mail(), subjectMail, subjectMessage );
	    this.emailSenderService.sendEmail(donation.getVolunteer_mail(), subjectMail, subjectMessage );
	    return "thankyou";
	}
	
	
	
	
	@PostMapping("/updateRequests")
	public String updateRequestsDonation(@ModelAttribute("donn") Donation donation)
	{
		donationService.adddonation(donation);
		return "redirect:/gethome";
	}
	
	@GetMapping("/addvolunteer")
	@PostMapping
	public ModelAndView addvolunteer()
	{
		ModelAndView mv = new ModelAndView("addvolunteer");
		
		return mv;
	}
	@GetMapping("/userRegister")
	public ModelAndView userregisterdemo()
	{
		ModelAndView mv = new ModelAndView("userregister");
		
		return mv;
	}
	
	@PostMapping("/adduser")
	public ModelAndView adduserdemo(@ModelAttribute("use")Citizen citizen )
	{

		citizenService.adduser(citizen);


		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/userRegister");
		return mv;
	}
	
	

}
