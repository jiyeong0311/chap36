package com.example.imple.language.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.imple.country.model.Country;
import com.example.imple.language.model.Language;
import com.github.pagehelper.Page;

@Mapper
public interface LanguageMapper {
	int countAll();
	List<Language> selectAll();
	Page<Language> selectPage();
	Language 	   selectByCode(String code);
	
}
