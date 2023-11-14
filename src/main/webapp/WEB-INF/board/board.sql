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

insert into board values (default,'admin','관리맨','게시판 서비스를 시작합니다.','admin1234@daum.net','admin1234@tistory.com','게시할 내용을 입력해주세요',default,'192.168.50.69',default,default,default);