package com.example.imple.city.model;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.Range;

import com.example.imple.country.model.Country;
import com.example.standard.model.Modelable;

import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@Data
@AllArgsConstructor(staticName = "of")
@NoArgsConstructor
@Builder
public class CityDTO implements Modelable<City> {
	
	@Range(min = 1, max = 99999999999L)
	Long 	 id;
	
	@NotBlank
	@Length(max = 35)
	String   name;
	
	@Length(max = 3)
	String   countryCode;
	
	@Length(max = 20)
	String   district;
	
	@Range(min = 1, max = 99999999999L)
	Long 	 population;

	@Override
	public City getModel() {
		
		return City.builder()
				   .id(id)
				   .name(name)
				   .countryCode(countryCode)
				   .district(district)
				   .population(population)
				   .build();
	}
}
