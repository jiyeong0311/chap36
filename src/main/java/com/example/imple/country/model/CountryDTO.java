package com.example.imple.country.model;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.Range;

import com.example.imple.country.model.Country;
import com.example.standard.model.Modelable;
import com.example.standard.util.Continent;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@Data
@AllArgsConstructor(staticName = "of")
@NoArgsConstructor
@Builder
public class CountryDTO implements Modelable<Country> {
	
	@NotBlank
	@Length(max = 3)
	String 	 code;
	
	@NotBlank
	@Length(max = 35)
	String   name;
	
	@Length(max = 50)
	String   continent;
	
	@Length(max = 20)
	String   region;
	
	Double	surfaceArea;
	
	Integer	indepYear;
	
	 Long 		population;
	 
	 Double 	lifeExpectancy;
	 
	 Double 	gnp;
	 
	 Double 	gnpOld;
	 
	 String 	localName;	
	 
	 String 	governmentForm;
	 
	 String 	headOfState;
	 
	 Long 		capital;
	 
	 String 	code2;
	
	
	

	@Override
	public Country getModel() {
		
		return Country.builder()
				   .code(code)
				   .name(name)
				   .continent(continent)
				   .region(region)
				   .surfaceArea(surfaceArea)
				   .indepYear(indepYear)
				   .population(population)
				   .lifeExpectancy(lifeExpectancy)
				   .gnp(gnp)
				   .gnpOld(gnpOld)
				   .localName(localName)
				   .governmentForm(governmentForm)
				   .headOfState(headOfState)
				   .capital(capital)
				   .code2(code2)
				   .build();
	}


}
