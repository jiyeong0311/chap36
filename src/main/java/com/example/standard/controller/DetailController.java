package com.example.standard.controller;

import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.server.ResponseStatusException;

import jakarta.servlet.http.HttpServletRequest;

public interface DetailController<T> {

	@GetMapping("/detail/{key}")
	String detail(@PathVariable T key, Model model, HttpServletRequest request);
	
	@GetMapping("/detail/{key1}/{key2}")
	default String detail(@PathVariable T key1, @PathVariable T key2, Model model, HttpServletRequest request) {
		throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Not Implementation");
	}
}
