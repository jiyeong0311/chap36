package com.example.standard.util;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

import ch.qos.logback.core.recovery.ResilientSyslogOutputStream;

public class ContinentTest {

	@Test
	void enumToString() {
		for (var g : Continent.values())
			System.out.println(g);
		System.out.println("========================");
		System.out.println(Continent.Africa.getSymbol());
		System.out.println(Continent.Antarctica.getSymbol());
		System.out.println(Continent.Asia.getSymbol());
		System.out.println(Continent.Europe.getSymbol());
		System.out.println(Continent.NorthAmerica.getSymbol());
		System.out.println(Continent.Oceania.getSymbol());
		System.out.println(Continent.SouthAmerica.getSymbol());
	}
	
	@Test
	void stringToEnum() {
		Continent c1 =  Continent.valueOf("Africa");
		Continent c2 =  Continent.valueOf("Antarctica");
		Continent c3 =  Continent.valueOf("Asia");
		Continent c4 =  Continent.valueOf("Europe");
		Continent c5 =  Continent.valueOf("NorthAmerica");
		Continent c6 =  Continent.valueOf("Oceania");
		Continent c7 =  Continent.valueOf("SouthAmerica");
		
		assertThrows(IllegalArgumentException.class, () -> {
			Continent.valueOf("North America");
		});
		
		assertThrows(IllegalArgumentException.class, () -> {
			Continent.valueOf("South America");
		});
		
		Continent.valueOf("North America".replace(" ", ""));
		Continent.valueOf("South America".replace(" ", ""));
		
	}
	
	
}
