select * from b_stop where nodenm='운천저수지';
select * from fav;
select * from bus;
select * from recent;
delete from recent;
alter table recent
rename column rec_deprt to rec_dprt;

insert into fav (p_id, f_id, routeid, f_dprt, f_arrv) values('test001',seq_f_id.NEXTVAL , 'KJB1', 'asd', 'asd');

alter table recent
drop column routeno;
select * from fav;
alter table fav
add f_arrv varchar2(100);
select * from d_info;
select * from passenger;

insert into 승객 values ('test001', 'test001', '123-456-7890');

delete from fav where p_id='test001';

commit;
rollback ;
select * from b_driver;

alter table 기사
add d_pw varchar2(50);

alter table recent
add routeno varchar2(100);

alter table 기사
drop column column1;

insert into 기사 values('testd001', 'testd001');

rename driver to 기사;

sqlplus;

select * from b_stop where nodenm='운천역';

update bus set b_id=Bus001 where b_id=1;

select * from passenger;

select * from s_info;
select * from r_info;
alter table r_info
rename column ri_id to routeid;
alter table r_info
drop column b_id;
alter table r_info
drop column ri_date;

update r_info set routeid='KJB43' where routeid='1';

create table r_info(
routeid varchar2(20) not null primary key,
routeno varchar2(20) not null,
endnodenm varchar2(50) not null,
startnodenm varchar2(50) not null
);

select count(nodeid)
from b_stop
group by nodenm;

alter table r_info
modify startnodenm null;
alter table r_info
modify routeno null;
alter table r_info
modify startnodenm varchar(300);
alter table fav
add routeno varchar(100);

select * from b_stop;
select * from recent;

create sequence book_prev_seq
start with 1
increment by 1;

rename r_log to book_log;
select * from book_log;
alter table book_log
rename column r_id to blog_id;
alter table book_log
rename column r_date to book_date;
create table book_info (
	blog_id varchar2(100) primary key,
	routeid varchar2(100),
	routeno varchar2(100),
	nodeid varchar2(100),
	nodenm varchar2(100)s
)
select * from book_info;
insert into book_info
(blog_id, routeid, routeno, dprtnode, arrvnode, p_id)
values('a001', 'KJB43', '송암72', 'KJB3430', 'KJB1068', 'test001');

alter table book_info
add  p_id varchar2(100);

update book_info set p_id='test001' where blog_id='a001';

alter table book_info
add booktime date default sysdate;
alter table book_info
add arrvname varchar2(100);
update book_info set arrvname='운천저수지' where p_id='test001';
SELECT *
FROM (SELECT *
      FROM Book_Info
      WHERE p_id = 'test001'
      ORDER BY booktime DESC)
WHERE ROWNUM = 1;

select * from bus;
alter table book_info
add accepted number(1) default null;
commit;
alter table book_info
add b_id varchar2(100);
select * from book_info;
select * from bus_shift; seq_shift_id
select * from bus_shift_log; seq_shift_log