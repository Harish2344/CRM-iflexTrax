package com.iflex_trax.Controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import com.iflex_trax.Entity.Lead;
import com.iflex_trax.Services.LeadServices;
import com.iflex_trax.Utils.LeadEmail;

@Controller
public class LeadContoller {
    
	@Autowired
	private LeadServices leadServ;
	
	@Autowired
	private LeadEmail leademail;

	@RequestMapping("/show")
	public String saveLead(Lead lead) {
		
		return "show";
	}
	@RequestMapping("/leadSave")	
	public String leadController(Lead lead) {
		
		leademail.leademailSender(lead.getEmail(),"Welcome to our LEADS","Hello "+lead.getFname()  + " "
				+ ",Thank you for joining our CRM platform. We’re excited to have you on board as Lead!");
		
		leadServ.leadServices(lead);
		return "show";
		
	}
		
}
