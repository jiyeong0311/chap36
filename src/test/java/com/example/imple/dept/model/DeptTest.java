package com.example.imple.dept.model;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

public class DeptTest {

	@Test
	void of() {
		var dept1 = new Dept();
//		var dept2 = new Dept(10, "xxx", "yyy");
		var dept2 = Dept.of(10, "개발1부", "부산", null);

		System.out.println(dept1);
		System.out.println(dept2);
		assertThat(dept1).matches(v -> {
			boolean tf = false;
			tf = v.getDeptno() == 0 && 
				 v.getDname() == null &&
				 v.getLoc() == null;
			return tf;
		});
		assertThat(dept2).matches(v -> {
			return v.getDeptno() == 10 &&
				   v.getDname().equals("개발1부") &&
				   v.getLoc().equals("부산");
		});
		
	}
	
	@Test
	void builder() {
		var dept = Dept.builder()
					   .deptno(10)
					   .dname("개발1부")
					   .loc("광주").build();
		
		assertThat(dept).satisfies(v -> {
			assertThat(v.getDeptno()).isEqualTo(10);
			assertThat(v.getDname()).isEqualTo("개발1부");
			assertThat(v.getLoc()).isEqualTo("광주");
		});
	}
	
	@Test
	void nonNull() {
		assertThrows(NullPointerException.class, () -> {
			var dept = Dept.builder()
						   .deptno(null)
						   .dname("개발1부")
						   .loc("부산").build();
		});
		assertThrows(NullPointerException.class, () -> {
			var dept = Dept.builder()
						   .deptno(10)
						   .dname(null)
						   .loc("부산").build();
		});
		
		Dept.builder().deptno(10).dname("개발1부").build();
	}
}
