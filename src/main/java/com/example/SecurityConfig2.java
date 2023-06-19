package com.example;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.web.SecurityFilterChain;

import jakarta.servlet.DispatcherType;

//@Configuration
public class SecurityConfig2 {

	@Bean
	public SecurityFilterChain filterChain(HttpSecurity http) throws Exception  {
		http.csrf(csrf -> {
			csrf.disable();
		});
		
		http.cors(cors -> {
			cors.disable();
		});
		
		http.authorizeHttpRequests(request -> {
			request.dispatcherTypeMatchers(DispatcherType.FORWARD).permitAll();
			request.requestMatchers("/").permitAll();
			
			request.anyRequest().authenticated();
//			request.anyRequest().permitAll();
		});
		
		http.formLogin(login -> {
			login.loginPage("/user/login");
			
			login.permitAll();
		});
		
		http.logout(logout -> {
			logout.logoutUrl("/user/logout");
		});
		
		return http.build();
	}
	
}
