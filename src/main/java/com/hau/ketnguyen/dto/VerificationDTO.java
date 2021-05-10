package com.hau.ketnguyen.dto;

import java.util.UUID;

public class VerificationDTO extends BaseDTO<VerificationDTO> {
	private String verificationToken;
	private UserDTO user;

	public String getVerificationToken() {
		return verificationToken;
	}

	public void setVerificationToken(String verificationToken) {
		this.verificationToken = verificationToken;
	}

	public UserDTO getUser() {
		return user;
	}

	public void setUser(UserDTO user) {
		this.user = user;
	}
	
	public VerificationDTO() {
	
	}

	public VerificationDTO(UserDTO user) {
		this.verificationToken = UUID.randomUUID().toString();
		this.user = user;
	}
	
}
