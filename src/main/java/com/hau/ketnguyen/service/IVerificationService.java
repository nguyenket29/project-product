package com.hau.ketnguyen.service;

import com.hau.ketnguyen.dto.VerificationDTO;

public interface IVerificationService {
	VerificationDTO save(VerificationDTO dto);
	VerificationDTO finByVerificationToken(String verificationToken);
}
