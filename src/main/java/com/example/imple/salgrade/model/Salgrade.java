package com.example.imple.salgrade.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@Data
@AllArgsConstructor(staticName = "of")
@NoArgsConstructor
@Builder
public class Salgrade {
	@NonNull Integer grade;
			 Integer losal;
			 Integer hisal;
}
