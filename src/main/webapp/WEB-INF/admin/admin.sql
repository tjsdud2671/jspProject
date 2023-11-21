show tables;

/* 신고테이블(complaint) */
create table complaint (
  idx  int not null auto_increment,		/* 신고테이블 고유번호 */
  part varchar(15) not null,					/* 신고 항목(게시판:board, 자료실:pds, 방명록:guest) */
  partIdx int not null,								/* 해당 항목 게시글의 고유번호 */
  cpMid varchar(30) not null,					/* 신고자 아이디 */
  cpContent text not null,						/* 신고 사유 */
  cpDate datetime default now(),			/* 신고 날짜 */
  primary key(idx)
);
desc complaint;

select c.*,b.title from complaint c, board b where c.partIdx=b.idx order by c.idx desc;
select c.*,b.nickName as name, b.title as title from complaint c, board b where c.partIdx=b.idx order by c.idx desc;
select c.*,date_format(c.cpDate, '%Y-%m-%d %H:%i') as cpDate,b.nickName as name, b.title as title from complaint c, board b where c.partIdx=b.idx order by c.idx desc;

