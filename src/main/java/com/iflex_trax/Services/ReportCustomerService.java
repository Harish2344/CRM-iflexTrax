package com.iflex_trax.Services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.iflex_trax.Entity.Customer;


@Service
public interface ReportCustomerService {

	public List<Customer> reportcustomerservices(Customer customer);
	
	public void deleteCustomerID(long id);
	
	public Customer updateCustomerServices(long id);
	public void updateCustomer(Customer customer);
}
