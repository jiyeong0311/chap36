package com.example.imple.salgrade.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor(staticName = "of")
@NoArgsConstructor
@Builder
public class SalgradeDTO {

	 Integer grade;
	 Integer losal;
	 Integer hisal;
	 
	public Salgrade getModel() {
		
		return Salgrade.builder()
					   .grade(grade)
					   .losal(losal)
					   .hisal(hisal)
					   .build();
	}
	 
		
	 
}
