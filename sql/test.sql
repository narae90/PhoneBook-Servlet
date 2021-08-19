
-- 테이블 정보 확인
select * from tab;




CREATE TABLE emaillist (
	no NUMBER PRIMARY KEY,
	last_name VARCHAR2(20) NOT NULL,
	first_name VARCHAR2(20) NOT NULL,
	email VARCHAR2(128) NOT NULL,
	createdAt DATE DEFAULT SYSDATE);

CREATE SEQUENCE seq_emaillist_pk
	START WITH 1
	INCREMENT BY 1;


insert into emaillist (no, first_name, last_name, email)
values(seq_emaillist_pk.nextval, '나래', '김', 'narae900@naver.com');


select * from emaillist;


commit;



CREATE TABLE PhoneBook (
   id NUMBER PRIMARY KEY,
   name VARCHAR2(30) NOT NULL,
   hp VARCHAR2(128) NOT NULL,
   tel VARCHAR2(128) NOT NULL);
   
CREATE SEQUENCE seq_PhoneBook_pk
START WITH 1
INCREMENT BY 1;


select * from PhoneBook;


INSERT into PhoneBook (id, name, hp, tel)
values(3, '강비트', '010-1178-6877', '02-1587-5817');

select * from PhoneBook;
