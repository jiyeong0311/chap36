package com.example.imple.country.model;

import java.util.List;

import com.example.imple.city.model.City;
import com.example.standard.model.Modelable;
import com.example.standard.util.Continent;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@Data
@AllArgsConstructor(staticName = "of")
@NoArgsConstructor
@Builder
public class Country {
	@NonNull String 	code;						
	@NonNull String 	name;						
			 Continent 	continent;		
			 String 	region;						
			 Double 	surfaceArea;		
			 Integer 	indepYear;							
			 Long 		population;			
			 Double 	lifeExpectancy;						
			 Double 	gnp;
			 Double 	gnpOld;
			 String 	localName;						
			 String 	governmentForm;
			 String 	headOfState;
			 Long 		capital;
			 String 	code2;
			 List<City> citys;
}
