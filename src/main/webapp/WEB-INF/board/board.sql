show tables;

create table board (
	idx int not null auto_increment,
	mid varchar(30) not null,  /*게시글 작성자 아이디*/
	nickName varchar(30) not null, /*게시글 작성자 닉네임*/
	title varchar(100) not null, /*게시글 제목*/
	email varchar(60),
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

