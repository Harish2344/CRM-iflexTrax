package com.iflex_trax.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.iflex_trax.Entity.Customer;
import com.iflex_trax.Repositary.ReportCustomerRepo;

@Service
public class ReportCustomerServImple implements ReportCustomerService{
    
	@Autowired
	private ReportCustomerRepo reportCustRepo;
		
	@Override 
	public List<Customer>  reportcustomerservices(Customer customer) {
		List<Customer> customdata = reportCustRepo.findAll();
		
		return customdata;
	}
	//// Delete............................***
	
	@Override
	public void deleteCustomerID(long id) {
		reportCustRepo.deleteById(id);
		
	}
	//// Update.............................***
	
	@Override
	public Customer updateCustomerServices(long id) {
		  
		Optional<Customer> findById = reportCustRepo.findById(id);
		    Customer customer1 = findById.get();
		
		return customer1;
   }

	@Override
	public void updateCustomer(Customer customer) {
		
		reportCustRepo.save(customer);
	}
		
}
