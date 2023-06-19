package com.example.imple.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.example.imple.board.model.Board;
import com.example.imple.dept.model.Dept;

@Mapper
public interface BoardMapper {

	@Select("""
			select * 
			  from board 
			 where boardIdx = #{boardIdx} 
			""")
	Board selectBoardIdx(int boardIdx);
	
	// 현재 조회수
	@Select("""
			select hitCnt 
			  from board 
			 where boardIdx = #{boardIdx} 
			""")
	Board selectHitCnt (int hitCnt);
	
    // 조회수 증가 
    @Update("""
            update board
               set hitCnt = hitCnt + 1
             where boardIdx = #{boardIdx}
            """)
    void updateHitCntByBoardIdx(Integer boardIdx);
	
	@Select("""
			select *
			  from board 
			 where boardIdx = #{boardIdx} 
			 ORDER BY boardIdx DESC
			""")
	Board selectBoard(Board board);
	
    @Select("SELECT * FROM board ORDER BY boardIdx DESC")
    List<Board> selectBoardList();
    
	// 게시글 작성
	@Insert("""
			insert into board 
			(boardIdx ,title, content, writer, hitCnt, createDatetime, createDate)
			values 
			(#{boardIdx}, #{title}, #{content}, #{writer}, 0, CURRENT_TIME(), CURRENT_DATE())
			""")
	public void insertBoard (Board board);
	
    @Update("""
            update board
               set title = #{title},
                   content = #{content},
                   writer = #{writer}
             where boardIdx = #{boardIdx}
            """)
    int updateBoard(Board board);
	
    @Delete("delete from board where boardIdx=#{boardIdx}")
    int delete(int boardIdx);
    
    
    
    


    
    
    

    
    
    
    
    
    
    
    
    
    
    
// 글 번호 수정 전 기본	
//	// write 부분...글쓰는건 구현되지만 글번구현은 안됨
//    default void adjustBoardIndexes() {
//        List<Board> boards = selectBoardList();
//        int size = boards.size();
//        for (int i = 0; i < size; i++) {
//            Board board = boards.get(i);
//            int expectedIndex = i + 1;
//            if (board.getBoardIdx() != expectedIndex) {
//                board.setBoardIdx(expectedIndex);
//                updateBoard(board);
//            }
//        }
//    }
//
//    default void deleteAndAdjustBoardIndexes(int boardIdx) {
//        delete(boardIdx);
//        updateBoardIdx(boardIdx);
//        adjustBoardIndexes();
//    }



}
