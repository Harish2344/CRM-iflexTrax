package com.iflex_trax.Controller;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import com.iflex_trax.Entity.Billing;
import com.iflex_trax.Services.BillingServices;



@Controller
public class BillingContoller {
    
	@Autowired
	private BillingServices billServ;

	@RequestMapping("/billing")
	public String saveBilling(Billing billing) {
		
		return "Billing";
	}
	@RequestMapping("/billingSave")	
	public String billingController(Billing billing) {
		
		billServ.billingServices(billing);
		
		return "Billing";
		
	}	
}
