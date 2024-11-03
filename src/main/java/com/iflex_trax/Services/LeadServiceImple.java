package com.iflex_trax.Services;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iflex_trax.Entity.Lead;
import com.iflex_trax.Repositary.LeadRepositary;

@Service
public class LeadServiceImple implements LeadServices {
    
	@Autowired
	private LeadRepositary leadRepo;
	
	@Override
	public void leadServices(Lead lead) {
		leadRepo.save(lead);

	}
	
}
