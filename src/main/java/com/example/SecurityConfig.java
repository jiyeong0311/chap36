package com.example;

import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

//@Configuration
public class SecurityConfig {

	
	@Bean
	PasswordEncoder encoder() {
		return new BCryptPasswordEncoder();
	}
	
	
	@Bean
	public SecurityFilterChain filterChain(HttpSecurity http) throws Exception  {
		http.csrf(csrf -> {
			csrf.disable();
		});
		
		http.cors(cors -> {
			cors.disable();
		});
		
		http.authorizeHttpRequests(request -> {
			request.anyRequest().permitAll();
		});
		
		return http.build();
	}
	
}
