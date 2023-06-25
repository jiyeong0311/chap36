package com.example;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

import jakarta.servlet.DispatcherType;

@Configuration
public class SecurityConfig5 {
	
	@Autowired
	UserDetailsService userDetailsService;
	
	@Bean
	PasswordEncoder encoder() {
		return new BCryptPasswordEncoder();
	}

	@Bean
	public SecurityFilterChain filterChain(HttpSecurity http) throws Exception  {
		
		// CSRF(Cross-Site Request Forgery) 보호 기능을 비활성화
		http.csrf(csrf -> {
			csrf.disable();
		});
		
		// CORS(Cross-Origin Resource Sharing) 설정을 비활성화
		http.cors(cors -> {
			cors.disable();
		});
		
		// HTTP 요청에 대한 인가 설정
		http.authorizeHttpRequests(request -> {
			// FORWARD 디스패처 타입의 요청은 모두 허용
			request.dispatcherTypeMatchers(DispatcherType.FORWARD).permitAll();
			// permitAll()은 모든 사용자에게 접근을 허용
			request.requestMatchers("/", "/error").permitAll();
			request.requestMatchers("/webjars/**").permitAll();
			request.requestMatchers("/css/**").permitAll();
			request.requestMatchers("/img/**").permitAll();
			// footer 
			request.requestMatchers("/assets/**").permitAll();
			
			request.requestMatchers("/user/join").permitAll();
//			request.requestMatchers("/user/list").permitAll();
//			request.requestMatchers("/user/detail").permitAll();
//			request.requestMatchers("/user/update").permitAll();
//			request.requestMatchers("/user/delete").permitAll();
			
//			request.requestMatchers("/country/create").permitAll();
			request.requestMatchers("/country/list").permitAll();
			request.requestMatchers("/country/detail").permitAll();
//			request.requestMatchers("/country/update").permitAll();
//			request.requestMatchers("/country/delete").permitAll();
			request.requestMatchers("/country/success").permitAll();
//			
			request.requestMatchers("/language/detail").permitAll();
//			request.requestMatchers("/language/create").permitAll();
			
			
			request.requestMatchers("/board/list").permitAll();
//			request.requestMatchers("/board/write").permitAll();
			request.requestMatchers("/board/detail").permitAll();
//			request.requestMatchers("/board/update").permitAll();
//			request.requestMatchers("/board/delete").permitAll();
			
			request.requestMatchers("/dept/list", 	  "/dept/detail/{key}").permitAll();
			request.requestMatchers("/emp/list", 	  "/emp/detail/{key}").permitAll();
			request.requestMatchers("/salgrade/list", "/salgrade/detail/{key}").permitAll();
			request.requestMatchers("/board/list", "/board/detail/{key}").permitAll();
//			request.requestMatchers("/user/list", "/user/detail/{key}").permitAll();
			request.requestMatchers("/language/list", "/language/detail/{key}").permitAll();
			request.requestMatchers("/country/list", "/country/detail/{key}").permitAll();
			request.requestMatchers("/salgrade/list", "/salgrade/detail/{key}").permitAll();
			request.requestMatchers("/city/list", "/city/detail/{key}").permitAll();
			
			
			// USER 권한만 가능
			request.requestMatchers("/dept/create",
									"/dept/update",
									"/dept/delete").hasAnyRole("USER");
			// USER 권한만 가능
			request.requestMatchers("/board/write",
					"/board/update",
					"/board/delete").hasAnyRole("USER");
			// USER 권한만 가능
			request.requestMatchers("/emp/create",
					"/emp/update",
					"/emp/delete").hasAnyRole("USER");
			// USER 권한만 가능
			request.requestMatchers("/salgrade/create",
					"/salgrade/update",
					"/salgrade/delete").hasAnyRole("USER");
			// USER 권한만 가능
			request.requestMatchers("/city/create",
					"/city/update",
					"/city/delete").hasAnyRole("USER");
			// USER 권한만 가능
			request.requestMatchers("/country/create",
					"/country/update",
					"/country/delete").hasAnyRole("USER");
			// USER 권한만 가능
			request.requestMatchers("/language/create",
					"/language/update",
					"/language/delete").hasAnyRole("USER");
			
			// ADMIN 권한만 가능
			request.requestMatchers("/user/list",
					"/user/detail",
					"/user/update").hasAnyRole("ADMIN");
			
			
			// 모든 요청에 대해 인증된 사용자만 접근을 허용한다는 의미
			request.anyRequest().authenticated();
//			request.anyRequest().permitAll();
			
		});
		
		
		// 폼 기반 로그인 설정을 정의
		http.formLogin(login -> {
			// 로그인 페이지의 URL을 설정
			login.loginPage("/user/login");
			// 로그인 성공 시 기본적으로 리다이렉트할 URL을 설정
			login.defaultSuccessUrl("/", true);
			// 로그인 실패 시 처리를 정의
			login.failureHandler((request, response, e) -> {
				request.setAttribute("exception", e);
				request.getRequestDispatcher("/user/login-fail").forward(request, response);
			});
			
			// 로그인 페이지에 대한 접근을 모두 허용
			login.permitAll();
		});
		
		// 로그아웃 설정을 정의
		http.logout(logout -> {
			logout.logoutUrl("/user/logout");
		});
		
		
		// remeber 기능 (true defalut = 14일)
		http.rememberMe(remember ->{
			remember.alwaysRemember(false);
			// 초단위로 유지되는 시간 설정
			remember.tokenValiditySeconds(60*60*24);
			remember.userDetailsService(userDetailsService);
		});
		
		return http.build();
	}
	
}
