package com.example.imple.user.model;

import java.time.LocalDate;

import org.hibernate.validator.constraints.Length;

import com.example.standard.model.Modelable;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.PastOrPresent;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor(staticName = "of")
@NoArgsConstructor
@Builder
public class UserDTO implements Modelable<User>{
	
	@NotBlank(message = "사용자명을 입력해주세요.")
	String id;
	
	@NotBlank(message = "비밀번호를 입력해주세요.")
	@Size(min = 6, max = 20, message = "비밀번호는 6자 이상 20자 이하여야 합니다." )
	String password;

	@Length(max = 20)
	String name;
	
	@PastOrPresent
	LocalDate birth;
	
	@Pattern(regexp = "M|F|{0}", message = "M | F | null 만 허용됩니다.")
	String 		gender;
	
	@Email
	@Length(max = 50)
	String email;
	
	@Length(max = 50)
	String address;
	
	String tel;
	
	@Override
	public User getModel() {

		
		
		return User.builder()
				   .id(id)
				   .password(password)
				   .name(name)
				   .birth(birth)
				   .gender(gender)
				   .email(email)
				   .address(address)
				   .tel(tel)
				   .build();
				
	}


	
	
}
