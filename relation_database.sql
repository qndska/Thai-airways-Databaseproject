drop database if exists thai_airway;
create database if not exists thai_airway;
-- show databases;
use `thai_airway`;

create table passenger (
	Citizen_ID			varchar(50)		not null,
	Nationally			varchar(50)		not null,
	Gender				char(1)			not null,
	Fname				varchar(50)		not null,	
	Lname				varchar(50)		not null,
	Email				varchar(100)	,
	B_date				date			,
	Phone_No			varchar(20)		,
    Primary key (Citizen_ID)
);

insert into passenger
values
('1729800287402',		'Thai',		'M',	'Teerawut',		'Jonjaroen',	'Teerawut.jon@gmail.com',		'1997-09-12',	'093-521-4698'),
('5830840257930485',	'England',	'F',	'Rosy',			'Kiki',			'Rosy.kiki@hotmail.co.th',		'1996-02-11',	'0113-4854-3453'),
('1729800356402',		'Thai',		'F'	,	'Jennicha',		'Huangchai',	'jennicha.huang@gmail.com',		'2003-01-27',	'083-904-2156'),
('3257392749904',		'Thai',		'M',	'Ploynalin',	'Pinpuggaew',	'ploynalin.pin@hotmail.co.th',	'2002-11-03',	'087-945-8567'),
('1048200311053894',	'Chinese',	'F',	'Lusi',			'Zhao',			'luluzhao@gmail.com',			'2001-12-19',	'185-192-4811'),
('38495038502',			'Brazil',	'M',	'Terra',		'Malibu	', 		'terra1995.malibu@gmail.com',	'1995-12-30',	'5-34-53-7531-3455'),
('48503258205',			'Brazil',	'F',	'Marriana',		'Holme'	,		'Marriana.hol@gmail.com',		'1999-07-24',	'2-53-78-2345-7537'),
('5739485048382216',	'England',	'F',	'Juria',		'Phasel', 		'juria.pha1310@gmail.com',		'1995-10-13',	'02-4563-3333'),
('48502385032',			'Brazil',	'M',	'Lucas',		'Paolo',		'lucas.p@gmail.com',			'1997-09-01',	'7-34-54-3235-5533'),
('1026199704185734',	'Chinese',	'M',	'Hedi',			'Wang',			'wang1234@gmail.com',			'2000-03-25',	'131-866-2137');

select *
from passenger;

create table boardingpass(
	Boarding_No			char(17)		primary key,
	Boarding_time		char(5)			not null,		
	Gate				char(2)			not null,
	Sequence_No			int				,
	Special_meal		char(4)		
);

insert into boardingpass
values 
('AxAx2170000000001', 	'07:50', 	'A2',	1,	'BBML'),
('AxAx2170000000002',	'10:30', 	'C6',	2,	'RVML'),
('AxAx2170000000003',	'23:15', 	'B5',	3,	'CHML'),
('AxAx2170000000004',	'02:30', 	'A2',	4,	Null),
('AxAx2170000000005',	'15:45', 	'C6',	5,	'CHML'),
('AxBx2170000000011',	'07:50', 	'A4',	6,	Null),
('AxBx2170000000012',	'02:30', 	'A2',	7,	'RVML'),
('AxBx2170000000013',	'23:15', 	'A4',	8,	'CHML'),
('AxBx2170000000014',	'15:45', 	'B5',	9,	'SFML'),
('AxBx2170000000015',	'10:30', 	'A2',	10,	Null),
('AxCx2170000000100',	'19:50', 	'A4',	11,	'CHML'),
('AxCx2170000000101',	'07:50', 	'C6',	12,	Null),
('AxCx2170000000102',	'02:30', 	'A2',	13,	'BBML'),
('AxCx2170000000103',	'07:50', 	'A2',	14,	Null),
('AxCx2170000000104',	'19:50', 	'B5',	15,	'RVML'),
('AxCx2170000000105',	'15:45', 	'A4',	16,	'CHML'),
('AxCx2170000000106',	'23:15', 	'A2',	17,	Null),
('AxCx2170000000107',	'07:50', 	'C6',	18,	'VLML'),
('AxCx2170000000108',	'02:30', 	'A4',	19,	Null),
('AxCx2170000000109',	'10:30', 	'B5',	20,	'CHML'),
('BxYx2170000000000',	'19:50', 	'A4',	21,	'BBML'),
('BxYx2180000000001',	'23:15', 	'C6',	22,	Null),
('BxYx2180000000002',	'02:30', 	'A4',	23,	'CHML'),
('BxYx2180000000003',	'07:50', 	'A4',	24,	Null),
('BxYx2180000000004',	'15:45', 	'A2',	25,	'RVML'),
('BxYx2180000000005',	'23:15', 	'B5',	26,	Null),
('BxYx2180000000006',	'10:30', 	'C6',	27,	Null),
('BxYx2180000000007',	'02:30', 	'A4',	28,	'CHML'),
('BxYx2180000000008',	'07:50', 	'A2',	29,	'BBML'),
('BxYx2180000000009',	'23:15', 	'B5',	30,	'CHML');

select *
from boardingpass;

create table promotion(
	P_code				char(13)		primary key,
	Start_date			date			,
	Expiration_date		date			not null,
	Percentage_discount	int				not null
);

insert into promotion
values
('TGXMASTERCARD' 	, '2022-11-08'	, '2023-11-08'	, 15),	
('CSA1SERERTFG2' 	, '2022-03-11'	, '2023-03-11'	, 10),	
('ASEDF6GTHYJUI'  	, '2022-05-09'	, '2023-05-09'	, 15),		
('JIKOLPOIUY7YH'	, '2022-08-27'	, '2023-08-27'	, 10),		
('Y0KILOIPLO9UV'	, '2022-09-16'	, '2022-12-01'	, 15),		
('1FRGTHY4FRVGU'	, '2022-07-21'	, '2023-09-21'	, 10),		
('RTGHYJUIKOLP7'	, '2022-02-01'	, '2023-02-01'	, 15),		
('WQR4TYHGVC0F2'	, '2022-03-22'	, '2023-03-22'	, 5),		
('QASWCFVGBH3NJ'	, '2022-05-24'	, '2023-05-24'	, 10),		
('EDC8KI9JUNKLM'	, '2022-10-15'	, '2023-10-15'	, 15);

select *
from promotion;

create table payment(
	Pay_ID				char(16)		primary key,
	Pay_in_slip			int				not null,			
	Amount				decimal(9,2)	not null,
	Payment_date		datetime		,	
	Promotion_code		char(13)		,
	constraint FK_PromotionCode foreign key (Promotion_code)
	references promotion(P_code)
);

insert into payment
values
('TXT2164836279771',	70013658,	8561.8545,	'2022-11-22',	'TGXMASTERCARD'),
('TXT2781739388304',	64862011,	10072.77,	'2022-11-22',	Null),
('TXT7482639402621',	84632710,	10072.77,	'2022-11-22',	Null),
('TXT4231632632518',	84730251,	10072.77,	'2022-11-22',	Null),
('TXT2966353428162',	74937201,	10906.81,	'2022-01-28',	Null),
('TXT2836528162837',	36282018,	10361.4695,	'2022-01-28',	'WQR4TYHGVC0F2'),
('TXT3619262937201',	29780382,	9270.7885,	'2022-01-28',	'EDC8KI9JUNKLM'),
('TXT9275172926273',	74937102,	10906.81,	'2022-01-28',	Null),
('TXT2615183142611',	84739471,	1250.00,	'2022-01-18',	Null),
('TXT0817352415262',	53729171,	1062.5,		'2022-01-18',	'ASEDF6GTHYJUI'),
('TXT2725308740362',	74937403,	1125.00,	'2022-01-18',	'1FRGTHY4FRVGU'),
('TXT5830271618203',	85652730,	2495.00,	'2022-08-09',	Null),
('TXT4373027261837',	32648351,	2495.00,	'2022-08-09',	Null),
('TXT2001737251821',	17363931,	7500.60,	'2022-09-14',	'1FRGTHY4FRVGU'),
('TXT3820173739272',	63829168,	8334.00,	'2022-09-14',	Null),
('TXT6803728017392',	64537362,	8334.00,	'2022-09-14',	Null),
('TXT8736292719179',	79363924,	7500.60,	'2022-09-14',	'JIKOLPOIUY7YH'),
('TXT7463936292748',	74936483,	6647.00,	'2022-06-17',	'TGXMASTERCARD'),
('TXT2911736202826'	,	74936387,	2752.45,	'2022-06-17',	Null),
('TXT2893626192738',	76383764,	2752.45,	'2022-06-17',	Null),
('TXT2472947299924',	73826293,	5358.99,	'2022-07-19',	Null),
('TXT2848749898402',	42325367,	5358.99,	'2022-07-19',	Null),
('TXT2846277332948',	63416248,	5358.99,	'2022-07-19',	Null),
('TXT2078924982129',	97857393,	10357.726,	'2022-09-03',	'ASEDF6GTHYJUI'),
('TXT2842398749272',	93642718,	12185.56,	'2022-09-03',	Null),
('TXT7429479274784',	63829261,	784.84,		'2022-11-10',	Null),
('TXT2830937913113'	,	73649463,	784.84,		'2022-11-10',	Null),
('TXT4702404494848',	63528253,	7820.00,	'2022-12-07',	Null),
('TXT7409247024484',	63578352,	7820.00,	'2022-12-07',	Null),
('TXT8939883013931',	63826211,	6647.00,	'2022-12-07',	'Y0KILOIPLO9UV');

select *
from payment;

Create table flight(
	Flight_No			char(6)			primary key,
	F_option			varchar(10)		not null,
    Departure_date		datetime		not null,
	Return_date			datetime		,
    Total_passenger_No	int				not null,
    Return_city			char(20)			,
    departure_city		char(20)			not null
);

insert into flight
values
('FD2065'	, 'round trip', '2022-12-01'	, '2022-12-01'	, 300	, 'Bangkok', 	'Mumbai'),
('AC3745'	, 'one way'	, 	'2022-03-14' 	, '2022-03-14'	, 312	, 'Akita'	, 	'Amsterdam'),
('AA3245'	, 'one way'	, 	'2022-01-27'	, '2022-01-28' 	, 342	, 'Auckland', 	'Beijing'),
('TG5265'	, 'round trip', '2022-08-30'  	, '2022-08-30' 	, 246	, 'Basel' ,		'Chicago'),
('XZ4131'	, 'multi-city', '2022-09-24'	, '2022-09-24'	, 348	, 'Zurich',	 	'Wellington'),
('SQ4423'	, 'round trip',	'2022-07-22'	, '2022-07-22'	, 287	, 'Vienna',		'Toronto'),
('RZ4562'	, 'one way', 	'2022-08-21'	, '2022-08-21'	, 298	, 'Shanghai', 	'Istanbul'),
('RT9122'	, 'round trip', '2022-09-11'	, '2022-09-12'	, 335	, 'Houston', 	'Oslo'),
('XZ7902'	, 'multi-city', '2022-11-18' 	, '2022-11-19'	, 340	, 'Copenhagen', 'Shenzhen'),
('QE4771'	, 'one way', 	'2022-12-17'	, '2022-12-17'	, 345	, 'Dubai',  	'London');

select *
from flight;

create table seat(
	Seat_No				char(3)			primary key,
    Seat_type			varchar(10)		,
    Seat_class			varchar(20)		,
    Flight_No			char(6)			,
    constraint FK_Flight_No foreign key (Flight_No)
    references flight(Flight_No)
);

insert into seat
values
('12A',		'middle',	'Business',	'FD2065'),
('11A',		'aisle',	'Economy',	'XZ4131'),
('19A',		'aisle',	'Economy',	'AC3745'),
('13B',		'window',	'Business',	'RZ4562'),
('50K',		'window',	'Economy',	'TG5265'),
('20A',		'aisle',	'Economy',	'XZ7902'),
('14B',		'middle',	'Business',	'RT9122'),
('67H',		'aisle',	'Economy',	'QE4771'),
('72E',		'middle',	'Economy',	'SQ4423'),
('60K',		'window',	'Economy',	'AA3245');

select *
from seat;

create table seat_color(
	Seat_No				char(3)			not null,
    Seat_color			varchar(10)		not null,
    constraint PK_seat_color primary key (Seat_No,Seat_color)
);

insert into seat_color
values 
('11A',	'Purple'),
('12A',	'Purple'),
('12A',	'Yellow'),
('13B',	'Yellow'),
('13B',	'Purple'),
('14B',	'Purple'),
('14B',	'Yellow'),
('15C',	'White'),
('16C',	'White'),
('17D',	'Purple'),
('17D',	'Green'),
('18D',	'Purple'),
('18D',	'Green'),
('19A',	'Purple'),
('20A',	'Purple	');

select *
from seat_color;

create table ticket(
	Ticket_ID			varchar(50)		primary key,
	T_type				char(1)			not null,
	Price				decimal(9,2)	not null,
	Expiration_date		date			not null,
	Purchasing_date		date			,
	Boarding_No			char(17)		,
	Flight_No			char(6)			,
	Citizen_ID			varchar(50)		,
	Pay_ID				char(16)		,	
	constraint FK_Boardingpass_No foreign key (Boarding_No)
	references boardingpass(Boarding_No),
	constraint FK_F_No foreign key (Flight_No)
	references flight(Flight_No),
    constraint FK_Citizen_ID foreign key (Citizen_ID)
	references passenger(Citizen_ID),
	constraint FK_Pay_ID foreign key (Pay_ID)
	references payment(Pay_ID)
);

insert into ticket
values
('10634138910316' ,	'E'	, 10072.77 ,  '2022-12-01'	, '2022-11-22', 'AxAx2170000000001', 'FD2065', '1729800287402',	'TXT2164836279771'),
('10634137910318' ,	'E'	, 10072.77 ,  '2022-12-01'	, '2022-11-22', 'AxAx2170000000002', 'FD2065', '38495038502', 	'TXT2781739388304'),
('10634138912134' ,	'E'	, 10072.77 ,  '2022-12-01'	, '2022-11-22', 'AxAx2170000000003', 'FD2065', '5830840257930485',	'TXT7482639402621'),
('10634223412156' ,	'E'	, 10072.77 ,  '2022-12-01'	, '2022-11-22', 'AxAx2170000000004', 'FD2065', '48502385032',	'TXT4231632632518'),
('10785406382463' ,	'N'	 , 10906.81	,'2022-03-14' ,  '2022-01-28',	'AxAx2170000000005', 'AC3745', '5830840257930485', 'TXT2966353428162'),
('10782306382411' ,	'N'	 , 10906.81	,'2022-03-14' ,  '2022-01-28'	,'AxBx2170000000011', 'AC3745', '38495038502', 'TXT2836528162837'),
('10785421382463' ,	'N'	 , 10906.81	,'2022-03-14' ,  '2022-01-28'	,'AxBx2170000000012', 'AC3745', '1729800287402',  'TXT3619262937201'),
('10785406382345' ,	'N'	 , 10906.81	,'2022-03-14' ,  '2022-01-28'	,'AxBx2170000000013', 'AC3745', '48502385032',  'TXT9275172926273'),
('11843952933274' ,	'N'	, 1250.00	, '2022-01-27'	, '2022-01-18'	,'AxBx2170000000014', 'AA3245', '1729800287402',  'TXT2615183142611'),
('11843952912275' ,	'N'	, 1250.00	, '2022-01-27'	, '2022-01-18'	,'AxBx2170000000015', 'AA3245', '1026199704185734'	, 'TXT0817352415262'),
('11843952921235' ,	'N'	, 1250.00	, '2022-01-27'	, '2022-01-18'	,'AxCx2170000000100', 'AA3245', '48502385032'	, 'TXT2725308740362'),
('21152736840234', 'E',	 2495.00 ,	 '2022-08-30'  , '2022-08-09', 	'AxCx2170000000101', 'TG5265' , '1729800287402', 'TXT5830271618203'),
('21152736840836', 'E'	, 2495.00 , 	'2022-08-30', '2022-08-09', 	'AxCx2170000000102', 'TG5265' , '3257392749904'	, 'TXT4373027261837'),
('23169505383564', 'N'	, 8334.00 , 	'2022-09-24','2022-09-14' ,	'AxCx2170000000103', 'XZ4131', '1048200311053894'	,'TXT2001737251821'),
('23169123383521', 'N'	, 8334.00 , 	'2022-09-24','2022-09-14' ,	'AxCx2170000000104', 'XZ4131', '48503258205'	, 'TXT3820173739272'),
('23169123323121', 'N'	, 8334.00 , 	'2022-09-24','2022-09-14' ,	'AxCx2170000000105', 'XZ4131', '5830840257930485'	,'TXT6803728017392'),
('23169123324351', 'N'	, 8334.00 , 	'2022-09-24','2022-09-14' ,	'AxCx2170000000106', 'XZ4131', '38495038502'	,'TXT8736292719179'),
('53899264926443', 'E'	, 2752.45	, '2022-07-22'	,'2022-06-17'	, 'AxCx2170000000107', 'SQ4423', '38495038502'	, 'TXT7463936292748'),
('33899264926420', 'E'	, 2752.45	, '2022-07-22'	,'2022-06-17'	, 'AxCx2170000000108', 'SQ4423', '3257392749904'	, 'TXT2911736202826'),
('21239264926443', 'E'	, 2752.45	, '2022-07-22'	,'2022-06-17'	, 'AxCx2170000000109', 'SQ4423', '1026199704185734'	, 'TXT2893626192738'),
('12213661589859',	'N'	, 5358.99	,'2022-08-21'	,'2022-07-19'	,'BxYx2170000000000', 'RZ4562', '48503258205'	, 'TXT2472947299924'),
('42213661584559',	'N'	, 5358.99	,'2022-08-21'	,'2022-07-19'	,'BxYx2180000000001', 'RZ4562', '1048200311053894'	, 'TXT2848749898402'),
('22213661581231',	'N'	, 5358.99	,'2022-08-21'	,'2022-07-19'	,'BxYx2180000000002', 'RZ4562', '5739485048382216' , 'TXT2846277332948'),
('23206425769963',	'E'	,12185.56	, '2022-09-11'	, '2022-09-03'	,'BxYx2180000000003', 'RT9122', '5739485048382216'	, 'TXT2078924982129'),
('23806425769963',	'E'	,12185.56	, '2022-09-11'	, '2022-09-03'	,'BxYx2180000000004', 'RT9122', '48502385032'	, 'TXT2842398749272'),
('53478098443536', 'E'	,  784.84	, '2022-11-18' ,  '2022-11-10','BxYx2180000000005', 'XZ7902', '48502385032' , 'TXT7429479274784'),
('53328092343536', 'E'	,  784.84	, '2022-11-18' ,  '2022-11-10','BxYx2180000000006', 'XZ7902', '1026199704185734' , 'TXT2830937913113'),
('37843702564328',	'N'	, 7820.00	,  '2022-12-17'	, '2022-12-07'	,'BxYx2180000000007', 'QE4771' , '1026199704185734',	'TXT4702404494848'),
('37843342564321',	'N'	, 7820.00	,  '2022-12-17'	, '2022-12-07'	,'BxYx2180000000008', 'QE4771' , '5739485048382216',	'TXT7409247024484'),
('37843702564234',	'N'	, 7820.00	,  '2022-12-17'	, '2022-12-07'	,'BxYx2180000000009', 'QE4771' , '1729800356402',	'TXT8939883013931');

select*
from ticket;