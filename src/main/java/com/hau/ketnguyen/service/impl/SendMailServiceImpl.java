package com.hau.ketnguyen.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class SendMailServiceImpl {
	@Autowired
    private JavaMailSender mailSender;

	public void sendMail(String toAddress, String fromAddress, String subject, String msgBody) {
		SimpleMailMessage mailMessage = new SimpleMailMessage();
		mailMessage.setTo(toAddress);
		mailMessage.setSubject(subject);
		mailMessage.setFrom(fromAddress);
		mailMessage.setText(msgBody);
		mailSender.send(mailMessage);
	}
}
