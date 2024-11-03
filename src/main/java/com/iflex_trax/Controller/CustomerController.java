package com.iflex_trax.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iflex_trax.Entity.Customer;
import com.iflex_trax.Services.CustomerService;
import com.iflex_trax.Utils.CustomerEmail;


@Controller
public class CustomerController {
    
	@Autowired
	private CustomerService custServ;
	
	@Autowired
	private CustomerEmail customeremail;
	
	
	@RequestMapping("/customer")
	public String customerSave(Customer customer) {
		
		return "Custom";
		
	}
	@RequestMapping("/CustomerSave")	
	public String customerController(Customer customer) {
		
		customeremail.customeremailSender(customer.getEmail_id(),"Welcome to Our CRM CUSTOMER",
				"Hi " +customer.getFirstname() +" ,Welcome to our CRM platform! We’re thrilled to have you on board!! "
				+"Our goal is to support your growth and help you reach new heights!"
						      +"Best regards,CRM Manager");
		
		custServ.customerServices(customer);
		return "Custom";
		
	}
}
