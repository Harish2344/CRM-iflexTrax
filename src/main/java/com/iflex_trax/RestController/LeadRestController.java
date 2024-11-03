package com.iflex_trax.RestController;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.iflex_trax.Entity.Lead;
import com.iflex_trax.Repositary.LeadRepositary;
import com.iflex_trax.Utils.LeadEmail;

@RestController
@RequestMapping("/leadapi")      //http://localhost:8080/api
public class LeadRestController {
    
	@Autowired
	private  LeadRepositary leadRepoApi;
	@Autowired
	private LeadEmail leademail;
	
	@PostMapping
	public void postLeadApiCreate(@RequestBody Lead lead) {
		leademail.leademailSender(lead.getEmail(),"Welcome to our LEADS","Hello "+lead.getFname()  + " "
				+ ",Thank you for joining our CRM platform. We’re excited to have you on board as Lead!");
		
		leadRepoApi.save(lead);
	}
	
	@GetMapping
	public List<Lead>  getAllLeadapiRead(){
		
		List<Lead> leaddata = leadRepoApi.findAll();
		return leaddata;	
	}
	
	@PutMapping
	public void putLeadApiUpdate(@RequestBody Lead lead) {
		
		leademail.leademailSender(lead.getEmail(),"Welcome to our LEADS","Hello "+lead.getFname()  + " ,Thank you for Updating your details. "
				+ "We’re excited to have you on board as Lead!");
		
		leadRepoApi.save(lead);
	}
	
	@DeleteMapping("/{id}")
	public void deleteLeadApi(@PathVariable("id")long id) {
		
		leadRepoApi.deleteById(id);
	}
	
	

}
