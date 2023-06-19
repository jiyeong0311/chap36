package com.example.imple.dept.model;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.Range;

import com.example.standard.model.Modelable;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor(staticName = "of")
@NoArgsConstructor
@Builder
public class DeptDTO implements Modelable<Dept> {
	@NotNull
	@Range(min = 10, max = 99)
	Integer deptno;
	
	@NotBlank
	@Length(min = 1, max = 14)
	String dname;
	
	@Length(min = 0, max = 13)
	String loc;
	
	@Override
	public Dept getModel() {
		return Dept.builder()
				   .deptno(deptno)
				   .dname(dname.trim())
				   .loc(loc.trim())
				   .build();
	}
}
