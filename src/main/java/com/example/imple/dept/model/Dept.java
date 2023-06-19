package com.example.imple.dept.model;

import java.util.List;

import com.example.imple.emp.model.Emp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@Data
@AllArgsConstructor(staticName = "of")
@NoArgsConstructor
@Builder
public class Dept {
	@NonNull Integer deptno;
	@NonNull String dname;
			 String loc;
			 List<Emp> emps;	// 1:N
}
