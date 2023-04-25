select * from b_stop where nodenm='운천저수지';
select * from fav;
select * from bus;

insert into fav (p_id, f_id, routeid, f_dprt, f_arrv) values('test001',seq_f_id.NEXTVAL , 'KJB1', 'asd', 'asd');

alter table 버스
add BUSID var;
select * from fav;
alter table fav
add f_arrv varchar2(100);

select * from passenger;

insert into 승객 values ('test001', 'test001', '123-456-7890');

commit;
rollback ;
select * from b_driver;

alter table 기사
add d_pw varchar2(50);

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

select * from b_stop;