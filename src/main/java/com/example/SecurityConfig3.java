package com.example;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.web.SecurityFilterChain;

import jakarta.servlet.DispatcherType;

//@Configuration
public class SecurityConfig3 {

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
			request.requestMatchers("/", "/error").permitAll();
			request.requestMatchers("/webjars/**").permitAll();
			
			request.requestMatchers("/dept/list", 	  "/dept/detail/{key}").permitAll();
			request.requestMatchers("/emp/list", 	  "/emp/detail/{key}").permitAll();
			request.requestMatchers("/salgrade/list", "/salgrade/detail/{key}").permitAll();
			
			request.anyRequest().authenticated();
//			request.anyRequest().permitAll();
		});
		
		http.formLogin(login -> {
			login.loginPage("/user/login");
			login.defaultSuccessUrl("/", true);
			login.failureHandler((request, response, e) -> {
				request.setAttribute("exception", e);
				request.getRequestDispatcher("/user/login-fail").forward(request, response);
			});
			
			login.permitAll();
		});
		
		http.logout(logout -> {
			logout.logoutUrl("/user/logout");
		});
		
		return http.build();
	}
	
}
