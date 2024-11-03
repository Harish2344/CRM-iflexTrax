package com.iflex_trax.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.iflex_trax.Entity.Customer;

import com.iflex_trax.Services.ReportCustomerService;
import com.iflex_trax.Utils.CustomerEmail;


@Controller
public class ReportCustomerController {

	@Autowired
	private ReportCustomerService reportCustServ;
	
	@Autowired
	private CustomerEmail customeremail;
	
	@RequestMapping("/customerlist")
	public String leadListAll(Customer customer,ModelMap model) {
		
        List<Customer> customdata = reportCustServ.reportcustomerservices(customer);
		model.addAttribute("customdata",customdata);
		
		return "CustomerList";
	}
	////Delete features..................*
	
	@RequestMapping("/deleteCustomer")
	public String deleteLead(@RequestParam("id")long id,Customer customer,ModelMap model) {
		
		 reportCustServ.deleteCustomerID(id);
		 
        List<Customer> customdata = reportCustServ.reportcustomerservices(customer);
  		model.addAttribute("customdata",customdata);
  		
  		return "CustomerList";	                
		               
      
	}
//	////Update features...................*
	
	@RequestMapping("/updateCustomers")
	public String UpdateCustomer(@RequestParam("id")long id,ModelMap model) {
		
		Customer customer1 = reportCustServ.updateCustomerServices(id);
		
		model.addAttribute("customer1",customer1);
		return "CustomerUpdate";
		
	}
	
	
	@RequestMapping("/updateCustomerData")
	public String updateCustomerData(Customer customer,ModelMap model) {
				reportCustServ.updateCustomer(customer);
	
		List<Customer> customdata = reportCustServ.reportcustomerservices(customer);
		model.addAttribute("customdata",customdata);
		
		customeremail.customeremailSender(customer.getEmail_id(),"Welcome to Our CRM CUSTOMER",
				"Hi " +customer.getFirstname() +" ,Welcome to our CRM platform! Thanks for updating your details. "
				+"Our goal is to support your growth and help you reach new heights!"
						
						      +"Best regards,CRM Manager");
  		
		return "CustomerList";	
		
}

}
