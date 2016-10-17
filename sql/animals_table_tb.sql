--시도

CREATE TABLE sido_tb(
sido_code NUMBER primary key,
sido_name VARCHAR2(200)
);


insert into sido_tb values(6110000,'서울특별시');
insert into sido_tb values(6260000,'부산광역시');
insert into sido_tb values(6270000,'대구광역시');
insert into sido_tb values(6280000,'인천광역시');
insert into sido_tb values(6290000,'광주광역시');									
insert into sido_tb values(5690000,'세종특별자치시');
insert into sido_tb values(6300000,'대전광역시');
insert into sido_tb values(6310000,'울산광역시');
insert into sido_tb values(6410000,'경기도');
insert into sido_tb values(6420000,'강원도');
insert into sido_tb values(6430000,'충청북도');
insert into sido_tb values(6440000,'충청남도');
insert into sido_tb values(6450000,'전라북도');
insert into sido_tb values(6460000,'전라남도');
insert into sido_tb values(6470000,'경상북도');
insert into sido_tb values(6480000,'경상남도');
insert into sido_tb values(6500000,'제주특별자치도');
--총 17
select * from sido_tb;
drop table sido_tb;
-- ---------------------------------------------------------------------------------

--시군구

CREATE TABLE sigungu_tb(
sigungu_code NUMBER primary key,
sigungu_name VARCHAR2(200),
sido_code NUMBER, 
CONSTRAINTS sigungu_sido_code FOREIGN KEY(sido_code)
REFERENCES sido_tb(sido_code)
);

drop table sigungu_tb;


--6110000 서울시 군,구 코드
insert into sigungu_tb values(6119999,'가정보호',6110000);
insert into sigungu_tb values(3220000,'강남구',6110000);
insert into sigungu_tb values(3240000,'강동구',6110000);
insert into sigungu_tb values(3080000,'강북구',6110000);
insert into sigungu_tb values(3150000,'강서구',6110000);
insert into sigungu_tb values(6119998,'개별사업',6110000);
insert into sigungu_tb values(3200000,'관악구',6110000);
insert into sigungu_tb values(3040000,'광진구',6110000);
insert into sigungu_tb values(3160000,'구로구',6110000);
insert into sigungu_tb values(3170000,'금천구',6110000);
insert into sigungu_tb values(3100000,'노원구',6110000);
insert into sigungu_tb values(3090000,'도봉구',6110000);
insert into sigungu_tb values(3050000,'동대문구',6110000);
insert into sigungu_tb values(3190000,'동작구',6110000);
insert into sigungu_tb values(3130000,'마포구',6110000);
insert into sigungu_tb values(3120000,'서대문구',6110000);
insert into sigungu_tb values(3210000,'서초구',6110000);
insert into sigungu_tb values(3030000,'성동구',6110000);
insert into sigungu_tb values(3070000,'성북구',6110000);
insert into sigungu_tb values(3230000,'송파구',6110000);
insert into sigungu_tb values(3140000,'양천구',6110000);
insert into sigungu_tb values(3180000,'영등포구',6110000);
insert into sigungu_tb values(3020000,'용산구',6110000);
insert into sigungu_tb values(3110000,'은평구',6110000);
insert into sigungu_tb values(3000000,'종로구',6110000);
insert into sigungu_tb values(3010000,'중구',6110000);
insert into sigungu_tb values(3060000,'중랑구',6110000);
--총27

--6260000 부산광역시 군,구 코드
insert into sigungu_tb values(3360000,'강서구',6260000);
insert into sigungu_tb values(3350000,'금정구',6260000);
insert into sigungu_tb values(3400000,'기장군',6260000);
insert into sigungu_tb values(3310000,'남구',6260000);
insert into sigungu_tb values(3270000,'동구',6260000);
insert into sigungu_tb values(3300000,'동래구',6260000);
insert into sigungu_tb values(3290000,'부산진구',6260000);
insert into sigungu_tb values(3320000,'북구',6260000);
insert into sigungu_tb values(3390000,'사상구',6260000);
insert into sigungu_tb values(3340000,'사하구',6260000);

insert into sigungu_tb values(3260000,'서구',6260000);
insert into sigungu_tb values(3380000,'수영구',6260000);
insert into sigungu_tb values(3370000,'연제구',6260000);
insert into sigungu_tb values(3280000,'영도구',6260000);
insert into sigungu_tb values(3250000,'중구',6260000);
insert into sigungu_tb values(3330000,'해운대구',6260000);
--총16

--6270000 대구광역시 군,구 코드
insert into sigungu_tb values(3440000,'남구',6270000);
insert into sigungu_tb values(3470000,'달서구',6270000);
insert into sigungu_tb values(3480000,'달성군',6270000);
insert into sigungu_tb values(3420000,'동구',6270000);
insert into sigungu_tb values(3450000,'북구',6270000);
insert into sigungu_tb values(3430000,'서구',6270000);
insert into sigungu_tb values(3460000,'수성구',6270000);
insert into sigungu_tb values(3410000,'중구',6270000);
--총8

--6280000 인천광역시 군,구 코드
insert into sigungu_tb values(3570000,'강화군',6280000);
insert into sigungu_tb values(3550000,'계양구',6280000);
insert into sigungu_tb values(3510000,'남구',6280000);
insert into sigungu_tb values(3530000,'남동구',6280000);
insert into sigungu_tb values(3500000,'동구',6280000);
insert into sigungu_tb values(3540000,'부평구',6280000);
insert into sigungu_tb values(3560000,'서구',6280000);
insert into sigungu_tb values(3520000,'연수구',6280000);
insert into sigungu_tb values(3580000,'옹진군',6280000);
insert into sigungu_tb values(3490000,'중구',6280000);
--총10

--6290000 광주광역시 군,구 코드
insert into sigungu_tb values(3630000 ,'광산구',6290000);
insert into sigungu_tb values(3610000 ,'남구',6290000);
insert into sigungu_tb values(3590000 ,'동구',6290000);
insert into sigungu_tb values(3620000 ,'북구',6290000);
insert into sigungu_tb values(3600000 ,'서구',6290000);
--총5

--6300000 대전광역시 군,구 코드
insert into sigungu_tb values(3680000 ,'대덕구',6300000);
insert into sigungu_tb values(3640000 ,'동구',6300000);
insert into sigungu_tb values(3660000 ,'서구',6300000);
insert into sigungu_tb values(3670000 ,'유성구',6300000);
insert into sigungu_tb values(3650000 ,'중구',6300000);
--총5

--6310000 울산광역시 군,구 코드
insert into sigungu_tb values(3700000 ,'남구',6310000);
insert into sigungu_tb values(3710000 ,'동구',6310000);
insert into sigungu_tb values(3720000 ,'북구',6310000);
insert into sigungu_tb values(3730000 ,'울주군',6310000);
insert into sigungu_tb values(3690000 ,'중구',6310000);
--총5

--6410000 경기도 군,구 코드
insert into sigungu_tb values(4160000 ,'가평군',6410000);
insert into sigungu_tb values(3940000 ,'고양시',6410000);
insert into sigungu_tb values(3970000 ,'과천시',6410000);
insert into sigungu_tb values(3900000 ,'광명시',6410000);
insert into sigungu_tb values(5540000 ,'광주시',6410000);
insert into sigungu_tb values(3980000 ,'구리시',6410000);
insert into sigungu_tb values(4020000 ,'군포시',6410000);
insert into sigungu_tb values(4090000 ,'김포시',6410000);
insert into sigungu_tb values(3990000 ,'남양주시',6410000);
insert into sigungu_tb values(3920000 ,'동두천시',6410000);

insert into sigungu_tb values(3860000 ,'부천시',6410000);
insert into sigungu_tb values(3780000 ,'성남시',6410000);
insert into sigungu_tb values(3740000 ,'수원시',6410000);
insert into sigungu_tb values(4010000 ,'시흥시',6410000);
insert into sigungu_tb values(3930000 ,'안산시',6410000);
insert into sigungu_tb values(4080000 ,'안성시',6410000);
insert into sigungu_tb values(3830000 ,'안양시',6410000);
insert into sigungu_tb values(5590000 ,'양주시',6410000);
insert into sigungu_tb values(4170000 ,'양평군',6410000);
insert into sigungu_tb values(5700000 ,'여주시',6410000);

insert into sigungu_tb values(4140000 ,'연천군',6410000);
insert into sigungu_tb values(4000000 ,'오산시',6410000);
insert into sigungu_tb values(4050000 ,'용인시',6410000);
insert into sigungu_tb values(5630000 ,'용인시 기흥구',6410000);
insert into sigungu_tb values(4030000 ,'의왕시',6410000);
insert into sigungu_tb values(3820000 ,'의정부시',6410000);
insert into sigungu_tb values(4070000 ,'이천시',6410000);
insert into sigungu_tb values(4060000 ,'파주시',6410000);
insert into sigungu_tb values(3910000 ,'평택시',6410000);
insert into sigungu_tb values(5600000 ,'포천시',6410000);

insert into sigungu_tb values(4040000 ,'하남시',6410000);
insert into sigungu_tb values(5530000 ,'화성시',6410000);
--총32

--6420000 강원도 군,구 코드
insert into sigungu_tb values(4200000 ,'강릉시',6420000);
insert into sigungu_tb values(4340000 ,'고성군',6420000);
insert into sigungu_tb values(4210000 ,'동해시',6420000);
insert into sigungu_tb values(4240000 ,'삼척시',6420000);
insert into sigungu_tb values(4230000 ,'속초시',6420000);
insert into sigungu_tb values(4320000 ,'양구군',6420000);
insert into sigungu_tb values(4350000 ,'양양군',6420000);
insert into sigungu_tb values(4270000 ,'영월군',6420000);
insert into sigungu_tb values(4190000 ,'원주시',6420000);
insert into sigungu_tb values(4330000 ,'인제군',6420000);
insert into sigungu_tb values(4290000 ,'정선군',6420000);
insert into sigungu_tb values(4300000 ,'철원군',6420000);
insert into sigungu_tb values(4180000 ,'춘천시',6420000);
insert into sigungu_tb values(4220000 ,'태백시',6420000);
insert into sigungu_tb values(4280000 ,'평창군',6420000);
insert into sigungu_tb values(4250000 ,'홍천군',6420000);
insert into sigungu_tb values(4310000 ,'화천군',6420000);
insert into sigungu_tb values(4260000 ,'횡성군',6420000);
--총18

--6430000 충청북도 군,구 코드
insert into sigungu_tb values(4460000 ,'괴산군',6430000);
insert into sigungu_tb values(4480000 ,'단양군',6430000);
insert into sigungu_tb values(4420000 ,'보은군',6430000);
insert into sigungu_tb values(4440000 ,'영동군',6430000);
insert into sigungu_tb values(4430000 ,'옥천군',6430000);
insert into sigungu_tb values(4470000 ,'음성군',6430000);
insert into sigungu_tb values(4400000 ,'제천시',6430000);
insert into sigungu_tb values(5570000 ,'증평군',6430000);
insert into sigungu_tb values(4450000 ,'진천군',6430000);
insert into sigungu_tb values(5710000 ,'청주시',6430000);
insert into sigungu_tb values(4390000 ,'충주시',6430000);
--총11

--6440000 충청남도 군,구 코드
insert into sigungu_tb values(5580000 ,'계룡시',6440000);
insert into sigungu_tb values(4500000 ,'공주시',6440000);
insert into sigungu_tb values(4550000 ,'금산군',6440000);
insert into sigungu_tb values(4540000 ,'논산시',6440000);
insert into sigungu_tb values(5680000 ,'당진시',6440000);
insert into sigungu_tb values(4510000 ,'보령시',6440000);
insert into sigungu_tb values(4570000 ,'부여군',6440000);
insert into sigungu_tb values(4530000 ,'서산시',6440000);
insert into sigungu_tb values(4580000 ,'서천군',6440000);
insert into sigungu_tb values(4520000 ,'아산시',6440000);
insert into sigungu_tb values(4560000 ,'연기군',6440000);
insert into sigungu_tb values(4610000 ,'예산군',6440000);
insert into sigungu_tb values(4490000 ,'천안시',6440000);
insert into sigungu_tb values(4590000 ,'청양군',6440000);
insert into sigungu_tb values(4620000 ,'태안군',6440000);
insert into sigungu_tb values(4600000 ,'홍성군',6440000);
--총16

--6450000 전라북도 군,구 코드
insert into sigungu_tb values(4780000 ,'고창군',6450000);
insert into sigungu_tb values(4670000 ,'군산시',6450000);
insert into sigungu_tb values(4710000 ,'김제시',6450000);
insert into sigungu_tb values(4700000 ,'남원시',6450000);
insert into sigungu_tb values(4740000 ,'무주군',6450000);
insert into sigungu_tb values(4790000 ,'부안군',6450000);
insert into sigungu_tb values(4770000 ,'순창군',6450000);
insert into sigungu_tb values(4720000 ,'완주군',6450000);
insert into sigungu_tb values(4680000 ,'익산시',6450000);
insert into sigungu_tb values(4760000 ,'임실군',6450000);
insert into sigungu_tb values(4750000 ,'장수군',6450000);
insert into sigungu_tb values(4640000 ,'전주시',6450000);
insert into sigungu_tb values(4690000 ,'정읍시',6450000);
insert into sigungu_tb values(4730000 ,'진안군',6450000);
--총14

--6460000 전라남도 군,구 코드
insert into sigungu_tb values(4920000 ,'강진군',6460000);
insert into sigungu_tb values(4880000 ,'고흥군',6460000);
insert into sigungu_tb values(4860000 ,'곡성군',6460000);
insert into sigungu_tb values(4840000 ,'광양시',6460000);
insert into sigungu_tb values(4870000 ,'구례군',6460000);
insert into sigungu_tb values(4830000 ,'나주시',6460000);
insert into sigungu_tb values(4850000 ,'담양군',6460000);
insert into sigungu_tb values(4800000 ,'목포시',6460000);
insert into sigungu_tb values(4950000 ,'무안군',6460000);
insert into sigungu_tb values(4890000 ,'보성군',6460000);

insert into sigungu_tb values(4820000 ,'순천시',6460000);
insert into sigungu_tb values(5010000 ,'신안군',6460000);
insert into sigungu_tb values(4810000 ,'여수시',6460000);
insert into sigungu_tb values(4970000 ,'영광군',6460000);
insert into sigungu_tb values(4940000 ,'영암군',6460000);
insert into sigungu_tb values(4990000 ,'완도군',6460000);
insert into sigungu_tb values(4980000 ,'장성군',6460000);
insert into sigungu_tb values(4910000 ,'장흥군',6460000);
insert into sigungu_tb values(5000000 ,'진도군',6460000);
insert into sigungu_tb values(4960000 ,'함평군',6460000);

insert into sigungu_tb values(4930000 ,'해남군',6460000);
insert into sigungu_tb values(4900000 ,'화순군',6460000);
--총22

--6470000 경상북도 군,구 코드
insert into sigungu_tb values(5130000 ,'경산시',6470000);
insert into sigungu_tb values(5050000 ,'경주시',6470000);
insert into sigungu_tb values(5200000 ,'고령군',6470000);
insert into sigungu_tb values(5080000 ,'구미시',6470000);
insert into sigungu_tb values(5140000 ,'군위군',6470000);
insert into sigungu_tb values(5060000 ,'김천시',6470000);
insert into sigungu_tb values(5120000 ,'문경시',6470000);
insert into sigungu_tb values(5240000 ,'봉화군',6470000);
insert into sigungu_tb values(5110000 ,'상주시',6470000);
insert into sigungu_tb values(5210000 ,'성주군',6470000);

insert into sigungu_tb values(5070000 ,'안동시',6470000);
insert into sigungu_tb values(5180000 ,'영덕군',6470000);
insert into sigungu_tb values(5170000 ,'영양군',6470000);
insert into sigungu_tb values(5090000 ,'영주시',6470000);
insert into sigungu_tb values(5100000 ,'영천시',6470000);
insert into sigungu_tb values(5230000 ,'예천군',6470000);
insert into sigungu_tb values(5260000 ,'울릉군',6470000);
insert into sigungu_tb values(5250000 ,'울진군',6470000);
insert into sigungu_tb values(5150000 ,'의성군',6470000);
insert into sigungu_tb values(5190000 ,'청도군',6470000);

insert into sigungu_tb values(5160000 ,'청송군',6470000);
insert into sigungu_tb values(5220000 ,'칠곡군',6470000);
insert into sigungu_tb values(5020000 ,'포항시',6470000);
--총23

--6480000 경상남도 군,구 코드
insert into sigungu_tb values(5370000 ,'거제시',6480000);
insert into sigungu_tb values(5470000 ,'거창군',6480000);
insert into sigungu_tb values(5420000 ,'고성군',6480000);
insert into sigungu_tb values(5350000 ,'김해시',6480000);
insert into sigungu_tb values(5430000 ,'남해군',6480000);
insert into sigungu_tb values(5360000 ,'밀양시',6480000);
insert into sigungu_tb values(5340000 ,'사천시',6480000);
insert into sigungu_tb values(5450000 ,'산청군',6480000);
insert into sigungu_tb values(5380000 ,'양산시',6480000);
insert into sigungu_tb values(5390000 ,'의령군',6480000);

insert into sigungu_tb values(5310000 ,'진주시',6480000);
insert into sigungu_tb values(5410000 ,'창녕군',6480000);
insert into sigungu_tb values(5280000 ,'창원 마산합포회원구',6480000);
insert into sigungu_tb values(5670000 ,'창원 의창성산구',6480000);
insert into sigungu_tb values(5320000 ,'창원 진해구',6480000);
insert into sigungu_tb values(5330000 ,'통영시',6480000);
insert into sigungu_tb values(5440000 ,'하동군',6480000);
insert into sigungu_tb values(5400000 ,'함안군',6480000);
insert into sigungu_tb values(5460000 ,'함양군',6480000);
insert into sigungu_tb values(5480000 ,'합천군',6480000);
--총20

--6500000 제주특별자치도 군,구 코드
insert into sigungu_tb values(6520000 ,'서귀포시',6500000);
insert into sigungu_tb values(6510000 ,'제주시',6500000);
insert into sigungu_tb values(6500000 ,'제주특별자치도',6500000);
--총3
select * from sigungu_tb;
--총 235

-- ---------------------------------------------------------------------------------
--보호소
CREATE TABLE shelter_tb(
shelter_seq NUMBER primary key,
shelter_name VARCHAR2(200),
shelter_code NUMBER
);

create sequence shelter_tb_seq;

insert into shelter_tb values(shelter_tb_seq.nextval,'한국동물구조관리협회',311322200900001);
insert into shelter_tb values(shelter_tb_seq.nextval,'강남25시동물병원',311322201300001);

drop table shelter_tb;
drop sequence shelter_tb_seq;
select * from shelter_tb;
-- ---------------------------------------------------------------------------------

--품종 코드
CREATE TABLE kind_tb(
kind_seq NUMBER primary key,
kind_name VARCHAR2(200)
);

drop table kind_tb;
create sequence kind_tb_seq;
drop sequence kind_tb_seq;


insert into kind_tb values(kind_tb_seq.nextval,'[개] 비글');
insert into kind_tb values(kind_tb_seq.nextval,'[개] 그레이트 피레니즈');
insert into kind_tb values(kind_tb_seq.nextval,'[기타축종] 토끼');
insert into kind_tb values(kind_tb_seq.nextval,'[개] 사모예드');
insert into kind_tb values(kind_tb_seq.nextval,'[개] 도사');
insert into kind_tb values(kind_tb_seq.nextval,'[개] 시베리안 허스키');
insert into kind_tb values(kind_tb_seq.nextval,'[개] 삽살개');
insert into kind_tb values(kind_tb_seq.nextval,'[개] 스피츠');
insert into kind_tb values(kind_tb_seq.nextval,'[개] 셰퍼드');
insert into kind_tb values(kind_tb_seq.nextval,'[개] 닥스훈트');

insert into kind_tb values(kind_tb_seq.nextval,'[개] 코카 스파니엘');
insert into kind_tb values(kind_tb_seq.nextval,'[개] 발바리');
insert into kind_tb values(kind_tb_seq.nextval,'[고양이]');
insert into kind_tb values(kind_tb_seq.nextval,'[개] 시바견');
insert into kind_tb values(kind_tb_seq.nextval,'[개] 말티즈');
insert into kind_tb values(kind_tb_seq.nextval,'[개] 진도견');
insert into kind_tb values(kind_tb_seq.nextval,'[개] 핏플');
insert into kind_tb values(kind_tb_seq.nextval,'[개] 포인터');
insert into kind_tb values(kind_tb_seq.nextval,'[개] 시츄');
insert into kind_tb values(kind_tb_seq.nextval,'[개] 요크셔 테리어');

insert into kind_tb values(kind_tb_seq.nextval,'[개] 그레이 하운드');
insert into kind_tb values(kind_tb_seq.nextval,'[개] 미니어쳐 핀셔');
insert into kind_tb values(kind_tb_seq.nextval,'[개] 보스턴 테리어');
insert into kind_tb values(kind_tb_seq.nextval,'[개] 슈나우져');
insert into kind_tb values(kind_tb_seq.nextval,'[개] 골든 리트리버');
insert into kind_tb values(kind_tb_seq.nextval,'[기타축종] 흑염소');
insert into kind_tb values(kind_tb_seq.nextval,'[개] 포메라니안');
insert into kind_tb values(kind_tb_seq.nextval,'[개] 말리노이즈');
insert into kind_tb values(kind_tb_seq.nextval,'[개] 잉글리쉬 쉽독');
insert into kind_tb values(kind_tb_seq.nextval,'[개] 울프독');

insert into kind_tb values(kind_tb_seq.nextval,'[기타축종] 염소');
insert into kind_tb values(kind_tb_seq.nextval,'[기타축종] 개-블랙탄 시바');
insert into kind_tb values(kind_tb_seq.nextval,'[개] 페키니즈');
insert into kind_tb values(kind_tb_seq.nextval,'[개] 불독');
insert into kind_tb values(kind_tb_seq.nextval,'[개] 롯트와일러');
insert into kind_tb values(kind_tb_seq.nextval,'[개] 치와와');
insert into kind_tb values(kind_tb_seq.nextval,'[개] 믹스견');
insert into kind_tb values(kind_tb_seq.nextval,'[개] 푸들');
insert into kind_tb values(kind_tb_seq.nextval,'[개] 불테리어');
--총39
select * from kind_tb;
-- ---------------------------------------------------------------------------------

--동물 정보 테이블
CREATE TABLE animals_info_tb(
desertionNo VARCHAR2(100) PRIMARY KEY,
filename VARCHAR2(800),
happenDt VARCHAR2(100),
happenPlace VARCHAR2(100),
kindCd VARCHAR2(100),
colorCd VARCHAR2(100),
age VARCHAR2(100),
weight VARCHAR2(100),
noticeNo VARCHAR2(100),
noticeSdt VARCHAR2(100),
noticeEdt VARCHAR2(100),
popfile VARCHAR2(800),
processState VARCHAR2(100),
sexCd VARCHAR2(100),
neuterYn VARCHAR2(100),
specialMark VARCHAR2(800),
careNm VARCHAR2(100),
careTel VARCHAR2(100),
careAddr VARCHAR2(800),
orgNm VARCHAR2(100),
chargeNm VARCHAR2(100),
officetel VARCHAR2(100),
noticeComment VARCHAR2(100),
kindNum NUMBER
);

select * from animals_info_tb;
delete from animals_info_tb;
drop table animals_info_tb;

-- ------------------------------------------------이 이후로 아직 만들면 안됨
create table tblBoard(
SEQ NUMBER  primary key,
TITLE VARCHAR2(200),
CONTENT VARCHAR2(2000),
WRITER VARCHAR2(100),
REGDATE VARCHAR2(14),
HITCOUNT NUMBER,
PASSWORD VARCHAR2(10),
bref number DEFAULT 0, --참조원글번호
bstep number DEFAULT 0,--글순번
blevel number DEFAULT 0,--글 들여쓰기 수준
uploadPath VARCHAR2(100)
);
-- 글번호 SEQ
create sequence seq_board;
