create table member(
	userid varchar2(30) primary key,
	password varchar2(30) not null,
	name varchar2(30) not null,
	gender varchar2(30) not null,
	email varchar2(50) not null
);

select * from member;