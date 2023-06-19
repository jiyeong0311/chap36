package com.example.imple.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.example.imple.user.mapper.UserMapper;
import com.example.imple.user.model.User;
import com.example.imple.user.model.UserDTO;

@Service
public class UserJoinService {

	@Autowired
	UserMapper mapper;
	
	@Autowired
	PasswordEncoder passwordEncoder;
	

	
	public void joinUser (UserDTO dto) {
		
		String encodedPassword = passwordEncoder.encode(dto.getPassword());
		
		
		
		User user = User.builder()
						.id(dto.getId())
						.password(encodedPassword)
						.name(dto.getName())
						.birth(dto.getBirth())
						.gender(dto.getGender())
						.email(dto.getEmail())
						.address(dto.getAddress())
						.tel(dto.getTel())
						.build();
		
		mapper.insertUser(user);
		
		

		
	}



	
	
}
