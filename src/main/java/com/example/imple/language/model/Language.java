package com.example.imple.language.model;

import java.util.List;

import com.example.imple.country.model.Country;
import com.example.standard.util.IsOfficial;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;


@Data
@AllArgsConstructor(staticName = "of")
@NoArgsConstructor
@Builder
public class Language {
	@NonNull String 		countryCode;
	@NonNull String 		language;
			 IsOfficial 	isOfficial;
			 Double 		percentage;
	
}
