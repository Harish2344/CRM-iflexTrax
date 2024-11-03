package com.iflex_trax.Services;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iflex_trax.Entity.Billing;

import com.iflex_trax.Repositary.BillingRepositary;


@Service
public class BillingServiceImple implements BillingServices{
    
	@Autowired
	private BillingRepositary billRepo;
    
	@Override
	public void billingServices(Billing billing) {
		billRepo.save(billing);
		
	}
	
}
