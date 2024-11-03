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

import com.iflex_trax.Entity.Customer;
import com.iflex_trax.Repositary.CustomerRepositary;
import com.iflex_trax.Utils.CustomerEmail;

@RestController
@RequestMapping("/customerapi")      //http://localhost:8080/customer
public class CustomerRestController {
  
	@Autowired
	private  CustomerRepositary customRepoApi;
	
	@Autowired
	private CustomerEmail customeremail;
	
	@PostMapping
	public void postCustomerCreate(@RequestBody Customer customer) {
		customeremail.customeremailSender(customer.getEmail_id(),"Welcome to Our CRM CUSTOMER",
				"Hi " +customer.getFirstname() +" ,Welcome to our CRM platform! We’re thrilled to have you on board!! "
				+"Our goal is to support your growth and help you reach new heights!"
						      +"Best regards,CRM Manager");
		
		customRepoApi.save(customer);
	}
	
	@GetMapping
   public List<Customer> getCustomerRead(){
		
		List<Customer> customerdata = customRepoApi.findAll();
		
	    return customerdata;
	   
   }
	@PutMapping
	public void putCustomerUpdate(@RequestBody Customer customer) {
		customeremail.customeremailSender(customer.getEmail_id(),"Welcome to Our CRM CUSTOMER",
				"Hi " +customer.getFirstname() +" ,Welcome to our CRM platform! Thanks for updating your details. "
				+"Our goal is to support your growth and help you reach new heights!"
						
						      +"Best regards,CRM Manager");
		customRepoApi.save(customer);
	}
	@DeleteMapping("/{id}")
	public  void deleteCustomer(@PathVariable("id")long id) {
		
		customRepoApi.deleteById(id);
	}
	
	
	
	
	
}