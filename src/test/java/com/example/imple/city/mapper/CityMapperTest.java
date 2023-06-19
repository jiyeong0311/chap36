package com.example.imple.city.mapper;

import java.io.IOException;
import java.sql.SQLException;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.jdbc.UncategorizedSQLException;
import org.springframework.test.annotation.Rollback;
import org.springframework.transaction.annotation.Transactional;

import com.example.imple.city.mapper.CityMapper;
import com.example.imple.city.model.City;
import com.example.imple.dept.model.Dept;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@SpringBootTest
public class CityMapperTest {
	
	@Autowired
	CityMapper cityMapper;
	
	@Autowired
	ObjectMapper objectMapper;
	
	@Test
	void countAll() {
		var cnt = cityMapper.countAll();
		System.out.println(cnt);
	}
	
	@Test
	void selectAll() throws IOException {
		var list = cityMapper.selectAll();
		assertThat(list.size()).isEqualTo(4079);
	}
	
	@Test
	void selectAllWithCountry() throws IOException {
		var list = cityMapper.selectAllWithCountry();
		assertThat(list.size()).isEqualTo(4079);
		
		assertThat(list).allSatisfy(e -> {
			assertThat(e.getCountry()).isNotNull();
		});
	}
	
	@Test
	void selectPage() throws IOException {
		PageHelper.startPage(50, 5);
		var list = cityMapper.selectPage();
		System.out.println(list.size());
		assertThat(list.size()).isEqualTo(5);
		
		var paging = PageInfo.of(list, 20);
		System.out.println(paging);
		paging.getTotal();
		paging.getList();
		paging.getPageNum();
		paging.getSize();
		paging.getStartRow();
		paging.getEndRow();
		paging.getPages();
		paging.getPrePage();
		paging.getNextPage();
		paging.isIsFirstPage();
		paging.isIsLastPage();
		paging.isHasPreviousPage();
		paging.isHasNextPage();
		
		
		objectMapper.createGenerator(System.out)
					.useDefaultPrettyPrinter()
					.writeObject(paging);
	}
	
	@Test
	void selectPageWithCountry() throws IOException {
		PageHelper.startPage(1000, 5);
		var list = cityMapper.selectPageWithCountry();
//		assertThat(list.size()).isEqualTo(5);
		
		assertThat(list).allSatisfy(e -> {
			assertThat(e.getCountry()).isNotNull();
		});
		
		var paging = PageInfo.of(list, 10);
		
		objectMapper.createGenerator(System.out)
					.writeObject(paging);
		
		assertThat(paging).satisfies( e -> {
			assertThat(e.getTotal()).isEqualTo(4079);
//			assertThat(e.getList().size()).isEqualTo(5);
			long pages = e.getTotal()/5 + (e.getTotal()%5!=0 ? 1 : 0);
			assertThat(e.getPages()).isEqualTo(pages);
		});
		
	}
	
	
	@Test
	void selectById() {
		var city = cityMapper.selectById(10);
		System.out.println(city);
		assertEquals(10, city.getId());
	}
	
	@Test
	void selectByIdWithCountry() throws IOException {
		var city = cityMapper.selectByIdWithCountry(1000);
		assertEquals(1000, city.getId());
		
		objectMapper.createGenerator(System.out)
					.writeObject(city);
	}
	
	@Test
	void selectByCountryCode() throws IOException {
		var list = cityMapper.selectByCountryCode("KOR");
		System.out.println(list);
		
		objectMapper.createGenerator(System.out)
					.useDefaultPrettyPrinter()
					.writeObject(list);
	}
	
	@Test
	@Transactional
	void insertCity() {
		var city = City.builder()
					   .name("xxx")
					   .build();
		cityMapper.insertCity(city);
		System.out.println(city);
		assertThat(city.getId()).isNotNull();
		
		assertThrows(DataIntegrityViolationException.class, () -> {
			var c = City.builder()
						.name("서울")
						.countryCode("XXX")
						.build();
			cityMapper.insertCity(c);
		});
		
		var c = City.builder()
					.name("서울")
					.countryCode("KOR")
					.build();
		cityMapper.insertCity(c);
		System.out.println(c);
	}
	
	@Test
	@Transactional
	void updateCity() {
		var seoul = cityMapper.selectById(2331);
		System.out.println(seoul);
		
		seoul.setName("서울");
		cityMapper.updateCity(seoul);
		System.out.println(seoul);
		
		assertThrows(DataIntegrityViolationException.class, () -> {
			seoul.setCountryCode("kor");
			cityMapper.updateCity(seoul);
		});
	}
	
	@Test
	@Transactional
	void deleteCity() {
		var cnt = cityMapper.delete(2331);
		assertThat(cnt).isEqualTo(1);
		
		var city = cityMapper.selectById(2331);
		assertThat(city).isNull();
		
		cnt = cityMapper.delete(900000);
		assertThat(cnt).isEqualTo(0);
	}
	
	
	
	
	
	
	
	

}
