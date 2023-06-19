package com.example.imple.user.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.example.imple.dept.model.Dept;
import com.example.imple.user.model.User;

@Mapper
public interface UserMapper {

	@Select("""
			select *
			  from users
			 where id = #{id} 
			""")
	User selectById(String id);
	
	
	@Insert("""
			insert into users (id, password, role, name, birth, gender, email, address, tel)
					values (#{id}, #{password}, 'USER', #{name}, #{birth}, #{gender}, #{email}, #{address}, #{tel})
			""")
	public void insertUser (User user);
	
	
	@Update("""
			update users
			   set password = #{u.password, jdbcType=VARCHAR},
			       name 	= #{u.name, jdbcType=VARCHAR},
			       birth 	= #{u.birth, jdbcType=VARCHAR},
			       gender 	= #{u.gender, jdbcType=VARCHAR},
			       email 	= #{u.email, jdbcType=VARCHAR},
			       address 	= #{u.address, jdbcType=VARCHAR},
			       tel 		= #{u.tel, jdbcType=VARCHAR}
			 where id = ${u.id}     
			""")
	int updateUser(@Param("u") User user);
	



}
