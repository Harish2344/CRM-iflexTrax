package com.iflex_trax.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="billing")
public class Billing {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long billingID;
	
	 private long invoiceNumber;  
	 private double amount;  
	 private double tax;  
	 private double discount;  
	 private String paymentMethod;  
	 private String status;  
	 
	 
	 
	public long getBillingID() {
		return billingID;
	}
	public void setBillingID(long billingID) {
		this.billingID = billingID;
	}
	public long getInvoiceNumber() {
		return invoiceNumber;
	}
	public void setInvoiceNumber(long invoiceNumber) {
		this.invoiceNumber = invoiceNumber;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public double getTax() {
		return tax;
	}
	public void setTax(double tax) {
		this.tax = tax;
	}
	public double getDiscount() {
		return discount;
	}
	public void setDiscount(double discount) {
		this.discount = discount;
	}
	public String getPaymentMethod() {
		return paymentMethod;
	}
	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	 	 
}
