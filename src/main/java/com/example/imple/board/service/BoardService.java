package com.example.imple.board.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.imple.board.mapper.BoardMapper;

@Service
public class BoardService {

	@Autowired
	BoardMapper mapper;
	
	
	
}
