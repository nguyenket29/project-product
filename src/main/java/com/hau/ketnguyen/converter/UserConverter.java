package com.hau.ketnguyen.converter;

import org.springframework.stereotype.Component;

import com.hau.ketnguyen.dto.UserDTO;
import com.hau.ketnguyen.entity.UserEntity;

@Component
public class UserConverter {
	public UserEntity toEntity(UserDTO userDTO) {
		UserEntity userEntity = new UserEntity();
		userEntity.setFullName(userDTO.getFullname());
		userEntity.setUserName(userDTO.getUsername());
		userEntity.setPassword(userDTO.getPassword());
		userEntity.setConfirmPassword(userDTO.getConfirmPassword());
		userEntity.setEmail(userDTO.getEmail());
		userEntity.setStatus(userDTO.getStatus());
		userEntity.setRoleId(userDTO.getRoleId());
		return userEntity;
	}
	
	public UserEntity toEntity(UserDTO userDTO,UserEntity userEntity) {
		userEntity.setFullName(userDTO.getFullname());
		userEntity.setUserName(userDTO.getUsername());
		userEntity.setPassword(userDTO.getPassword());
		userEntity.setConfirmPassword(userDTO.getConfirmPassword());
		userEntity.setEmail(userDTO.getEmail());
		userEntity.setStatus(userDTO.getStatus());
		userEntity.setRoleId(userDTO.getRoleId());
		return userEntity;
	}
	
	public UserDTO toDTO(UserEntity userEntity) {
		UserDTO userDTO = new UserDTO();
		userDTO.setId(userEntity.getId());
		userDTO.setFullname(userEntity.getFullName());
		userDTO.setUsername(userEntity.getFullName());
		userDTO.setPassword(userEntity.getPassword());
		userDTO.setConfirmPassword(userEntity.getPassword());
		userDTO.setEmail(userEntity.getEmail());
		userDTO.setRoleId(userEntity.getRoleId());
		userDTO.setStatus(userEntity.getStatus());
		return userDTO;
	}
}
