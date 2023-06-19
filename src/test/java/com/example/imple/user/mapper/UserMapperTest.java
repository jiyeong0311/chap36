package com.example.imple.user.mapper;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class UserMapperTest {
	
	@Autowired
	UserMapper userMapper;
	
	@Test
	void selectById() {
		var user = userMapper.selectById("python");
		System.out.println(user);
		assertThat(user).isNotNull();
		
		user = userMapper.selectById("xxx");
		System.out.println(user);
		assertThat(user).isNull();
	}
}
