create table member_tb(
	mem_id varchar2(20) primary key,
	mem_pw varchar2(20),
	mem_name varchar2(20),
	mem_tel varchar2(20),
	mem_email varchar2(30),
	mem_add varchar2(50),
	mem_bir date,
	mem_gen varchar2(20),
	mem_exp varchar2(20),
	mem_q varchar2(100),
	mem_a varchar2(100),
	constraint check_exp check( mem_exp IN('yes','no') ),
	constraint check_gen check( mem_gen IN('male','female') )
)

insert into member_tb values
('gogoy2643','seo','SeoYoonho','010-6330-2643','gogoy2643@naver.com','�Ȼ�',
'1990-08-22','male','yes','����� ���� 1ȣ��?','������6')

insert into member_tb values
('yyk9111','yyk','KimYeyeong','010-1111-1111','yyk9111@naver.com','�Ⱦ�',
'1990-11-17','female','no','����� ��� ������?','??????')

select * from member_tb

