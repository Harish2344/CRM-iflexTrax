package com.iflex_trax.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.iflex_trax.Entity.Lead;
import com.iflex_trax.Services.ReportLeadService;
import com.iflex_trax.Utils.LeadEmail;

@Controller
public class ReportLeadController {

	@Autowired
	private ReportLeadService reportServ;
	
	@Autowired
	private LeadEmail leademail;
	
	@RequestMapping("/listall")
	public String leadListAll(Lead lead,ModelMap model) {
        List<Lead> leaddata = reportServ.reportLeadservices(lead);
		model.addAttribute("leaddata",leaddata);
		return "LeadList";
	}
	////Delete features..................*
	
	@RequestMapping("/deleteLead")
	public String deleteLead(@RequestParam("id")long id,Lead lead,ModelMap model) {
		reportServ.deleteLeadID(id);
		
        List<Lead> leaddata = reportServ.reportLeadservices(lead);
		model.addAttribute("leaddata",leaddata);
		return "LeadList";
	}
	////Update features...................*
	
	@RequestMapping("/updateLead")
	public String UpdateLead(@RequestParam("id")long id,ModelMap model) {
		
		Lead lead1 = reportServ.updateLeadServices(id);
		model.addAttribute("lead1",lead1);
		return "LeadUpdate";
		
	}
	@RequestMapping("/updateLeadData")
	public String updateLeadData(Lead lead,ModelMap model) {
		
		reportServ.updateLead(lead);
		List<Lead> leaddata = reportServ.reportLeadservices(lead);
		model.addAttribute("leaddata",leaddata);
		

		leademail.leademailSender(lead.getEmail(),"Welcome to our LEADS","Hello "+lead.getFname()  + " ,Thank you for Updating your details. "
				+ "We’re excited to have you on board as Lead!");
		
		return "LeadList";
		
}
	
}
