package com.iflex_trax.Services;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iflex_trax.Entity.Customer;
import com.iflex_trax.Repositary.CustomerRepositary;

     

@Service
public class CustomerServiceImple implements CustomerService {
   
	@Autowired
	private CustomerRepositary custRepo;
	
	@Override
	public void customerServices(Customer customer) {
		
	custRepo.save(customer);
	
	
	}
    
	

	



}
