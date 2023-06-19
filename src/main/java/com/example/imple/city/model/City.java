package com.example.imple.city.model;

import com.example.imple.country.model.Country;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@Data
@AllArgsConstructor(staticName = "of")
@NoArgsConstructor
@Builder
public class City {
			 Long 	 id;
	@NonNull String  name;
			 String  countryCode;
			 String  district;
			 Long 	 population;
			 Country country;
}
