package com.hau.ketnguyen.converter;

import org.springframework.stereotype.Component;

import com.hau.ketnguyen.dto.VerificationDTO;
import com.hau.ketnguyen.entity.VerificationEntity;

@Component
public class VerificationConverter {
	public VerificationDTO toDTO(VerificationEntity entity) {
		VerificationDTO dto = new VerificationDTO();
		dto.setVerificationToken(entity.getVerificationToken());
		return dto;
	}
	
	public VerificationEntity toEntity(VerificationDTO dto) {
		VerificationEntity entity = new VerificationEntity();
		entity.setVerificationToken(dto.getVerificationToken());
		return entity;
	}
	
	public VerificationEntity toEntity(VerificationDTO dto,VerificationEntity entity) {
		entity.setVerificationToken(dto.getVerificationToken());
		return entity;
	}
}
