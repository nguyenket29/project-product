package com.hau.ketnguyen.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hau.ketnguyen.entity.VerificationEntity;

@Repository
public interface VerificationRepository extends JpaRepository<VerificationEntity,Long> {
	VerificationEntity findOneByVerificationToken(String verificationToken);
}
