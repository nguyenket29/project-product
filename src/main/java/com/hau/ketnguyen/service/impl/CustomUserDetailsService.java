package com.hau.ketnguyen.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.hau.ketnguyen.constant.Constant;
import com.hau.ketnguyen.dto.CustomUser;
import com.hau.ketnguyen.entity.RoleEntity;
import com.hau.ketnguyen.entity.UserEntity;
import com.hau.ketnguyen.repository.UserRepository;

@Service
public class CustomUserDetailsService implements UserDetailsService {
	@Autowired
	private UserRepository userRepository;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		UserEntity userEntity = userRepository.findOneByUserNameAndStatus(username, Constant.ACTIVE_STATUS);

		if (userEntity == null) {
			throw new UsernameNotFoundException(username);
		}

		List<GrantedAuthority> authorities = new ArrayList<>();
		for (RoleEntity roleEnity : userEntity.getRoles()) {
			authorities.add(new SimpleGrantedAuthority(roleEnity.getCode()));
		}
		// put info vào security để duy trì info khi user login vào hệ thống
		CustomUser myUser = new CustomUser(userEntity.getUserName(), userEntity.getPassword(), true, true, true, true,
				authorities);
		myUser.setFullName(userEntity.getFullName());

		return myUser;
	}
}
