package com.iflex_trax.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iflex_trax.Entity.Lead;
import com.iflex_trax.Repositary.ReportLeadRepo;



@Service
public class ReportLeadServImple implements ReportLeadService {
    
	@Autowired
	private ReportLeadRepo reportLeadRepo;
	
		
	@Override
	public List<Lead> reportLeadservices(Lead lead) {
		List<Lead> leaddata = reportLeadRepo.findAll();
		
		return leaddata;
	}
	//// Delete...................***
	
	@Override
	public void deleteLeadID(long id) {
		reportLeadRepo.deleteById(id);
		
	}
     //// Update...................***
	
	@Override
	public Lead updateLeadServices(long id) {
		Optional<Lead> findById = reportLeadRepo.findById(id);
		
		Lead lead1 = findById.get(); 
		return lead1;
	}

	@Override
	public void updateLead(Lead lead) {
		
		reportLeadRepo.save(lead);
		
	}

}
