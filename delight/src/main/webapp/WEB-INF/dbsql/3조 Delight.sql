/*
--1. D����̺� delight ���� ����(���̺����̽� ����)
--2. ����Ŭ �����ڰ��� ���� (cmd -> sqlplus / as sysdba) 
--1. ���̺����̽� ����
 create tablespace tbs_delight
 datafile 'D:\delight\tb_delight.dbf' size 500M
 autoextend on next 50M;
 
--2. ��� ���� , ����
 create user delight
 identified by delight123
 default tablespace tbs_delight;

--���Ѻο�
grant connect, resource to delight;

--������
alter user delight account unlock;*/


ALTER TABLE tbl_mileage
	DROP
		CONSTRAINT FK_tbl_user_TO_tbl_mileage
		CASCADE;

ALTER TABLE tbl_mileage
	DROP
		CONSTRAINT FK_tbl_mileagebec_TO_tbl_mileage
		CASCADE;

ALTER TABLE tbl_review
	DROP
		CONSTRAINT FK_tbl_user_TO_tbl_review
		CASCADE;

ALTER TABLE tbl_review
	DROP
		CONSTRAINT FK_tbl_reservation_TO_tbl_review
		CASCADE;

ALTER TABLE tbl_ann
	DROP
		CONSTRAINT FK_tbl_user_TO_tbl_ann
		CASCADE;

ALTER TABLE tbl_reservation
	DROP
		CONSTRAINT FK_tbl_user_TO_tbl_reservation
		CASCADE;

ALTER TABLE tbl_reservation
	DROP
		CONSTRAINT FK_tbl_ticket_TO_tbl_reservation
		CASCADE;

ALTER TABLE tbl_discount
	DROP
		CONSTRAINT FK_tbl_ticket_TO_tbl_discount
		CASCADE;

ALTER TABLE tbl_promote
	DROP
		CONSTRAINT FK_tbl_user_TO_tbl_promote
		CASCADE;

ALTER TABLE tbl_payment
	DROP
		CONSTRAINT FK_tbl_reservation_TO_tbl_payment
		CASCADE;

ALTER TABLE tbl_inquery
	DROP
		CONSTRAINT FK_tbl_user_TO_tbl_inquery
		CASCADE;

ALTER TABLE tbl_faq
	DROP
		CONSTRAINT FK_tbl_user_TO_tbl_faq
		CASCADE;

ALTER TABLE tbl_inqAnw
	DROP
		CONSTRAINT FK_tbl_user_TO_tbl_inqAnw
		CASCADE;

ALTER TABLE tbl_inqAnw
	DROP
		CONSTRAINT FK_tbl_inquery_TO_tbl_inqAnw
		CASCADE;

ALTER TABLE tbl_like
	DROP
		CONSTRAINT FK_tbl_user_TO_tbl_like
		CASCADE;

ALTER TABLE tbl_user
	DROP
		CONSTRAINT FK_out_reason_TO_tbl_user
		CASCADE;

ALTER TABLE tbl_user
	DROP
		CONSTRAINT FK_tbl_grade_TO_tbl_user
		CASCADE;

ALTER TABLE tbl_premium
	DROP
		CONSTRAINT FK_tbl_user_TO_tbl_premium
		CASCADE;

ALTER TABLE tbl_refund
	DROP
		CONSTRAINT FK_tbl_payment_TO_tbl_refund
		CASCADE;

ALTER TABLE tbl_refund
	DROP
		CONSTRAINT FK_tbl_refundbec_TO_tbl_refund
		CASCADE;

ALTER TABLE tbl_mileage
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE tbl_mileagebec
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE tbl_review
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE tbl_ann
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE tbl_reservation
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE tbl_readcount
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE tbl_discount
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE tbl_promote
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE tbl_payment
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE tbl_inquery
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE tbl_faq
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE tbl_inqAnw
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE tbl_like
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE tbl_grade
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE tbl_user
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE tbl_premium
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE visitors
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE out_reason
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE tbl_sido
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE tbl_gugun
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE tbl_ticket
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE tbl_recent
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE tbl_refund
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE tbl_refundbec
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

/* ���ϸ��� ��ȭ */
DROP TABLE tbl_mileage 
	CASCADE CONSTRAINTS;

/* ���ϸ��� ��ȭ ���� ���� */
DROP TABLE tbl_mileagebec 
	CASCADE CONSTRAINTS;

/* �ı� */
DROP TABLE tbl_review 
	CASCADE CONSTRAINTS;

/* �������� */
DROP TABLE tbl_ann 
	CASCADE CONSTRAINTS;

/* ���� */
DROP TABLE tbl_reservation 
	CASCADE CONSTRAINTS;

/* �����Խù� ��ȸ�� */
DROP TABLE tbl_readcount 
	CASCADE CONSTRAINTS;

/* Ư������ */
DROP TABLE tbl_discount 
	CASCADE CONSTRAINTS;

/* ȫ�� �Խ��� */
DROP TABLE tbl_promote 
	CASCADE CONSTRAINTS;

/* �������� */
DROP TABLE tbl_payment 
	CASCADE CONSTRAINTS;

/* 1:1 ���� �Խ��� */
DROP TABLE tbl_inquery 
	CASCADE CONSTRAINTS;

/* ���� ���� ���� */
DROP TABLE tbl_faq 
	CASCADE CONSTRAINTS;

/* ���� �亯 */
DROP TABLE tbl_inqAnw 
	CASCADE CONSTRAINTS;

/* ���ƿ� */
DROP TABLE tbl_like 
	CASCADE CONSTRAINTS;

/* ȸ����� */
DROP TABLE tbl_grade 
	CASCADE CONSTRAINTS;

/* ���� */
DROP TABLE tbl_user 
	CASCADE CONSTRAINTS;

/* ȸ���� */
DROP TABLE tbl_premium 
	CASCADE CONSTRAINTS;

/* �湮�� */
DROP TABLE visitors 
	CASCADE CONSTRAINTS;

/* Ż�� ���� */
DROP TABLE out_reason 
	CASCADE CONSTRAINTS;

/* ����(��,��) �ڵ� */
DROP TABLE tbl_sido 
	CASCADE CONSTRAINTS;

/* ����(��, ��) �ڵ� */
DROP TABLE tbl_gugun 
	CASCADE CONSTRAINTS;

/* ������ �ǸŰ��� ���� */
DROP TABLE tbl_ticket 
	CASCADE CONSTRAINTS;

/* �ֱ� �� ���� */
DROP TABLE tbl_recent 
	CASCADE CONSTRAINTS;

/* ȯ�� */
DROP TABLE tbl_refund 
	CASCADE CONSTRAINTS;

/* ȯ�� ���� */
DROP TABLE tbl_refundbec 
	CASCADE CONSTRAINTS;

/* ���ϸ��� ��ȭ */
CREATE TABLE tbl_mileage (
	mileage_seq NUMBER NOT NULL, /* ���ϸ��� ��ȭ ������ */
	mileage_point NUMBER NOT NULL, /* ���ϸ��� ��ȭ �ݾ� */
	mileage_reg DATE DEFAULT sysdate NOT NULL, /* ���ϸ��� ��ȭ ��¥ */
	userid VARCHAR2(50) NOT NULL, /* ���̵� */
	mileaebec_seq NUMBER /* ���ϸ��� ��ȭ ���� ���� ������ */
);

ALTER TABLE tbl_mileage
	ADD
		CONSTRAINT PK_tbl_mileage
		PRIMARY KEY (
			mileage_seq
		);

/* ���ϸ��� ��ȭ ���� ���� */
CREATE TABLE tbl_mileagebec (
	mileaebec_seq NUMBER NOT NULL, /* ���ϸ��� ��ȭ ���� ���� ������ */
	mileage_bec VARCHAR2(50) NOT NULL /* ��ȭ ���� */
);

ALTER TABLE tbl_mileagebec
	ADD
		CONSTRAINT PK_tbl_mileagebec
		PRIMARY KEY (
			mileaebec_seq
		);

/* �ı� */
CREATE TABLE tbl_review (
	review_seq NUMBER NOT NULL, /* �ı� ������ */
	review_type VARCHAR2(1) NOT NULL, /* �ı� Ÿ�� */
	review_mt20id VARCHAR2(200) NOT NULL,/* ���� id*/
	review_title VARCHAR2(100) NOT NULL, /* �ı� ���� */
	review_content CLOB NOT NULL, /* �ı� ���� */
	review_score NUMBER, /* ���� */
	review_p1 CLOB, /* �ı� ����1 */
	review_p2 CLOB, /* �ı� ����2 */
	review_p3 CLOB, /* �ı� ����3 */
	review_regdate DATE DEFAULT sysdate NOT NULL, /* �ı� ����� */
	review_mileage NUMBER NOT NULL, /* �ı� ������� ���ϸ���  20 50 75 100*/
	userid VARCHAR2(50) NOT NULL, /* ���̵� */
	reservation_seq NUMBER /* ���� ������ */
);

ALTER TABLE tbl_review
	ADD
		CONSTRAINT PK_tbl_review
		PRIMARY KEY (
			review_seq
		);

/* �������� */
CREATE TABLE tbl_ann (
	ann_seq NUMBER NOT NULL, /* �������� ������ */
	ann_type VARCHAR2(1) NOT NULL, /* �������� Ÿ�� */
	ann_title VARCHAR2(100) NOT NULL, /* �������� ���� */
	ann_content CLOB NOT NULL, /* �������� ���� */
	ann_img VARCHAR2(300) , /* ���� �̹��� ���*/
	ann_top VARCHAR2(1) DEFAULT 'N', /* ��� ���� ���� */
	ann_show VARCHAR2(1) DEFAULT 'N', /* ���� ���� */
	ann_regdate DATE DEFAULT sysdate NOT NULL, /* �������� ����� */
	userid VARCHAR2(50) NOT NULL /* ���̵� */
);

ALTER TABLE tbl_ann
	ADD
		CONSTRAINT PK_tbl_ann
		PRIMARY KEY (
			ann_seq
		);

/* ���� */
CREATE TABLE tbl_reservation (
	reservation_seq NUMBER NOT NULL, /* ���� ������ */
	mt20id VARCHAR2(20) NOT NULL, /* ���� id */
	prfnm VARCHAR2(60), /* ������ */
	pay_price NUMBER, /* �������� */
	perfomtype VARCHAR2(20) NOT NULL, /* �������� */
	mt10id VARCHAR2(20) NOT NULL, /* �����ü� id */
	select_date DATE NOT NULL, /* ���� ������ ��¥ */
	select_time VARCHAR2(50) NOT NULL, /* ���� ������ �ð� */
	booking NUMBER NOT NULL, /* ���� ��� */
	seat_class VARCHAR2(10) NOT NULL, /* ������ �¼� ��� */
	pay_ticket_number VARCHAR2(30) NOT NULL, /* ���� ��ȣ */
	res_date DATE DEFAULT sysdate NOT NULL, /* ���� ��¥ */
	userid VARCHAR2(50) NOT NULL, /* ���̵� */
	ticket_seq NUMBER /* ���� ������ */
);

ALTER TABLE tbl_reservation
	ADD
		CONSTRAINT PK_tbl_reservation
		PRIMARY KEY (
			reservation_seq
		);

/* �����Խù� ��ȸ�� */
CREATE TABLE tbl_readcount (
	readcount_seq NUMBER NOT NULL, /* ���� ��ȸ�� ������ */
	mt20id VARCHAR2(20) /* ���� id */
);

ALTER TABLE tbl_readcount
	ADD
		CONSTRAINT PK_tbl_readcount
		PRIMARY KEY (
			readcount_seq
		);

/* Ư������ */
CREATE TABLE tbl_discount (
	discount_seq NUMBER NOT NULL, /* ���ι�ȣ */
	detail VARCHAR2(50), /* ���μ��� */
	percent NUMBER NOT NULL, /* ������ */
	ticket_seq NUMBER /* ���� ������ */
);

ALTER TABLE tbl_discount
	ADD
		CONSTRAINT PK_tbl_discount
		PRIMARY KEY (
			discount_seq
		);

/* ȫ�� �Խ��� */
CREATE TABLE tbl_promote (
	promote_seq NUMBER NOT NULL, /* ȫ���Խù� ������ */
	promote_title VARCHAR2(200) NOT NULL, /* ȫ���Խù� ���� */
	promote_content CLOB NOT NULL, /* ȫ�� ���� */
	promote_p1 CLOB, /* ȫ�� ����1 */
	review_regdate DATE DEFAULT sysdate NOT NULL, /* ȫ���Խù� ����� */
	mileagegive VARCHAR2(1) DEFAULT 'N' NOT NULL, /* ���޿Ϸ�*/
	userid VARCHAR2(50) NOT NULL /* ���̵� */
);

ALTER TABLE tbl_promote
	ADD
		CONSTRAINT PK_tbl_promote
		PRIMARY KEY (
			promote_seq
		);

/* �������� */
CREATE TABLE tbl_payment (
	pay_seq NUMBER NOT NULL, /* ������ȣ */
	pay_price NUMBER NOT NULL, /* �����ݾ� */
	usedmileage NUMBER, /*����� ���ϸ���*/
	reg_date DATE DEFAULT sysdate NOT NULL, /* �������� */
	pay_condition VARCHAR2(1) DEFAULT 'Y' NOT NULL, /* �������� C�� ȯ��*/
	reservation_seq NUMBER NOT NULL /* ���� ������ */
);

ALTER TABLE tbl_payment
	ADD
		CONSTRAINT PK_tbl_payment
		PRIMARY KEY (
			pay_seq
		);

/* 1:1 ���� �Խ��� */
CREATE TABLE tbl_inquery (
	inquery_seq NUMBER NOT NULL, /* ���� ������ */
	inquery_content VARCHAR2(200) NOT NULL, /* ���ǳ��� */
	reg_date DATE DEFAULT sysdate, /* ���ǳ�¥ */
	inquery_title VARCHAR2(50), /* �������� */
	inquery_condition VARCHAR2(15) DEFAULT 'N', /* �亯���� */
	userid VARCHAR2(50), /* ���̵� */
	username VARCHAR2(30), /* �̸� */
	email VARCHAR2(30), /* �̸��� */
	hp VARCHAR2(30) /* ��ȭ��ȣ */
);

ALTER TABLE tbl_inquery
	ADD
		CONSTRAINT PK_tbl_inquery
		PRIMARY KEY (
			inquery_seq
		);

/* ���� ���� ���� */
CREATE TABLE tbl_faq (
	faq_seq NUMBER NOT NULL, /* ���ֹ������� ������ */
	faq_title VARCHAR2(300) NOT NULL, /* ���ֹ������� ���� */
	faq_content CLOB NOT NULL, /* ���ֹ������� ���� */
	faq_type VARCHAR2(50) NOT NULL, /* ���ֹ������� Ÿ�� */
	faq_regdate DATE DEFAULT sysdate NOT NULL, /* ����� */
	userid VARCHAR2(50) /* ���̵� */
);

ALTER TABLE tbl_faq
	ADD
		CONSTRAINT PK_tbl_faq
		PRIMARY KEY (
			faq_seq
		);

/* ���� �亯 */
CREATE TABLE tbl_inqAnw (
	inqanw_seq NUMBER NOT NULL, /* ���Ǵ亯 ������ */
	inqanw_content VARCHAR2(200) NOT NULL, /* �亯���� */
	reg_date DATE DEFAULT sysdate NOT NULL, /* �亯��¥ */
	inquery_seq NUMBER NOT NULL, /* ���� ������ */
	userid VARCHAR2(50) NOT NULL /* ���̵� */
);

ALTER TABLE tbl_inqAnw
	ADD
		CONSTRAINT PK_tbl_inqAnw
		PRIMARY KEY (
			inqanw_seq
		);

/* ���ƿ� */
CREATE TABLE tbl_like (
	likeCount_seq NUMBER NOT NULL, /* ���ƿ� ���� ������  */
	mt20id VARCHAR2(20) NOT NULL, /* ���� id */
	prfnm VARCHAR2(60), /* ������ */
	genre VARCHAR2(30), /* �帣 */
	userid VARCHAR2(50) NOT NULL /* ���̵� */
);

ALTER TABLE tbl_like
	ADD
		CONSTRAINT PK_tbl_like
		PRIMARY KEY (
			likeCount_seq
		);

/* ȸ����� */
CREATE TABLE tbl_grade (
	grade_seq NUMBER NOT NULL, /* ��� ��ȣ */
	grade_name VARCHAR2(10) NOT NULL, /* ȸ���� ����̸� */
	grade_standard NUMBER NOT NULL, /* ȸ���� ��ޱ��� */
	grade_benefit NUMBER NOT NULL /* ��޺� ���� ������ */
);

ALTER TABLE tbl_grade
	ADD
		CONSTRAINT PK_tbl_grade
		PRIMARY KEY (
			grade_seq,
			grade_name
		);

/* ���� */
CREATE TABLE tbl_user (
	userid VARCHAR2(50) NOT NULL, /* ���̵� */
	username VARCHAR2(30) NOT NULL, /* �̸� */
	password VARCHAR2(500byte) NOT NULL, /* ��й�ȣ */
	birth VARCHAR2(12) NOT NULL, /* ������� */
	email1 VARCHAR2(30) NOT NULL, /* �̸���1 */
	email2 VARCHAR(20) NOT NULL, /* �̸���2 */
	hp1 VARCHAR2(3) NOT NULL, /* ��ȭ��ȣ1 */
	hp2 VARCHAR2(4) NOT NULL, /* ��ȭ��ȣ2 */
	hp3 VARCHAR2(4) NOT NULL, /* ��ȭ��ȣ3 */
	zipcode VARCHAR2(10), /* �����ȣ */
	address VARCHAR2(200), /* �ּ� */
	address_detail VARCHAR2(200), /* ���ּ� */
	gender VARCHAR2(5) NOT NULL, /* ���� */
	mail_agreement VARCHAR2(5) NOT NULL, /* ���ϼ��ŵ��ǿ��� */
	mail_authen VARCHAR2(3) DEFAULT 'N' NOT NULL, /* ������������ */
	mileagePoint NUMBER DEFAULT 0, /* ������ ���ϸ��� */
	logout_date DATE, /* �α׾ƿ� ���� */
	join_date DATE DEFAULT sysdate, /* ������ */
	out_date DATE, /* Ż���� */
	salt VARCHAR2(100 char), /* ��ȣȭ */
	out_reason_no NUMBER, /* Ż����� ��ȣ */
	grade_seq NUMBER DEFAULT 1, /* ��� ��ȣ */
	grade_name VARCHAR2(10) DEFAULT 'b' /* ȸ���� ����̸� */
);

ALTER TABLE tbl_user
	ADD
		CONSTRAINT PK_tbl_user
		PRIMARY KEY (
			userid
		);

/* ȸ���� */
CREATE TABLE tbl_premium (
	premium_seq NUMBER NOT NULL, /* ȸ���� ��ȣ */
	name VARCHAR2(100) NOT NULL, /* ȸ���� �̸� */
	detail VARCHAR2(200) NOT NULL, /* ������ */
	start_date TIMESTAMP NOT NULL, /* ���� ������ */
	end_date TIMESTAMP NOT NULL, /* ���� ������ */
	userid VARCHAR2(50) NOT NULL /* ���̵� */
);

ALTER TABLE tbl_premium
	ADD
		CONSTRAINT PK_tbl_premium
		PRIMARY KEY (
			premium_seq
		);

/* �湮�� */
CREATE TABLE visitors (
	visitor_today DATE NOT NULL, /* ��¥ */
	visitor_count NUMBER DEFAULT 0 /* �湮�� �� */
);

ALTER TABLE visitors
	ADD
		CONSTRAINT PK_visitors
		PRIMARY KEY (
			visitor_today
		);

/* Ż�� ���� */
CREATE TABLE out_reason (
	out_reason_seq NUMBER NOT NULL, /* Ż����� ��ȣ */
	out_reason VARCHAR2(100) NOT NULL /* Ż����� */
);

ALTER TABLE out_reason
	ADD
		CONSTRAINT PK_out_reason
		PRIMARY KEY (
			out_reason_seq
		);

/* ����(��,��) �ڵ� */
CREATE TABLE tbl_sido (
	signgucode NUMBER NOT NULL, /* �ڵ� */
	sido VARCHAR2(30) NOT NULL /* ��,�� �� */
);

ALTER TABLE tbl_sido
	ADD
		CONSTRAINT PK_tbl_sido
		PRIMARY KEY (
			signgucode
		);

/* ����(��, ��) �ڵ� */
CREATE TABLE tbl_gugun (
	signgucodesub NUMBER NOT NULL, /* �ڵ� */
	gugun VARCHAR2(60) NOT NULL /* ��,�� �� */
);

ALTER TABLE tbl_gugun
	ADD
		CONSTRAINT PK_tbl_gugun
		PRIMARY KEY (
			signgucodesub
		);

/* ������ �ǸŰ��� ���� */
CREATE TABLE tbl_ticket (
	ticket_seq NUMBER NOT NULL, /* ���� ������ */
	mt20id VARCHAR2(20) NOT NULL, /* ���� id */
	prfnm VARCHAR2(100) NOT NULL, /* ������ */
	prfdate VARCHAR2(15) NOT NULL, /* ���� ��¥ */
	prfhour VARCHAR2(15) NOT NULL, /* ���� �ð� */
	sellticket NUMBER NOT NULL, /* �Ǹ��ϴ� ǥ ���� */
	sellclass VARCHAR2(30) NOT NULL, /* �Ǹ��ϴ� ǥ �¼���� */
	netprice NUMBER NOT NULL, /* ���� */
	selled NUMBER DEFAULT 0, /* �Ǹŵ���� */
	regdate DATE DEFAULT sysdate NOT NULL /* ���� ��¥ */
);

ALTER TABLE tbl_ticket
	ADD
		CONSTRAINT PK_tbl_ticket
		PRIMARY KEY (
			ticket_seq
		);

/* �ֱ� �� ���� */
CREATE TABLE tbl_recent (
	recent_seq NUMBER NOT NULL, /* �ֱ� �� ���� ������ */
	iporid VARCHAR2(20) NOT NULL, /* ip�Ǵ� id */
	mt20id VARCHAR2(20) NOT NULL, /* ���� id */
	prfnm VARCHAR2(60), /* ������ */
	showdate DATE DEFAULT sysdate NOT NULL /* �� ��¥ */
);

ALTER TABLE tbl_recent
	ADD
		CONSTRAINT PK_tbl_recent
		PRIMARY KEY (
			recent_seq
		);

/* ȯ�� */
CREATE TABLE tbl_refund (
   refund_seq NUMBER NOT NULL, /* ȯ�� ������ */
   compflag VARCHAR2(2) DEFAULT 'N' NOT NULL,/* ȯ�� ���� */
   refund_price NUMBER, /* ȯ�ҵǴ� �ݾ� */ 
   pay_seq NUMBER NOT NULL, /* ������ȣ */
   refundbec_seq NUMBER NOT NULL,/* ȯ�� ���� ������ */
   refund_cancle date default sysdate,  /*ȯ�� ��û��¥*/
   refund_cancle_ok date /*ȯ�� �Ϸᳯ¥*/
);

ALTER TABLE tbl_refund
	ADD
		CONSTRAINT PK_tbl_refund
		PRIMARY KEY (
			refund_seq
		);

/* ȯ�� ���� */
CREATE TABLE tbl_refundbec (
	refundbec_seq NUMBER NOT NULL, /* ȯ�� ���� ������ */
	detail VARCHAR2(300) NOT NULL /* ���� */
);

ALTER TABLE tbl_refundbec
	ADD
		CONSTRAINT PK_tbl_refundbec
		PRIMARY KEY (
			refundbec_seq
		);

ALTER TABLE tbl_mileage
	ADD
		CONSTRAINT FK_tbl_user_TO_tbl_mileage
		FOREIGN KEY (
			userid
		)
		REFERENCES tbl_user (
			userid
		);

ALTER TABLE tbl_mileage
	ADD
		CONSTRAINT FK_tbl_mileagebec_TO_tbl_mileage
		FOREIGN KEY (
			mileaebec_seq
		)
		REFERENCES tbl_mileagebec (
			mileaebec_seq
		);

ALTER TABLE tbl_review
	ADD
		CONSTRAINT FK_tbl_user_TO_tbl_review
		FOREIGN KEY (
			userid
		)
		REFERENCES tbl_user (
			userid
		);

ALTER TABLE tbl_review
	ADD
		CONSTRAINT FK_tbl_reservation_TO_tbl_review
		FOREIGN KEY (
			reservation_seq
		)
		REFERENCES tbl_reservation (
			reservation_seq
		);

ALTER TABLE tbl_ann
	ADD
		CONSTRAINT FK_tbl_user_TO_tbl_ann
		FOREIGN KEY (
			userid
		)
		REFERENCES tbl_user (
			userid
		);

ALTER TABLE tbl_reservation
	ADD
		CONSTRAINT FK_tbl_user_TO_tbl_reservation
		FOREIGN KEY (
			userid
		)
		REFERENCES tbl_user (
			userid
		);

ALTER TABLE tbl_reservation
	ADD
		CONSTRAINT FK_tbl_ticket_TO_tbl_reservation
		FOREIGN KEY (
			ticket_seq
		)
		REFERENCES tbl_ticket (
			ticket_seq
		);

ALTER TABLE tbl_discount
	ADD
		CONSTRAINT FK_tbl_ticket_TO_tbl_discount
		FOREIGN KEY (
			ticket_seq
		)
		REFERENCES tbl_ticket (
			ticket_seq
		);

ALTER TABLE tbl_promote
	ADD
		CONSTRAINT FK_tbl_user_TO_tbl_promote
		FOREIGN KEY (
			userid
		)
		REFERENCES tbl_user (
			userid
		);

ALTER TABLE tbl_payment
	ADD
		CONSTRAINT FK_tbl_reservation_TO_tbl_payment
		FOREIGN KEY (
			reservation_seq
		)
		REFERENCES tbl_reservation (
			reservation_seq
		);

ALTER TABLE tbl_inquery
	ADD
		CONSTRAINT FK_tbl_user_TO_tbl_inquery
		FOREIGN KEY (
			userid
		)
		REFERENCES tbl_user (
			userid
		);

ALTER TABLE tbl_faq
	ADD
		CONSTRAINT FK_tbl_user_TO_tbl_faq
		FOREIGN KEY (
			userid
		)
		REFERENCES tbl_user (
			userid
		);

ALTER TABLE tbl_inqAnw
	ADD
		CONSTRAINT FK_tbl_user_TO_tbl_inqAnw
		FOREIGN KEY (
			userid
		)
		REFERENCES tbl_user (
			userid
		);

ALTER TABLE tbl_inqAnw
	ADD
		CONSTRAINT FK_tbl_inquery_TO_tbl_inqAnw
		FOREIGN KEY (
			inquery_seq
		)
		REFERENCES tbl_inquery (
			inquery_seq
		);

ALTER TABLE tbl_like
	ADD
		CONSTRAINT FK_tbl_user_TO_tbl_like
		FOREIGN KEY (
			userid
		)
		REFERENCES tbl_user (
			userid
		);

ALTER TABLE tbl_user
	ADD
		CONSTRAINT FK_out_reason_TO_tbl_user
		FOREIGN KEY (
			out_reason_no
		)
		REFERENCES out_reason (
			out_reason_seq
		);

ALTER TABLE tbl_user
	ADD
		CONSTRAINT FK_tbl_grade_TO_tbl_user
		FOREIGN KEY (
			grade_seq,
			grade_name
		)
		REFERENCES tbl_grade (
			grade_seq,
			grade_name
		);

ALTER TABLE tbl_premium
	ADD
		CONSTRAINT FK_tbl_user_TO_tbl_premium
		FOREIGN KEY (
			userid
		)
		REFERENCES tbl_user (
			userid
		);

ALTER TABLE tbl_refund
	ADD
		CONSTRAINT FK_tbl_payment_TO_tbl_refund
		FOREIGN KEY (
			pay_seq
		)
		REFERENCES tbl_payment (
			pay_seq
		);

ALTER TABLE tbl_refund
	ADD
		CONSTRAINT FK_tbl_refundbec_TO_tbl_refund
		FOREIGN KEY (
			refundbec_seq
		)
		REFERENCES tbl_refundbec (
			refundbec_seq
		);

--���ϸ��� ��ȭ
drop sequence mileage_seq;
create sequence mileage_seq
start with 1
increment by 1
nocache;

--���ϸ��� ��ȭ ����
drop sequence mileaebec_seq;
create sequence mileaebec_seq
start with 1
increment by 1
nocache;


--�ı�
drop sequence review_seq;
create sequence review_seq
start with 1
increment by 1
nocache;

--��������
drop sequence ann_seq;
create sequence ann_seq
start with 1
increment by 1
nocache;

--����
drop sequence reservation_seq;
create sequence reservation_seq
start with 1
increment by 1
nocache;


--��ȸ��
drop sequence readcount_seq;
create sequence readcount_seq
start with 1
increment by 1
nocache;

--Ư������
drop sequence discount_seq;
create sequence discount_seq
start with 1
increment by 1
nocache;

--ȫ�� �Խ���
drop sequence promote_seq;
create sequence promote_seq
start with 1
increment by 1
nocache;

--��������
drop sequence pay_seq;
create sequence pay_seq
start with 1
increment by 1
nocache;

--1:1 ����
drop sequence inquery_seq;
create sequence inquery_seq
start with 1
increment by 1
nocache;

--���ֹ�������
drop sequence faq_seq;
create sequence faq_seq
start with 1
increment by 1
nocache;

--���� �亯
drop sequence inqanw_seq;
create sequence inqanw_seq
start with 1
increment by 1
nocache;

--���ƿ�
drop sequence likeCount_seq;
create sequence likeCount_seq
start with 1
increment by 1
nocache;

--ȸ�����
drop sequence grade_seq;
create sequence grade_seq
start with 1
increment by 1
nocache;

--ȸ����
drop sequence premium_seq;
create sequence premium_seq
start with 1
increment by 1
nocache;

--Ż�����
drop sequence out_reason_seq;
create sequence out_reason_seq
start with 1
increment by 1
nocache;

--������ �Ǹż���
drop sequence ticket_seq;
create sequence ticket_seq
start with 1
increment by 1
nocache;

--�ֱٺ� ����
drop sequence recent_seq;
create sequence recent_seq
start with 1
increment by 1
nocache;

--ȯ�� ��û
drop sequence refund_seq;
create sequence refund_seq
start with 1
increment by 1
nocache;

--ȯ�� ����
drop sequence refundbec_seq;
create sequence refundbec_seq
start with 1
increment by 1
nocache;


--Ư�� ���� ����
drop sequence discount_seq;
create sequence discount_seq
start with 1
increment by 1
nocache;

insert into tbl_grade values(grade_seq.nextval , 'b', 0 , 0);
insert into tbl_grade values(grade_seq.nextval , 's', 500000 , 1);
insert into tbl_grade values(grade_seq.nextval , 'g', 1000000 , 2);
insert into tbl_grade values(grade_seq.nextval , 'p', 1500000 , 3);
insert into tbl_grade values(grade_seq.nextval , 'vip', 2000000 , 5);
insert into tbl_grade values(grade_seq.nextval , 'admin', 99999999999999999999 , 10);

insert into tbl_mileagebec values(mileaebec_seq.nextval , '������ ����');
insert into tbl_mileagebec values(mileaebec_seq.nextval , '�Ϲ��ı� ����');
insert into tbl_mileagebec values(mileaebec_seq.nextval , '�����ı� ����');
insert into tbl_mileagebec values(mileaebec_seq.nextval , 'ȫ���̺�Ʈ ����');
insert into tbl_mileagebec values(mileaebec_seq.nextval , '�����ݾ� ����');
insert into tbl_mileagebec values(mileaebec_seq.nextval , 'ȯ�� ����');
insert into tbl_mileagebec values(mileaebec_seq.nextval , 'ȯ�� ����');

insert into out_reason values(out_reason_seq.nextval, 'Ÿ ����Ʈ �̿�');
insert into out_reason values(out_reason_seq.nextval, '���� �̿����� ����');
insert into out_reason values(out_reason_seq.nextval, '���̵� ����');
insert into out_reason values(out_reason_seq.nextval, '������ ���� ����');
insert into out_reason values(out_reason_seq.nextval, '�޸� ����');

insert into tbl_refundbec values(refundbec_seq.nextval, '�ܼ� ����');
insert into tbl_refundbec values(refundbec_seq.nextval, '������ �������� ���� ���� ���� �Ұ�');
insert into tbl_refundbec values(refundbec_seq.nextval, '���� �Ǽ�');
insert into tbl_refundbec values(refundbec_seq.nextval, '�ڸ� ����');
insert into tbl_refundbec values(refundbec_seq.nextval, '�ٸ� ���� ����');

insert into tbl_user(userid,username,password,birth,email1,email2,hp1,hp2,hp3,gender,mail_agreement,grade_seq,grade_name)
values('admin','������','1','1989-04-01','glddld','nate.com','010','6244','9984','��','N',6,'admin');

commit;