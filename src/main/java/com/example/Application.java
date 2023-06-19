package com.example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Application {

	public static void main(String[] args) {
		
		System.out.println("#######################");
		System.out.println("Spring Boot Start");
		System.out.println("#######################");
		SpringApplication.run(Application.class, args);
		
	}

}
