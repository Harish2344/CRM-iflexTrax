package com.iflex_trax.Utils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

@Component
public class CustomerEmailImple implements CustomerEmail {

	@Autowired
	private JavaMailSender customersender;
          	
	@Override
	public void customeremailSender(String to, String sub, String text) {
		
		SimpleMailMessage send=new SimpleMailMessage();
		send.setTo(to);
		send.setSubject(sub);
		send.setText(text);
		
		customersender.send(send);
	}
	
}
