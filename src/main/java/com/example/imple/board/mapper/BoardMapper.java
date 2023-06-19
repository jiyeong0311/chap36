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
	
	// 현재 조회수 선택
	@Select("""
			select hitCnt 
			  from board 
			 where boardIdx = #{boardIdx} 
			""")
	Board selectHitCnt (int hitCnt);
	
	// 게시글 번호 조회 , 삭제한 게시글 번호 재사용해서 순서대로 일관되게 유지 
//    @Select("SELECT * FROM board WHERE boardIdx IN (SELECT MAX(boardIdx) FROM board)")
//    Board selectDeletedBoard();
	
	
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
			(#{boardIdx}, #{title}, #{content}, #{writer}, 0, #{createDatetime}, #{createDate})
			""")
	public void insertBoard (Board board);
	

//	@Update("""
//	        UPDATE board
//	           SET title = #{title, jdbcType=VARCHAR},
//	               content = #{content, jdbcType=VARCHAR},
//	               writer = #{writer, jdbcType=VARCHAR}
//	         WHERE boardIdx = #{boardIdx}
//	        """)
//	Integer updateBoard(@Param("title") String title,
//			@Param("content") String content,
//			@Param("writer") String writer);
	
	@Update("""
	        UPDATE board
	           SET title = #{b.title, jdbcType=VARCHAR},
	               content = #{b.content, jdbcType=VARCHAR},
	               writer = #{b.writer, jdbcType=VARCHAR}
	         WHERE boardIdx = #{b.boardIdx}
	        """)
	Integer updateBoard(@Param("b") Board board);

    
//    @Update("""
//            update board
//               set title = #{title},
//                   content = #{content},
//                   writer = #{writer},
//                   hitCnt = #{hitCnt},
//                   createDatetime = #{createDatetime},
//                   createDate = #{createDate}
//             where boardIdx = #{boardIdx}
//            """)
//    void updateBoard(Board board);
	
	
    // 조회수 증가 
    @Update("""
            update board
               set hitCnt = hitCnt + 1
             where boardIdx = #{boardIdx}
            """)
    void updateHitCntByBoardIdx(Integer boardIdx);
	
	
    @Delete("DELETE FROM board WHERE boardIdx = #{boardIdx}")
    void deleteBoard(int boardIdx);
	
	
    @Update("UPDATE board SET boardIdx = boardIdx - 1 WHERE boardIdx > #{boardIdx}")
    void updateBoardIdx(int boardIdx);
	
    @Select("SELECT MAX(boardIdx) FROM board")
    Integer selectLatestBoardIdx();
	
	
    
	@Delete("delete from board where boardIdx=#{boardIdx}")
	int delete(int boardIdx);

    
	
	// write 부분...글쓰는건 구현되지만 글번구현은 안됨
	
    default void adjustBoardIndexes() {
        List<Board> boards = selectBoardList();
        int size = boards.size();
        for (int i = 0; i < size; i++) {
            Board board = boards.get(i);
            int expectedIndex = i + 1;
            if (board.getBoardIdx() != expectedIndex) {
                board.setBoardIdx(expectedIndex);
                updateBoard(board);
            }
        }
    }

    default void deleteAndAdjustBoardIndexes(int boardIdx) {
        deleteBoard(boardIdx);
        updateBoardIdx(boardIdx);
        adjustBoardIndexes();
    }



}
