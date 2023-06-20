package com.example.imple.user.model;

import java.util.List;

import java.time.LocalDate;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@Data
@AllArgsConstructor(staticName = "of")
@NoArgsConstructor
@Builder
public class User {
	@NonNull String    id;
	@NonNull String    password;
			 String    role;
			 String    name;
			 LocalDate birth;
			 String	   gender;
			 String    email;
			 String	   address;
			 String	   tel;
			

}
