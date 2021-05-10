package com.hau.ketnguyen.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hau.ketnguyen.converter.VerificationConverter;
import com.hau.ketnguyen.dto.VerificationDTO;
import com.hau.ketnguyen.entity.UserEntity;
import com.hau.ketnguyen.entity.VerificationEntity;
import com.hau.ketnguyen.repository.UserRepository;
import com.hau.ketnguyen.repository.VerificationRepository;
import com.hau.ketnguyen.service.IVerificationService;

@Service
public class VerificationServiceImpl implements IVerificationService {
	@Autowired
	private VerificationRepository verificationRepository;

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private VerificationConverter verificationConverter;

	@Override
	public VerificationDTO save(VerificationDTO dto) {
		VerificationEntity entity = new VerificationEntity();
		if (dto.getId() != null) {
			VerificationEntity oldVerification = verificationRepository.findOne(dto.getId());
			entity = verificationConverter.toEntity(dto, oldVerification);
		} else {
			entity = verificationConverter.toEntity(dto);
		}
		UserEntity user = userRepository.findOneByUserNameAndStatus(dto.getUser().getUsername(), 1);
		entity.setUser(user);
		return verificationConverter.toDTO(verificationRepository.save(entity));
	}

	@Override
	public VerificationDTO finByVerificationToken(String verificationToken) {
		VerificationEntity verificationEntity = verificationRepository.findOneByVerificationToken(verificationToken);
		return verificationConverter.toDTO(verificationEntity);
	}

}
