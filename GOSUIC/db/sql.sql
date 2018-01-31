시군구	번지	단지명	전월세구분	전용면적(㎡)	계약일	보증금(만원)	월세(만원)	층	건축년도	도로명
create sequence seq increment by 1 start with 1;

 drop table apt;
 drop table jun;
 
create table apt (
no number ,
si varchar2(100),
gun varchar2(100),
gu varchar2(100),
bunji varchar2(100),
danji varchar2(100),
myunjuk number,
cheung number,
gunchook number,
doromyung varchar2(100));

create table jun(
no number,
junwol varchar2(100),
gyeyak varchar2(100),
bojeung number,
wolse number);

select * from apt;
select * from jun;
===================== csv input
create table csvtest(
sigungu varchar2(100),
bunji varchar2(100),
bon varchar2(100),
bu varchar2(100),
danji varchar2(100),
junwol varchar2(100),
myunjuk varchar2(100),
geyyaknyun varchar2(100),
geyyakil varchar2(100),
bojeung varchar2(100),
wolse varchar2(100),
cheung varchar2(100),
gunchook varchar2(100),
doromyung varchar2(100)
);


drop table csvtest;
select count(*) from csvtest;
select * from csvtest;

drop table csvtest;

create table csvtest(
sigungu varchar2(100),
bunji varchar2(20),
bon varchar2(20),
bu number,
danji varchar2(100),
junwol varchar2(100),
myunjuk number,
geyyaknyun number,
geyyakil varchar2(100),
bojeung number,
wolse number,
cheung number,
gunchook number,
doromyung varchar2(100)
);

==================== sequence
create sequence csv_seq
start with 1
increment by 1
nomaxvalue

create table csvtest(
aptno number primary key,
c_type number,
sigungu varchar2(100),
bunji varchar2(100),
bon varchar2(100),
bu varchar2(100),
danji varchar2(100),
junwol varchar2(100),
myunjuk varchar2(20),
geyyaknyun varchar2(100),
geyyakil varchar2(100),
bojeung varchar2(100),
wolse varchar2(100),
cheung varchar2(100),
gunchook varchar2(100),
doromyung varchar2(100)
);

select * from csvtest;
select count(*) from csvtest;




drop sequence csv_seq;
drop table csvtest;

create table seq_test01(
no number primary key,
remark varchar2(10) );

create sequence seq_seq_teest01_no;

insert into seq_test01(no,remark)
values(seq_seq_teest01_no.nextval,'연습');

select * from seq_test01

select seq from dual;


create sequence csv_seq minvalue 1 maxvalue 9999999999 increment 
by 1 start with 1 cache 20 noorder nocycle;



create
or replace trigger dual_1_trigger
before insert
on csvtest
referencing new as new
for each row
begin select seq_dual.nextval into :new.aptno from csvtest;
end;


CREATE OR REPLACE TRIGGER csvtest_type_trigger
BEFORE
INSERT ON csvtest
REFERENCING NEW AS NEW
FOR EACH ROW
BEGIN
INSERT INTO csvtest(c_type) values (0);
END;

INSERT INTO csvtest(c_type) values ('0');













drop sequence seq_inc;
create sequence seq_inc increment by 1 start with 1;


 drop table apt;
 drop table jun;
create table apt (
no number ,
sigungu varchar2(100),
bunji varchar2(100),
danji varchar2(100),
myunjuk number,
cheung number,
gunchook number,
doromyung varchar2(100));

create table jun(
no number,
junwol varchar2(100),
gyeyak varchar2(100),
bojeung number,
wolse number);