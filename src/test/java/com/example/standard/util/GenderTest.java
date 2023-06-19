package com.example.standard.util;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

public class GenderTest {

	@Test
	void enumToString() {
		for (var g : Gender.values())
			System.out.println(g);
		
		System.out.println(Gender.M);
		System.out.println(Gender.F);
	}
	
	@Test
	void stringToEnum() {
		Gender g1 =  Gender.valueOf("M");
		Gender g2 =  Gender.valueOf("F");
		
		assertThrows(IllegalArgumentException.class, () -> {
			Gender g3 =  Gender.valueOf("A");
		});
		
		
	}
	
	
}
