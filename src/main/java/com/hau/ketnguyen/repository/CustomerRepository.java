package com.hau.ketnguyen.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hau.ketnguyen.entity.CustomerEntity;

@Repository("customerRepository")
public interface CustomerRepository extends JpaRepository<CustomerEntity, Long> {
	CustomerEntity findById(Long id);
}
