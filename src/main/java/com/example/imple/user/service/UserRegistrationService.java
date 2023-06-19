package com.example.imple.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.example.imple.user.mapper.UserMapper;
import com.example.imple.user.model.User;
import com.example.imple.user.model.UserRegistrationDTO;

@Service
public class UserRegistrationService {

	@Autowired
	UserMapper mapper;
	
	@Autowired
	PasswordEncoder passwordEncoder;
	

	
	public void registerUser (UserRegistrationDTO registrationDTO) {
		
		String encodedPassword = passwordEncoder.encode(registrationDTO.getPassword());
		

		
		User user = User.builder()
						.id(registrationDTO.getId())
						.password(encodedPassword)
						.name(registrationDTO.getName())
						.birth(registrationDTO.getBirth())
						.gender(registrationDTO.getGender())
						.email(registrationDTO.getEmail())
						.address(registrationDTO.getAddress())
						.build();
		
		mapper.insertUser(user);
		
		

		
	}
	
}
