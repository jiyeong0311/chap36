package com.example.imple.user.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.example.imple.user.model.User;

@Mapper
public interface UserMapper {

	@Select("""
			select *
			  from users
			 where id = #{id} 
			""")
	User selectById(String id);
	
	@Select("""
			select * from users
			""")
	List<User> selectUsersList();
	
	@Insert("""
			insert into users (id, password, role, name, birth, gender, email, address, tel)
					values (#{id}, #{password}, 'USER', #{name}, #{birth}, #{gender}, #{email}, #{address}, #{tel})
			""")
	public void insertUser (User user);
	
    @Delete("delete from users where id=#{id}")
    public void delete(String id);
	
	@Update("""
			update users
			   set name 	= #{name},
			       birth 	= #{birth},
			       gender 	= #{gender},
			       email 	= #{email},
			       address 	= #{address},
			       tel 		= #{tel}
			 where id = #{id}     
			""")
	int updateUser(User user);
	
}
