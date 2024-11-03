package com.iflex_trax.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="leads")
public class Lead {
    
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	private String fname;
	private String lname;
	private String email;
	private long mobile;
	private String source;                         
    private String leadType;                   
    private long estimatedValue;
    
    
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getMobile() {
		return mobile;
	}
	public void setMobile(long mobile) {
		this.mobile = mobile;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getLeadType() {
		return leadType;
	}
	public void setLeadType(String leadType) {
		this.leadType = leadType;
	}
	public long getEstimatedValue() {
		return estimatedValue;
	}
	public void setEstimatedValue(long estimatedValue) {
		this.estimatedValue = estimatedValue;
	} 
	
    
}
