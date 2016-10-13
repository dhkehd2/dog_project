create table member_tb(
	mem_id varchar2(20) primary key,
	mem_pw varchar2(20),
	mem_name varchar2(20),
	mem_tel varchar2(20),
	mem_email varchar2(20),
	mem_add varchar2(20),
	mem_bir date,
	mem_gen varchar2(20),
	mem_exp varchar2(20),
	mem_q varchar2(20),
	mem_a varchar2(20),
	constraint check_exp check( mem_exp IN('yes','no') ),
	constraint check_gen check( mem_gen IN('male','female') )
)