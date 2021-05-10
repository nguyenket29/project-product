package com.hau.ketnguyen.service;

import com.hau.ketnguyen.dto.UserDTO;
import com.hau.ketnguyen.entity.UserEntity;

public interface IUserService {
	UserEntity findByUsername(String username);
	UserDTO insert(UserDTO userDTO);
	UserDTO findById(Long id);
}	
