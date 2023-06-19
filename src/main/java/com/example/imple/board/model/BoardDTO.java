package com.example.imple.board.model;

import java.time.LocalDate;
import java.time.LocalDateTime;

import com.example.standard.model.Modelable;

import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor(staticName = "of")
@NoArgsConstructor
@Builder
public class BoardDTO implements Modelable<Board>{
	
	
	Integer boardIdx;
	
	@NotBlank
	String title;

	@NotBlank
	String content;
	
	@NotBlank
	String writer;

	Integer hitCnt;

	LocalDateTime createDatetime;
	
	LocalDate createDate;
	
	@Override
	public Board getModel() {

		return Board.builder()
				   .boardIdx(boardIdx)
				   .title(title)
				   .content(content)
				   .writer(writer)
				   .hitCnt(hitCnt)
				   .createDatetime(createDatetime)
				   .createDate(createDate)
				   .build();
				
	}


	
	
}
