package com.hau.ketnguyen.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.hau.ketnguyen.constant.Constant;
import com.hau.ketnguyen.converter.UserConverter;
import com.hau.ketnguyen.dto.UserDTO;
import com.hau.ketnguyen.entity.UserEntity;
import com.hau.ketnguyen.repository.RoleRepository;
import com.hau.ketnguyen.repository.UserRepository;
import com.hau.ketnguyen.service.IUserService;

@Service
public class UserServiceImpl implements IUserService {
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private RoleRepository roleRepository;
	@Autowired
	private UserConverter userConverter;
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	@Override
	public UserEntity findByUsername(String username) {
		return userRepository.findOneByUserNameAndStatus(username, Constant.ACTIVE_STATUS);
	}

	@Override
	public UserDTO insert(UserDTO userDTO) {
		UserEntity userEntity = new UserEntity();
		if (userDTO.getId() != null) {
			UserEntity oldUser = userRepository.findOne(userDTO.getId());
			userEntity = userConverter.toEntity(userDTO,oldUser);
		} else {
			userDTO.setRoleId(Long.parseLong("2"));
			userEntity = userConverter.toEntity(userDTO);
			userEntity.setStatus(0);
			userEntity.setPassword(bCryptPasswordEncoder.encode(userDTO.getPassword()));
			userEntity.setConfirmPassword(bCryptPasswordEncoder.encode(userDTO.getConfirmPassword()));
			userEntity.setRoles(new ArrayList<>(roleRepository.findById(Long.parseLong("2"))));
		}
		return userConverter.toDTO(userRepository.save(userEntity));
	}

	@Override
	public UserDTO findById(Long id) {
		UserEntity user = userRepository.findOne(id);
		return userConverter.toDTO(user);
	}

}
