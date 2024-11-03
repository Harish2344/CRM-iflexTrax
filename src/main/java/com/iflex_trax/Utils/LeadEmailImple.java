package com.iflex_trax.Utils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

@Component
public class LeadEmailImple implements LeadEmail {

	@Autowired
	private JavaMailSender leadsender;
          	
	@Override
	public void leademailSender(String to, String sub, String text) {
		
		SimpleMailMessage msg=new SimpleMailMessage();
		msg.setTo(to);
		msg.setSubject(sub);
		msg.setText(text);

		leadsender.send(msg);
		
	}

}
