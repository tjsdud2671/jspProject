show tables;

create table board (
	idx int not null auto_increment,
	mid varchar(30) not null,  /*게시글 작성자 아이디*/
	nickName varchar(30) not null, /*게시글 작성자 닉네임*/
	title varchar(100) not null, /*게시글 제목*/
	email varchar(60),0
	homePage varchar(60),
	content text not null, /*게시글 내용*/
	readNum int not null default 0, /*조회수*/
	hostIp varchar(40) not null, /*작성자 IP*/
	openSw char(2) default 'OK', /*게시글 공개여부*/
	wDate datetime default now(), /*글 올린 날짜(시간)*/
	good int default 0, /*'좋아요'*/
	primary key(idx),
);

desc board;

/*new.gif를 24시간 동안만 보여주기 위한 처리*/
insert into board values (default,'admin','관리맨','게시판 서비스를 시작합니다.','admin1234@daum.net','admin1234@tistory.com','게시할 내용을 입력해주세요',default,'192.168.50.69',default,default,default);
select * from board order by idx desc limit 0,10;

--게시판에 댓글 달기
create table boardReply(
 idx int not null auto_increment, /*댓글 고유번호*/
 boardIdx int not null, /*원본글(부모글)의 고유번호(외래키로 설정)*/
 mid varchar(30) not null, /*댓글 올린이의 아이디*/
 nickName varchar(30) not null, /*댓글 올린이의 닉네임*/
 wDate datetime default now(), /*댓글 올린 날짜*/
 hostIp varchar(50) not null, /*댓글 올린 PC의 IP*/
 content text not null, /*댓글 내용*/ 
 primary key(idx),
 foreign key(boardIdx) references board(idx)
 on update cascade /* 부모필드를 수정하면 함께 영향을 받는다.*/
 on delete restrict /*부모필드를 함부로 삭제할 수 없다.*/
 );

 desc boardReply;
 
 insert into boardReply values (default, 16, 'admin','관리맨',default,'210.100.20.30','글을 참조했습니다.');
 insert into boardReply values (default, 16, 'hkd1234','홍길동맨',default,'210.100.20.37','안녕하세요.');
 insert into boardReply values (default, 15, 'hkd1234','홍길동맨',default,'210.100.20.37','안녕하세요.');
 select * from boardReply;
 select b.*,br.nickName from board b, boardReply br where b.idx=br.boardIdx;
 select b.*,br.nickName,br.boardIdx from board b, (select * from boardReply where boardIdx=16) br where b.idx=16;
 
 
-- 댓글수 연습
-- 게시판(board)리스트 화면에서 글제목 옆에 해당글의 댓글(boardReply)수를 출력해보자
-- 전체 board 테이블의 내용을 최신순으로 출력
select * from board order by idx desc;

--boare테이블 고유번호 16번에 해당하는 댓글테이블(boardReply)의 댓글 수는?
select count(*) from boardReply where boardIdx = 16;
select count(*) from boardReply where boardIdx = 15;

--앞의 예에서 원본글의 고유번호와 함께, 총 댓글의 갯수는 replyCnt란 변수로 출력하시오
select boardIdx, count(*) as replyCnt from boardReply where boardIdx = 16;

--앞의 예제에 이어서, 원본글을 쓴 닉네임도 함께 출력시켜보자(여기서 닉네임은 부모테이블에서 가져와서 출력한다)
select boardIdx, count(*) as replyCnt,(select nickName from board where idx=16) as nickName from boardReply where boardIdx = 16; 

--앞의 내용을 부모관점(board)에서 처리
--16번 게시글의 mid와 닉네임을 출력
select mid,nickName from board where idx = 16;

--앞에 이어서 닉네임을 자식(댓글테이블)에서 가져와서 보여주시오.
select mid,(select nickName from boardReply where boardIdx=16 limit 1) as nickName from board where idx = 16;

--부모글(원본글)에 해당하는 자식글(댓글)의 개수를 부모글과 함께 출력하시오.
select mid,(select count(*) from boardReply where boardIdx=16) as nickName from board where idx = 16;
select *,(select count(*) from boardReply where boardIdx=16) as replyCnt from board where idx = 16;
 



select *,datediff(wDate,now())  from board order by idx desc limit 0,10;
select *,timestampdiff(hour,wDate,now())  from board order by idx desc limit 0,10;

/*이전글,다음글 꺼내오기*/
select * from board where idx = 8; /*현재글*/
select * from board where idx < 8 order by idx desc limit 1; /*이전글*/
select * from board where idx > 8 order by idx limit 1; /*다음글*/

--날짜 함수 연습
select now();
--date_add() - datetime형식 비교
select now() as 오늘날짜, date_add(now(), interval 1 day);
select now() as 오늘날짜, date_add(now(), interval -1 day);
select now() as 오늘날짜, date_add(now(), interval 10 hour);
select now() as 오늘날짜, date_add(now(), interval -10 hour) as preHour;

--date_sub()
select now() as 오늘날짜, date_sub(now(), interval 1 day);
select now() as 오늘날짜, date_sub(now(), interval -1 day);

--board 테이블에 적용
--게시글 중에서 하루 전에 올라온 글만 보여주시오
select wDate, date_add(now(), interval 1 day) from board;
select substring(wDate,1,10),substring(date_add(now(), interval 1 day),1,10) from board;
select idx, nickName, wDate from board where substring(wDate,1,10) = substring(date_add(now(), interval -1 day),1,10);


--날짜차이 계산 : DATEDIFF(시작날짜, 마지막날짜) - int형식 비교
select datediff('2023-11-14',now());
select datediff(now(),wDate) from board;
select timestampdiff(hour,now(),wDate) from board;
select timestampdiff(day,wDate,now()) from board;

--날짜형식(date_format(날짜형식, 포맷)) : 년도4자리(%Y), 월(%m), 일(%d)
select wDate, date_format(wDate, '%Y-%m-%d') from board;

