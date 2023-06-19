package com.example.imple.user.service;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class BCryptPasswordEncoderTest {

	BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
	
	@Test
	void encode() {
		var encodeStr = encoder.encode("1234");
		System.out.println(encodeStr);
	}
	// $2a$10$JOQZVdp5eBF8UoX2jfx5e.I5.ptSZGw/U5Z.D9D5heLOZ8WbV2sL6
	// $2a$10$FDrDfY4asH6P0FDfRzY1iehIHPM9BYCk3VV2fCVXqc/6Kik7X9pwC
	
	@Test
	void matches() {
		var success = encoder.matches("1234", "$2a$10$JOQZVdp5eBF8UoX2jfx5e.I5.ptSZGw/U5Z.D9D5heLOZ8WbV2sL6");
		System.out.println(success);
		assertThat(success).isEqualTo(true);
		
		success = encoder.matches("1234", "$2a$10$FDrDfY4asH6P0FDfRzY1iehIHPM9BYCk3VV2fCVXqc/6Kik7X9pwC");
		System.out.println(success);
		assertThat(success).isEqualTo(true);
		
		success = encoder.matches("1234", "1234");
		System.out.println(success);
		assertThat(success).isEqualTo(false);
		
	}
	
	
	
	
}
