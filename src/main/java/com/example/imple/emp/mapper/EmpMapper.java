package com.example.imple.emp.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.One;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.example.imple.dept.model.Dept;
import com.example.imple.emp.model.Emp;

@Mapper
public interface EmpMapper {
	
	@Select("select count(*) from emp")
	int countAll();

	@Select("""
			select * 
			  from dept 
			 where deptno = #{deptno} 
			""")
	Dept selectDept(int deptno);
	
	@Select("select * from emp")
	List<Emp> selectAll();
	
	@Select("select * from emp")
	@Results({
		@Result(property = "deptno", column = "deptno"),
		@Result(property = "dept", 
				column = "deptno",
				one = @One(select = "selectDept"))
	})
	List<Emp> selectAllWithDept();
	
	@Select("""
			select *
			  from emp
			 where empno = #{empno} 
			""")
	Emp selectByEmpno(int empno);
	
	@Select("""
			select *
			  from emp
			 where empno = #{empno} 
			""")
	@Results({
		@Result(property = "deptno", column = "deptno"),
		@Result(property = "dept", 
				column = "deptno",
				one = @One(select = "selectDept"))
	})
	Emp selectByEmpnoWithDept(int empno);
	
	@Insert("""
			insert into emp
			(empno, ename)
			values
			(#{empno}, #{ename, jdbcType=VARCHAR})
			""")
	int insertByEmpnoWithEname(@Param("empno") int empno, @Param("ename") String ename);
	
	@Insert("""
			insert into emp
			values (
				#{e.empno}, 
			 	#{e.ename,  	jdbcType=VARCHAR}, 
			 	#{e.gender, 	jdbcType=VARCHAR},
			 	#{e.job, 		jdbcType=VARCHAR},
			 	#{e.mgr, 		jdbcType=INTEGER},
			 	#{e.hiredate, 	jdbcType=DATE},
			 	#{e.sal, 		jdbcType=DOUBLE},
			 	#{e.comm, 		jdbcType=DOUBLE},
			 	#{e.deptno, 	jdbcType=INTEGER}
			)
			""")
	int insertEmp(@Param("e") Emp emp);
	
	@Update("""
			update emp
			   set sal 	 = #{sal, jdbcType=DOUBLE}
			 where empno = #{empno}
			""")
	int updateByEmpnoWithSal(@Param("empno") int empno, 
						   	 @Param("sal")	double sal);
	
	@Update("""
			update emp
			   set deptno = #{deptno, jdbcType=INTEGER}
			 where empno  = #{empno}
			""")
	int updateByEmpnoWithDeptno(@Param("empno")  int empno, 
						   	    @Param("deptno") Integer deptno);
	
	@Update("""
			update emp
			   set ename 	= #{e.ename,  	jdbcType=VARCHAR}, 
				   gender 	= #{e.gender, 	jdbcType=VARCHAR},
				   job 		= #{e.job, 		jdbcType=VARCHAR},
				   mgr 		= #{e.mgr, 		jdbcType=INTEGER},
				   hiredate = #{e.hiredate,	jdbcType=DATE},
				   sal 		= #{e.sal, 		jdbcType=DOUBLE},
				   comm 	= #{e.comm, 	jdbcType=DOUBLE},
				   deptno 	= #{e.deptno, 	jdbcType=INTEGER}
			 where empno	= #{e.empno}     
			""")
	int updateEmp(@Param("e") Emp emp);
	
	@Delete("delete from emp where empno=#{empno}")
	int delete(int empno);

}
