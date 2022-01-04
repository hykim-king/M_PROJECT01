DROP INDEX PK_HR_MEMBER;

DROP TABLE HR_MEMBER 
	CASCADE CONSTRAINTS;


CREATE TABLE HR_MEMBER (
	U_ID VARCHAR2(20) NOT NULL, 
	NAME VARCHAR2(50 CHAR) NOT NULL,
	PASSWD VARCHAR2(50 CHAR) NOT NULL,
	U_LEVEL NUMBER(1) DEFAULT 1,
	LOGIN NUMBER(7) DEFAULT 0,
	RECOMMEND NUMBER(7) DEFAULT 0,
	EMAIL VARCHAR2(320 BYTE),
	REG_DT DATE DEFAULT SYSDATE
);

COMMENT ON TABLE HR_MEMBER IS 'ȸ��';

COMMENT ON COLUMN HR_MEMBER.U_ID IS '���̵�';

COMMENT ON COLUMN HR_MEMBER.NAME IS '�̸�';

COMMENT ON COLUMN HR_MEMBER.PASSWD IS '���';

COMMENT ON COLUMN HR_MEMBER.U_LEVEL IS '���';

COMMENT ON COLUMN HR_MEMBER.LOGIN IS '�α���';

COMMENT ON COLUMN HR_MEMBER.RECOMMEND IS '��õ';

COMMENT ON COLUMN HR_MEMBER.EMAIL IS '�̸���';

COMMENT ON COLUMN HR_MEMBER.REG_DT IS '�����';

CREATE UNIQUE INDEX PK_HR_MEMBER
	ON HR_MEMBER (
		U_ID ASC
	);

ALTER TABLE HR_MEMBER
	ADD
		CONSTRAINT PK_HR_MEMBER
		PRIMARY KEY (
			U_ID
		);