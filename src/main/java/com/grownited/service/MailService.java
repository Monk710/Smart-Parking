package com.grownited.service;

import org.apache.logging.log4j.message.SimpleMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class MailService {

	@Autowired
	JavaMailSender mailSender;

	public void sendWelcomeMail(String email, String firstName) {
		String subject = "Welcome to Smart Parking System";
		String body = "Hey " + firstName
				+ ", We're excited to have you on board. If you have any questions, feel free to reach out – we’re here to help!";
		String from = "tejasshah2k19@gmail.com";

		// logic
		SimpleMailMessage message = new SimpleMailMessage();

		message.setFrom(from);
		message.setTo(email);
		message.setSubject(subject);
		message.setText(body);

		mailSender.send(message);

	}

}