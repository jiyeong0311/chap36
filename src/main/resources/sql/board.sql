
CREATE TABLE board (
  boardIdx INT PRIMARY KEY NOT NULL COMMENT '인덱스',
  title VARCHAR(300) NOT NULL COMMENT '제목',
  content LONGTEXT NOT NULL COMMENT '내용',
  writer VARCHAR(100) NOT NULL COMMENT '작성자',
  hitCnt INT DEFAULT 0 COMMENT '조회수',
  createDatetime DATETIME COMMENT '작성시간',
  createDate VARCHAR(50) COMMENT '작성일'
);

ALTER TABLE board MODIFY boardIdx INT NOT NULL;
drop table board;

INSERT INTO board (boardIdx, title, content, writer) VALUES
(2,'번호', '번호 자동 증가', '홍길동');


ALTER TABLE board RENAME COLUMN board_idx TO boardIdx;
ALTER TABLE board RENAME COLUMN hit_cnt TO hitCnt;
ALTER TABLE board RENAME COLUMN create_datetime TO createdDatetime;
ALTER TABLE board RENAME COLUMN create_date TO createdDate;

ALTER TABLE board MODIFY createDatetime varchar(50);
ALTER TABLE board MODIFY COLUMN boardIdx INT AUTO_INCREMENT;

ALTER TABLE board
MODIFY hitCnt INT DEFAULT 0;

commit;