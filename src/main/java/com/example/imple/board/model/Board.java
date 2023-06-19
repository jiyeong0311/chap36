package com.example.imple.board.model;

import java.time.LocalDate;
import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@Data
@AllArgsConstructor(staticName = "of")
@NoArgsConstructor
@Builder
public class Board {
	
			 Integer 	boardIdx;
	@NonNull String 	title;
	@NonNull String 	content;
	@NonNull String 	writer;
			 Integer 	hitCnt;
		     LocalDateTime createDatetime;
		     LocalDate 	createDate;
	
}
