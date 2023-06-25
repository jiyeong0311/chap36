package com.example.imple.language.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.server.ResponseStatusException;

import com.example.imple.language.mapper.LanguageMapper;
import com.example.imple.language.model.Language;
import com.example.standard.controller.DetailController;

import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/language")
@Slf4j
public class LanguageDetailController {

	@Autowired
	LanguageMapper mapper;

    @GetMapping("/detail/{code}")
    public String detail(@PathVariable String code, Model model, HttpServletRequest request) {
        var language = mapper.selectByCodeAndLanguage(code, null);
        model.addAttribute("language", language);
        return "language/detail"; 
    }
    
    @GetMapping("/detail/{code}/{language}")
    public String detail(@PathVariable String code, @PathVariable String language, Model model, HttpServletRequest request) {
        language = mapper.selectByCodeAndLanguage(code, language);
        model.addAttribute("language", language);
        return "language/detail";
    }



}
