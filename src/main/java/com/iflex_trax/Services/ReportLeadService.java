package com.iflex_trax.Services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.iflex_trax.Entity.Lead;

@Service
public interface ReportLeadService {

	public List<Lead> reportLeadservices(Lead lead);
	
	public void deleteLeadID(long id);
	
	public Lead updateLeadServices(long id);
	public void updateLead(Lead lead);
}
