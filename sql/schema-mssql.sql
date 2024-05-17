CREATE SEQUENCE SQ_VECTORX_AUTH_01 AS [bigint]
START WITH 1
INCREMENT BY 1
MINVALUE -999999999999999999
MAXVALUE 999999999999999999
;

CREATE SEQUENCE SQ_VECTORX_AUTH_GRP_HIST_01 AS [bigint]
START WITH 1
INCREMENT BY 1
MINVALUE -999999999999999999
MAXVALUE 999999999999999999
;

CREATE SEQUENCE SQ_VECTORX_AUTH_HIST_01 AS [bigint]
START WITH 1
INCREMENT BY 1
MINVALUE -999999999999999999
MAXVALUE 999999999999999999
;

CREATE SEQUENCE SQ_VECTORX_DBMS_QRY_HIST_01 AS [bigint]
START WITH 1
INCREMENT BY 1
MINVALUE -999999999999999999
MAXVALUE 999999999999999999
;

CREATE SEQUENCE SQ_VECTORX_FILES_01 AS [bigint]
START WITH 1
INCREMENT BY 1
MINVALUE -999999999999999999
MAXVALUE 999999999999999999
;

CREATE SEQUENCE SQ_VECTORX_MNU_01 AS [bigint]
START WITH 1
INCREMENT BY 1
MINVALUE -999999999999999999
MAXVALUE 999999999999999999
;

CREATE SEQUENCE SQ_VECTORX_IFS_HIST_01 AS [bigint]
START WITH 1
INCREMENT BY 1
MINVALUE -999999999999999999
MAXVALUE 999999999999999999
;
CREATE SEQUENCE SQ_VECTORX_MNU_ACC_HIST_01 AS [bigint]
START WITH 1
INCREMENT BY 1
MINVALUE -999999999999999999
MAXVALUE 999999999999999999
;
CREATE SEQUENCE SQ_VECTORX_MNU_FNC_ACC_HIST_01 AS [bigint]
START WITH 1
INCREMENT BY 1
MINVALUE -999999999999999999
MAXVALUE 999999999999999999
;


CREATE SEQUENCE SQ_VECTORX_POSTS_01 AS [bigint]
START WITH 1
INCREMENT BY 1
MINVALUE -999999999999999999
MAXVALUE 999999999999999999
;

CREATE SEQUENCE SQ_VECTORX_USR_APV_01 AS [bigint]
START WITH 1
INCREMENT BY 1
MINVALUE -999999999999999999
MAXVALUE 999999999999999999
;

CREATE SEQUENCE SQ_VECTORX_LOGIN_HIST_01 AS [bigint]
START WITH 1
INCREMENT BY 1
MINVALUE -999999999999999999
MAXVALUE 999999999999999999
;


CREATE SEQUENCE SQ_VECTORX_PRV_ACC_HIST_01 AS [bigint]
START WITH 1
INCREMENT BY 1
MINVALUE -999999999999999999
MAXVALUE 999999999999999999
;




/* DBMS_쿼리_이력 */
CREATE TABLE [VECTORX_DBMS_QRY_HIST] (
	[DBMS_QRY_HIST_ID] [NUMERIC] NOT NULL,  /* DBMS_쿼리_이력_아이디 */
	[PROC_ID] [VARCHAR](50),  /* 프로세스_아이디 */
	[REQ_ID] [VARCHAR](50),  /* 요청_아이디 */
	[ORG_QRY_CONT] [VARCHAR](4000),  /* 원_쿼리_내용 */
	[EXEC_QRY_CONT] [VARCHAR](4000),  /* 실행_쿼리_내용 */
	[PROC_MS] [NUMERIC],  /* 프로세스_시간(MS) */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* DBMS_쿼리_이력 Primary key */
ALTER TABLE [VECTORX_DBMS_QRY_HIST]
	ADD
		CONSTRAINT [PK_VECTORX_DBMS_QRY_HIST]
		PRIMARY KEY NONCLUSTERED (
			[DBMS_QRY_HIST_ID] ASC
		)
GO

/* DBMS_쿼리_이력 인덱스 */
CREATE NONCLUSTERED INDEX [IX_VECTORX_DBMS_QRY_HIST] ON [VECTORX_DBMS_QRY_HIST] (
	[PROC_ID] ASC
)

/* DBMS_쿼리_이력 인덱스2 */
CREATE NONCLUSTERED INDEX [IX_VECTORX_DBMS_QRY_HIST2] ON [VECTORX_DBMS_QRY_HIST] (
	[REQ_ID] ASC
)
GO

/* DBMS_쿼리_이력 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'DBMS_쿼리_이력', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_DBMS_QRY_HIST'
GO

/* DBMS_쿼리_이력_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'DBMS_쿼리_이력_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_DBMS_QRY_HIST', 
	@level2type=N'COLUMN', @level2name=N'DBMS_QRY_HIST_ID'
GO

/* 프로세스_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'프로세스_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_DBMS_QRY_HIST', 
	@level2type=N'COLUMN', @level2name=N'PROC_ID'
GO

/* 요청_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'요청_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_DBMS_QRY_HIST', 
	@level2type=N'COLUMN', @level2name=N'REQ_ID'
GO

/* 원_쿼리_내용 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'원_쿼리_내용', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_DBMS_QRY_HIST', 
	@level2type=N'COLUMN', @level2name=N'ORG_QRY_CONT'
GO

/* 실행_쿼리_내용 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'실행_쿼리_내용', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_DBMS_QRY_HIST', 
	@level2type=N'COLUMN', @level2name=N'EXEC_QRY_CONT'
GO

/* 프로세스_시간(MS) */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'프로세스_시간(MS)', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_DBMS_QRY_HIST', 
	@level2type=N'COLUMN', @level2name=N'PROC_MS'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_DBMS_QRY_HIST', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_DBMS_QRY_HIST', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_DBMS_QRY_HIST', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_DBMS_QRY_HIST', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_DBMS_QRY_HIST', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_DBMS_QRY_HIST', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* DBMS_쿼리_이력 Primary key */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'DBMS_쿼리_이력 Primary key', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_DBMS_QRY_HIST', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_DBMS_QRY_HIST'
GO

/* DBMS_쿼리_이력 Primary key */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'DBMS_쿼리_이력 Primary key', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_DBMS_QRY_HIST', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_DBMS_QRY_HIST'
GO

/* DBMS_쿼리_이력 인덱스 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'DBMS_쿼리_이력 인덱스', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_DBMS_QRY_HIST', 
	@level2type=N'INDEX', @level2name=N'IX_VECTORX_DBMS_QRY_HIST'
GO

/* DBMS_쿼리_이력 인덱스2 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'DBMS_쿼리_이력 인덱스2', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_DBMS_QRY_HIST', 
	@level2type=N'INDEX', @level2name=N'IX_VECTORX_DBMS_QRY_HIST2'
GO

/* 개인정보_접근_이력 */
CREATE TABLE [VECTORX_PRV_ACC_HIST] (
	[PRV_ACC_ID] [NUMERIC] NOT NULL,  /* 개인정보_접근_아이디 */
	[MNU_ID] [NUMERIC],  /* 메뉴_아이디 */
	[FNC_ID] [VARCHAR](50),  /* 기능_아이디 */
	[MNU_NM] [VARCHAR](50),  /* 메뉴_명 */
	[FNC_NM] [VARCHAR](50),  /* 기능_명 */
	[ACC_RSN_DV_CD] [CHAR](2) NOT NULL,  /* 접근_사유_구분_코드 */
	[ACC_RSN_CONT] [VARCHAR](max) NOT NULL,  /* 접근_사유_내용 */
	[ACC_USR_ID] [VARCHAR](20),  /* 접근_사용자_아이디 */
	[ACC_USR_NM] [VARCHAR](50),  /* 접근_사용자_명 */
	[ACC_USR_DEPT_NM] [VARCHAR](50),  /* 접근_사용자_부서_명 */
	[PROC_ID] [VARCHAR](50),  /* 프로세스_아이디 */
	[REQ_ID] [VARCHAR](50),  /* 요청_아이디 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 개인정보_접근_이력 기본키 */
ALTER TABLE [VECTORX_PRV_ACC_HIST]
	ADD
		CONSTRAINT [PK_VECTORX_PRV_ACC_HIST]
		PRIMARY KEY NONCLUSTERED (
			[PRV_ACC_ID] ASC
		)
GO

/* 개인정보_접근_이력 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'개인정보_접근_이력', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_PRV_ACC_HIST'
GO

/* 개인정보_접근_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'개인정보_접근_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_PRV_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'PRV_ACC_ID'
GO

/* 메뉴_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_PRV_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'MNU_ID'
GO

/* 기능_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'기능_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_PRV_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'FNC_ID'
GO

/* 메뉴_명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_PRV_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'MNU_NM'
GO

/* 기능_명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'기능_명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_PRV_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'FNC_NM'
GO

/* 접근_사유_구분_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'접근_사유_구분_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_PRV_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'ACC_RSN_DV_CD'
GO

/* 접근_사유_내용 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'접근_사유_내용', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_PRV_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'ACC_RSN_CONT'
GO

/* 접근_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'접근_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_PRV_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'ACC_USR_ID'
GO

/* 접근_사용자_명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'접근_사용자_명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_PRV_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'ACC_USR_NM'
GO

/* 접근_사용자_부서_명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'접근_사용자_부서_명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_PRV_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'ACC_USR_DEPT_NM'
GO

/* 프로세스_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'프로세스_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_PRV_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'PROC_ID'
GO

/* 요청_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'요청_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_PRV_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'REQ_ID'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_PRV_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_PRV_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_PRV_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_PRV_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_PRV_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_PRV_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 개인정보_접근_이력 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'개인정보_접근_이력 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_PRV_ACC_HIST', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_PRV_ACC_HIST'
GO

/* 개인정보_접근_이력 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'개인정보_접근_이력 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_PRV_ACC_HIST', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_PRV_ACC_HIST'
GO

/* 게시 */
CREATE TABLE [VECTORX_POSTS] (
	[POST_ID] [NUMERIC] NOT NULL,  /* 게시_아이디 */
	[UPR_POST_ID] [NUMERIC],  /* 상위_게시_아이디 */
	[POST_GRP_ID] [VARCHAR](10),  /* 게시_그룹_아이디 */
	[POST_DV_CD] [VARCHAR](20),  /* 게시_구분_코드 */
	[TITLE] [VARCHAR](100),  /* 제목 */
	[TOP_FIX_YN] [CHAR](1) DEFAULT 'N',  /* 상단_고정_여부 */
	[CONT] [VARCHAR](1000),  /* 내용 */
	[USE_YN] [CHAR](1),  /* 사용_여부 */
	[REG_USR_NM] [VARCHAR](50),  /* 등록_사용자_명 */
	[POST_SRT_DTTM] [DATETIME],  /* 게시_시작_일시 */
	[POST_END_DTTM] [DATETIME],  /* 게시_종료_일시 */
	[VIEW_CNT] [NUMERIC],  /* 조회_건수 */
	[POP_POST_YN] [CHAR](1) DEFAULT 'N',  /* 팝업_게시_여부 */
	[FILE_ID] [VARCHAR](50),  /* 파일_아이디 */
	[DEL_YN] [CHAR](1) DEFAULT 'N',  /* 삭제_여부 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 게시 기본키 */
ALTER TABLE [VECTORX_POSTS]
	ADD
		CONSTRAINT [PK_VECTORX_POSTS]
		PRIMARY KEY NONCLUSTERED (
			[POST_ID] ASC
		)
GO

/* 게시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'게시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POSTS'
GO

/* 게시_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'게시_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POSTS', 
	@level2type=N'COLUMN', @level2name=N'POST_ID'
GO

/* 상위_게시_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'상위_게시_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POSTS', 
	@level2type=N'COLUMN', @level2name=N'UPR_POST_ID'
GO

/* 게시_그룹_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'게시_그룹_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POSTS', 
	@level2type=N'COLUMN', @level2name=N'POST_GRP_ID'
GO

/* 게시_구분_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'게시_구분_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POSTS', 
	@level2type=N'COLUMN', @level2name=N'POST_DV_CD'
GO

/* 제목 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'제목', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POSTS', 
	@level2type=N'COLUMN', @level2name=N'TITLE'
GO

/* 상단_고정_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'상단_고정_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POSTS', 
	@level2type=N'COLUMN', @level2name=N'TOP_FIX_YN'
GO

/* 내용 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'내용', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POSTS', 
	@level2type=N'COLUMN', @level2name=N'CONT'
GO

/* 사용_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POSTS', 
	@level2type=N'COLUMN', @level2name=N'USE_YN'
GO

/* 등록_사용자_명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POSTS', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_NM'
GO

/* 게시_시작_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'게시_시작_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POSTS', 
	@level2type=N'COLUMN', @level2name=N'POST_SRT_DTTM'
GO

/* 게시_종료_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'게시_종료_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POSTS', 
	@level2type=N'COLUMN', @level2name=N'POST_END_DTTM'
GO

/* 조회_건수 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'조회_건수', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POSTS', 
	@level2type=N'COLUMN', @level2name=N'VIEW_CNT'
GO

/* 팝업_게시_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'팝업_게시_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POSTS', 
	@level2type=N'COLUMN', @level2name=N'POP_POST_YN'
GO

/* 파일_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'파일_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POSTS', 
	@level2type=N'COLUMN', @level2name=N'FILE_ID'
GO

/* 삭제_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'삭제_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POSTS', 
	@level2type=N'COLUMN', @level2name=N'DEL_YN'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POSTS', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POSTS', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POSTS', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POSTS', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POSTS', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POSTS', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 게시 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'게시 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POSTS', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_POSTS'
GO

/* 게시 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'게시 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POSTS', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_POSTS'
GO

/* 게시_그룹 */
CREATE TABLE [VECTORX_POST_GRP] (
	[POST_GRP_ID] [VARCHAR](10) NOT NULL,  /* 게시_그룹_아이디 */
	[FILE_GRP_ID] [VARCHAR](50),  /* 파일_그룹_아이디 */
	[POST_GRP_NM] [VARCHAR](50),  /* 게시_그룹_명 */
	[ATTCH_FILE_USE_YN] [CHAR](1),  /* 첨부_파일_사용_여부 */
	[HTML_EDITOR_USE_YN] [CHAR](1),  /* HTML_에디터_사용_여부 */
	[POST_TERM_USE_YN] [CHAR](1),  /* 게시_기간_사용_여부 */
	[TOP_FIX_USE_YN] [CHAR](1) DEFAULT 'N',  /* 상단_고정_사용_여부 */
	[POP_USE_YN] [CHAR](1) DEFAULT 'N',  /* 팝업_사용_여부 */
	[POST_DV_USE_YN] [CHAR](1),  /* 게시_구분_사용_여부 */
	[POST__USE_YN] [CHAR](1),  /* 게시_태그_사용_여부 */
	[USE_YN] [CHAR](1),  /* 사용_여부 */
	[DEL_YN] [CHAR](1) DEFAULT 'N',  /* 삭제_여부 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 게시_그룹 기본키 */
ALTER TABLE [VECTORX_POST_GRP]
	ADD
		CONSTRAINT [PK_VECTORX_POST_GRP]
		PRIMARY KEY NONCLUSTERED (
			[POST_GRP_ID] ASC
		)
GO

/* 게시_그룹 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'게시_그룹', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_GRP'
GO

/* 게시_그룹_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'게시_그룹_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_GRP', 
	@level2type=N'COLUMN', @level2name=N'POST_GRP_ID'
GO

/* 파일_그룹_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'파일_그룹_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_GRP', 
	@level2type=N'COLUMN', @level2name=N'FILE_GRP_ID'
GO

/* 게시_그룹_명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'게시_그룹_명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_GRP', 
	@level2type=N'COLUMN', @level2name=N'POST_GRP_NM'
GO

/* 첨부_파일_사용_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'첨부_파일_사용_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_GRP', 
	@level2type=N'COLUMN', @level2name=N'ATTCH_FILE_USE_YN'
GO

/* HTML_에디터_사용_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'HTML_에디터_사용_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_GRP', 
	@level2type=N'COLUMN', @level2name=N'HTML_EDITOR_USE_YN'
GO

/* 게시_기간_사용_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'게시_기간_사용_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_GRP', 
	@level2type=N'COLUMN', @level2name=N'POST_TERM_USE_YN'
GO

/* 상단_고정_사용_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'상단_고정_사용_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_GRP', 
	@level2type=N'COLUMN', @level2name=N'TOP_FIX_USE_YN'
GO

/* 팝업_사용_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'팝업_사용_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_GRP', 
	@level2type=N'COLUMN', @level2name=N'POP_USE_YN'
GO

/* 게시_구분_사용_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'게시_구분_사용_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_GRP', 
	@level2type=N'COLUMN', @level2name=N'POST_DV_USE_YN'
GO

/* 게시_태그_사용_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'게시_태그_사용_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_GRP', 
	@level2type=N'COLUMN', @level2name=N'POST__USE_YN'
GO

/* 사용_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_GRP', 
	@level2type=N'COLUMN', @level2name=N'USE_YN'
GO

/* 삭제_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'삭제_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_GRP', 
	@level2type=N'COLUMN', @level2name=N'DEL_YN'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_GRP', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_GRP', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_GRP', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_GRP', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_GRP', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_GRP', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 게시_그룹 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'게시_그룹 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_GRP', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_POST_GRP'
GO

/* 게시_그룹 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'게시_그룹 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_GRP', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_POST_GRP'
GO

/* 게시_의견 */
CREATE TABLE [VECTORX_POST_OPN] (
	[POST_OPN_ID] [NUMERIC] NOT NULL,  /* 게시_의견_아이디 */
	[POST_ID] [NUMERIC],  /* 게시_아이디 */
	[POST_OPN_CONT] [VARCHAR](1000),  /* 게시_의견_내용 */
	[REG_USR_NM] [VARCHAR](50),  /* 등록_사용자_명 */
	[DEL_YN] [CHAR](1) DEFAULT 'N',  /* 삭제_여부 */
	[REG_DTTM] [DATE] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATE],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 게시_의견 기본키 */
ALTER TABLE [VECTORX_POST_OPN]
	ADD
		CONSTRAINT [PK_VECTORX_POST_OPN]
		PRIMARY KEY NONCLUSTERED (
			[POST_OPN_ID] ASC
		)
GO

/* 게시_의견 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'게시_의견', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_OPN'
GO

/* 게시_의견_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'게시_의견_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_OPN', 
	@level2type=N'COLUMN', @level2name=N'POST_OPN_ID'
GO

/* 게시_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'게시_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_OPN', 
	@level2type=N'COLUMN', @level2name=N'POST_ID'
GO

/* 게시_의견_내용 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'게시_의견_내용', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_OPN', 
	@level2type=N'COLUMN', @level2name=N'POST_OPN_CONT'
GO

/* 등록_사용자_명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_OPN', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_NM'
GO

/* 삭제_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'삭제_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_OPN', 
	@level2type=N'COLUMN', @level2name=N'DEL_YN'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_OPN', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_OPN', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_OPN', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_OPN', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_OPN', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_OPN', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 게시_의견 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'게시_의견 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_OPN', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_POST_OPN'
GO

/* 게시_의견 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'게시_의견 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_OPN', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_POST_OPN'
GO

/* 게시_태그 */
CREATE TABLE [VECTORX_POST_TAG] (
	[POST_ID] [NUMERIC],  /* 게시_아이디 */
	[TAG_NM] [VARCHAR](50),  /* 태그_명 */
	[REG_DTTM] [DATE] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATE],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 게시_태그 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'게시_태그', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_TAG'
GO

/* 게시_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'게시_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_TAG', 
	@level2type=N'COLUMN', @level2name=N'POST_ID'
GO

/* 태그_명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'태그_명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_TAG', 
	@level2type=N'COLUMN', @level2name=N'TAG_NM'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_TAG', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_TAG', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_TAG', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_TAG', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_TAG', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_POST_TAG', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 공통_코드 */
CREATE TABLE [VECTORX_CMM_CD] (
	[GRP_CD] [VARCHAR](20) NOT NULL,  /* 그룹_코드 */
	[DTL_CD] [VARCHAR](20) NOT NULL,  /* 상세_코드 */
	[CD_NM] [VARCHAR](50),  /* 코드_명 */
	[CD_DESC] [VARCHAR](1000),  /* 코드_설명 */
	[UPR_GRP_CD] [VARCHAR](20),  /* 상위_그룹_코드 */
	[UPR_DTL_CD] [VARCHAR](20),  /* 상위_상세_코드 */
	[SRT_NO] [NUMERIC] DEFAULT 0,  /* 정렬_번호 */
	[USE_YN] [CHAR](1),  /* 사용_여부 */
	[RMK] [VARCHAR](1000),  /* 비고 */
	[ETC1] [VARCHAR](50),  /* 기타1 */
	[ETC2] [VARCHAR](50),  /* 기타2 */
	[ETC3] [VARCHAR](50),  /* 기타3 */
	[ETC4] [VARCHAR](50),  /* 기타4 */
	[ETC5] [VARCHAR](50),  /* 기타5 */
	[LCLS_CD] [VARCHAR](10),  /* 대분류_코드 */
	[LCLS_NM] [VARCHAR](100),  /* 대분류_명 */
	[MCLS_CD] [VARCHAR](10),  /* 중분류_코드 */
	[MCLS_NM] [VARCHAR](100),  /* 중분류_명 */
	[GRP_NM] [VARCHAR](100),  /* 그룹_명 */
	[CD_LEN] [NUMERIC],  /* 코드_길이 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 공통_코드 기본키 */
ALTER TABLE [VECTORX_CMM_CD]
	ADD
		CONSTRAINT [PK_VECTORX_CMM_CD]
		PRIMARY KEY NONCLUSTERED (
			[GRP_CD] ASC, 
			[DTL_CD] ASC
		)
GO

/* 공통_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'공통_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_CMM_CD'
GO

/* 그룹_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'코드를 관리하는 코드 그룹 문자', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_CMM_CD', 
	@level2type=N'COLUMN', @level2name=N'GRP_CD'
GO

/* 상세_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'그룹코드 값에 따른 코드 정보', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_CMM_CD', 
	@level2type=N'COLUMN', @level2name=N'DTL_CD'
GO

/* 코드_명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'코드_명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_CMM_CD', 
	@level2type=N'COLUMN', @level2name=N'CD_NM'
GO

/* 코드_설명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'코드_설명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_CMM_CD', 
	@level2type=N'COLUMN', @level2name=N'CD_DESC'
GO

/* 상위_그룹_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'상위_그룹_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_CMM_CD', 
	@level2type=N'COLUMN', @level2name=N'UPR_GRP_CD'
GO

/* 상위_상세_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'상위_상세_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_CMM_CD', 
	@level2type=N'COLUMN', @level2name=N'UPR_DTL_CD'
GO

/* 정렬_번호 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'정렬_번호', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_CMM_CD', 
	@level2type=N'COLUMN', @level2name=N'SRT_NO'
GO

/* 사용_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_CMM_CD', 
	@level2type=N'COLUMN', @level2name=N'USE_YN'
GO

/* 비고 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'비고', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_CMM_CD', 
	@level2type=N'COLUMN', @level2name=N'RMK'
GO

/* 기타1 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'기타1', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_CMM_CD', 
	@level2type=N'COLUMN', @level2name=N'ETC1'
GO

/* 기타2 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'기타2', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_CMM_CD', 
	@level2type=N'COLUMN', @level2name=N'ETC2'
GO

/* 기타3 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'기타3', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_CMM_CD', 
	@level2type=N'COLUMN', @level2name=N'ETC3'
GO

/* 기타4 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'기타4', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_CMM_CD', 
	@level2type=N'COLUMN', @level2name=N'ETC4'
GO

/* 기타5 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'기타5', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_CMM_CD', 
	@level2type=N'COLUMN', @level2name=N'ETC5'
GO

/* 대분류_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'대분류_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_CMM_CD', 
	@level2type=N'COLUMN', @level2name=N'LCLS_CD'
GO

/* 대분류_명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'대분류_명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_CMM_CD', 
	@level2type=N'COLUMN', @level2name=N'LCLS_NM'
GO

/* 중분류_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'중분류_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_CMM_CD', 
	@level2type=N'COLUMN', @level2name=N'MCLS_CD'
GO

/* 중분류_명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'중분류_명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_CMM_CD', 
	@level2type=N'COLUMN', @level2name=N'MCLS_NM'
GO

/* 그룹_명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'그룹_명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_CMM_CD', 
	@level2type=N'COLUMN', @level2name=N'GRP_NM'
GO

/* 코드_길이 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'코드_길이', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_CMM_CD', 
	@level2type=N'COLUMN', @level2name=N'CD_LEN'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_CMM_CD', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_CMM_CD', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_CMM_CD', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_CMM_CD', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_CMM_CD', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_CMM_CD', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 공통_코드 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'공통_코드 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_CMM_CD', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_CMM_CD'
GO

/* 공통_코드 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'공통_코드 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_CMM_CD', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_CMM_CD'
GO

/* 권한 */
CREATE TABLE [VECTORX_AUTH] (
	[AUTH_ID] [NUMERIC] NOT NULL,  /* 권한_아이디 */
	[AUTH_GRP_ID] [NUMERIC],  /* 권한_그룹_아이디 */
	[USR_ID] [VARCHAR](20),  /* 사용자_아이디 */
	[AUTH_TY_CD] [VARCHAR](20),  /* 권한_유형_코드 */
	[ADD_ROL_LIST_VAL] [VARCHAR](1000),  /* 추가_역할_목록_값 */
	[USE_SRT_DT] [VARCHAR](8),  /* 사용_시작_일자 */
	[USE_END_DT] [VARCHAR](8),  /* 사용_종료_일자 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 권한 기본키 */
ALTER TABLE [VECTORX_AUTH]
	ADD
		CONSTRAINT [PK_VECTORX_AUTH]
		PRIMARY KEY NONCLUSTERED (
			[AUTH_ID] ASC
		)
GO

/* 권한 인덱스 */
CREATE NONCLUSTERED INDEX [IX_VECTORX_AUTH] ON [VECTORX_AUTH] (
	[USE_SRT_DT] ASC
)

/* 권한 인덱스2 */
CREATE NONCLUSTERED INDEX [IX_VECTORX_AUTH2] ON [VECTORX_AUTH] (
	[USE_END_DT] ASC
)
GO

/* 권한 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH'
GO

/* 권한_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH', 
	@level2type=N'COLUMN', @level2name=N'AUTH_ID'
GO

/* 권한_그룹_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH', 
	@level2type=N'COLUMN', @level2name=N'AUTH_GRP_ID'
GO

/* 사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH', 
	@level2type=N'COLUMN', @level2name=N'USR_ID'
GO

/* 권한_유형_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_유형_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH', 
	@level2type=N'COLUMN', @level2name=N'AUTH_TY_CD'
GO

/* 추가_역할_목록_값 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'추가_역할_목록_값', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH', 
	@level2type=N'COLUMN', @level2name=N'ADD_ROL_LIST_VAL'
GO

/* 사용_시작_일자 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용_시작_일자', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH', 
	@level2type=N'COLUMN', @level2name=N'USE_SRT_DT'
GO

/* 사용_종료_일자 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용_종료_일자', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH', 
	@level2type=N'COLUMN', @level2name=N'USE_END_DT'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 권한 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_AUTH'
GO

/* 권한 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_AUTH'
GO

/* 권한 인덱스 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한 인덱스', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH', 
	@level2type=N'INDEX', @level2name=N'IX_VECTORX_AUTH'
GO

/* 권한 인덱스2 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한 인덱스2', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH', 
	@level2type=N'INDEX', @level2name=N'IX_VECTORX_AUTH2'
GO

/* 권한_그룹 */
CREATE TABLE [VECTORX_AUTH_GRP] (
	[AUTH_GRP_ID] [NUMERIC] NOT NULL,  /* 권한_그룹_아이디 */
	[UPR_AUTH_GRP_ID] [NUMERIC],  /* 상위_권한_그룹_아이디 */
	[AUTH_GRP_DV_VAL] [VARCHAR](10),  /* 권한_그룹_구분_값 */
	[AUTH_GRP_NM] [VARCHAR](100),  /* 권한_그룹_명 */
	[SRT_NO] [NUMERIC],  /* 정렬_번호 */
	[AUTH_GRP_DESC] [VARCHAR](1000),  /* 권한_그룹_설명 */
	[USE_YN] [CHAR](1),  /* 사용_여부 */
	[DEL_YN] [CHAR](1) DEFAULT 'N',  /* 삭제_여부 */
	[PRV_TRT_YN] [CHAR](1) DEFAULT 'N',  /* 개인정보_취급_여부 */
	[SYS_CD] [VARCHAR](20),  /* 시스템_코드 */
	[APV_GRP_YN] [CHAR](1) DEFAULT 'N',  /* 승인_그룹_여부 */
	[APV_NEC_YN] [CHAR](1),  /* 승인_필요_여부 */
	[AUTH_GRP_STEP_NO] [NUMERIC],  /* 권한_그룹_단계_번호 */
	[ADD_ROL_LIST_VAL] [VARCHAR](1000),  /* 추가_역할_목록_값 */
	[USE_DV_CD_LIST_VAL] [VARCHAR](500),  /* 사용_구분_코드_목록_값 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 권한_그룹 기본키 */
ALTER TABLE [VECTORX_AUTH_GRP]
	ADD
		CONSTRAINT [PK_VECTORX_AUTH_GRP]
		PRIMARY KEY NONCLUSTERED (
			[AUTH_GRP_ID] ASC
		)
GO

/* 권한_그룹 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP'
GO

/* 권한_그룹_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP', 
	@level2type=N'COLUMN', @level2name=N'AUTH_GRP_ID'
GO

/* 상위_권한_그룹_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'상위_권한_그룹_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP', 
	@level2type=N'COLUMN', @level2name=N'UPR_AUTH_GRP_ID'
GO

/* 권한_그룹_구분_값 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_구분_값', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP', 
	@level2type=N'COLUMN', @level2name=N'AUTH_GRP_DV_VAL'
GO

/* 권한_그룹_명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP', 
	@level2type=N'COLUMN', @level2name=N'AUTH_GRP_NM'
GO

/* 정렬_번호 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'정렬_번호', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP', 
	@level2type=N'COLUMN', @level2name=N'SRT_NO'
GO

/* 권한_그룹_설명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_설명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP', 
	@level2type=N'COLUMN', @level2name=N'AUTH_GRP_DESC'
GO

/* 사용_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP', 
	@level2type=N'COLUMN', @level2name=N'USE_YN'
GO

/* 삭제_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'삭제_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP', 
	@level2type=N'COLUMN', @level2name=N'DEL_YN'
GO

/* 개인정보_취급_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'개인정보_취급_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP', 
	@level2type=N'COLUMN', @level2name=N'PRV_TRT_YN'
GO

/* 시스템_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'시스템_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP', 
	@level2type=N'COLUMN', @level2name=N'SYS_CD'
GO

/* 승인_그룹_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'승인_그룹_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP', 
	@level2type=N'COLUMN', @level2name=N'APV_GRP_YN'
GO

/* 승인_필요_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'승인_필요_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP', 
	@level2type=N'COLUMN', @level2name=N'APV_NEC_YN'
GO

/* 권한_그룹_단계_번호 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_단계_번호', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP', 
	@level2type=N'COLUMN', @level2name=N'AUTH_GRP_STEP_NO'
GO

/* 추가_역할_목록_값 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'추가_역할_목록_값', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP', 
	@level2type=N'COLUMN', @level2name=N'ADD_ROL_LIST_VAL'
GO

/* 사용_구분_코드_목록_값 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용_구분_코드_목록_값', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP', 
	@level2type=N'COLUMN', @level2name=N'USE_DV_CD_LIST_VAL'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 권한_그룹 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_AUTH_GRP'
GO

/* 권한_그룹 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_AUTH_GRP'
GO

/* 권한_그룹_사용자 */
CREATE TABLE [VECTORX_AUTH_GRP_USR] (
	[USR_ID] [VARCHAR](20) NOT NULL,  /* 사용자_아이디 */
	[AUTH_GRP_ID] [NUMERIC] NOT NULL,  /* 권한_그룹_아이디 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 권한_그룹_사용자 기본키 */
ALTER TABLE [VECTORX_AUTH_GRP_USR]
	ADD
		CONSTRAINT [PK_VECTORX_AUTH_GRP_USR]
		PRIMARY KEY NONCLUSTERED (
			[USR_ID] ASC, 
			[AUTH_GRP_ID] ASC
		)
GO

/* 권한_그룹_사용자 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_사용자', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_USR'
GO

/* 사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_USR', 
	@level2type=N'COLUMN', @level2name=N'USR_ID'
GO

/* 권한_그룹_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_USR', 
	@level2type=N'COLUMN', @level2name=N'AUTH_GRP_ID'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_USR', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_USR', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_USR', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_USR', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_USR', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_USR', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 권한_그룹_사용자 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_사용자 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_USR', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_AUTH_GRP_USR'
GO

/* 권한_그룹_사용자 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_사용자 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_USR', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_AUTH_GRP_USR'
GO

/* 권한_그룹_사용자_요청_대상_그룹 */
CREATE TABLE [VECTORX_AUTH_GRP_USR_REQ_TGT_GRP] (
	[AUTH_GRP_ID] [NUMERIC] NOT NULL,  /* 권한_그룹_아이디 */
	[REQ_AUTH_GRP_ID] [NUMERIC] NOT NULL,  /* 요청_권한_그룹_아이디 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 권한_그룹_사용자_요청_대상_그룹 Primary key */
ALTER TABLE [VECTORX_AUTH_GRP_USR_REQ_TGT_GRP]
	ADD
		CONSTRAINT [PK_VECTORX_AUTH_GRP_USR_REQ_TGT_GRP]
		PRIMARY KEY NONCLUSTERED (
			[AUTH_GRP_ID] ASC, 
			[REQ_AUTH_GRP_ID] ASC
		)
GO

/* 권한_그룹_사용자_요청_대상_그룹 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_사용자_요청_대상_그룹', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_USR_REQ_TGT_GRP'
GO

/* 권한_그룹_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_USR_REQ_TGT_GRP', 
	@level2type=N'COLUMN', @level2name=N'AUTH_GRP_ID'
GO

/* 요청_권한_그룹_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'요청_권한_그룹_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_USR_REQ_TGT_GRP', 
	@level2type=N'COLUMN', @level2name=N'REQ_AUTH_GRP_ID'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_USR_REQ_TGT_GRP', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_USR_REQ_TGT_GRP', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_USR_REQ_TGT_GRP', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_USR_REQ_TGT_GRP', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_USR_REQ_TGT_GRP', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_USR_REQ_TGT_GRP', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 권한_그룹_사용자_요청_대상_그룹 Primary key */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_사용자_요청_대상_그룹 Primary key', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_USR_REQ_TGT_GRP', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_AUTH_GRP_USR_REQ_TGT_GRP'
GO

/* 권한_그룹_사용자_요청_대상_그룹 Primary key */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_사용자_요청_대상_그룹 Primary key', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_USR_REQ_TGT_GRP', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_AUTH_GRP_USR_REQ_TGT_GRP'
GO

/* 권한_그룹_사용자_이력 */
CREATE TABLE [VECTORX_AUTH_GRP_USR_HIST] (
	[AUTH_GRP_HIST_ID] [NUMERIC] NOT NULL,  /* 권한_그룹_이력_아이디 */
	[AUTH_GRP_ID] [NUMERIC] NOT NULL,  /* 권한_그룹_아이디 */
	[USR_ID] [VARCHAR](20) NOT NULL,  /* 사용자_아이디 */
	[WORK_DV_CD] [CHAR](1) NOT NULL,  /* 업무_구분_코드 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 권한_그룹_사용자_이력 Primary key */
ALTER TABLE [VECTORX_AUTH_GRP_USR_HIST]
	ADD
		CONSTRAINT [PK_VECTORX_AUTH_GRP_USR_HIST]
		PRIMARY KEY NONCLUSTERED (
			[AUTH_GRP_HIST_ID] ASC, 
			[AUTH_GRP_ID] ASC, 
			[USR_ID] ASC
		)
GO

/* 권한_그룹_사용자_이력 인덱스 */
CREATE NONCLUSTERED INDEX [IX_VECTORX_AUTH_GRP_USR_HIST] ON [VECTORX_AUTH_GRP_USR_HIST] (
	[REG_DTTM] ASC
)
GO

/* 권한_그룹_사용자_이력 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_사용자_이력', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_USR_HIST'
GO

/* 권한_그룹_이력_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_이력_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'AUTH_GRP_HIST_ID'
GO

/* 권한_그룹_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'AUTH_GRP_ID'
GO

/* 사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'USR_ID'
GO

/* 업무_구분_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'업무_구분_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'WORK_DV_CD'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 권한_그룹_사용자_이력 Primary key */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_사용자_이력 Primary key', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_USR_HIST', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_AUTH_GRP_USR_HIST'
GO

/* 권한_그룹_사용자_이력 Primary key */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_사용자_이력 Primary key', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_USR_HIST', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_AUTH_GRP_USR_HIST'
GO

/* 권한_그룹_사용자_이력 인덱스 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_사용자_이력 인덱스', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_USR_HIST', 
	@level2type=N'INDEX', @level2name=N'IX_VECTORX_AUTH_GRP_USR_HIST'
GO

/* 권한_그룹_승인 */
CREATE TABLE [VECTORX_AUTH_GRP_APV] (
	[USR_APV_ID] [NUMERIC] NOT NULL,  /* 사용자_승인_아이디 */
	[AUTH_GRP_ID] [NUMERIC] NOT NULL,  /* 권한_그룹_아이디 */
	[UPR_AUTH_GRP_ID] [NUMERIC],  /* 상위_권한_그룹_아이디 */
	[AUTH_GRP_NM] [VARCHAR](100),  /* 권한_그룹_명 */
	[SRT_NO] [NUMERIC],  /* 정렬_번호 */
	[AUTH_GRP_DESC] [VARCHAR](1000),  /* 권한_그룹_설명 */
	[USE_YN] [CHAR](1),  /* 사용_여부 */
	[DEL_YN] [CHAR](1) DEFAULT 'N',  /* 삭제_여부 */
	[PRV_TRT_YN] [CHAR](1) DEFAULT 'N',  /* 개인정보_취급_여부 */
	[SYS_CD] [VARCHAR](20),  /* 시스템_코드 */
	[APV_GRP_YN] [CHAR](1) DEFAULT 'N',  /* 승인_그룹_여부 */
	[APV_NEC_YN] [CHAR](1),  /* 승인_필요_여부 */
	[AUTH_GRP_STEP_NO] [NUMERIC],  /* 권한_그룹_단계_번호 */
	[ADD_ROL_LIST_VAL] [VARCHAR](1000),  /* 추가_역할_목록_값 */
	[USE_DV_CD_LIST_VAL] [VARCHAR](500),  /* 사용_구분_코드_목록_값 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 권한_그룹_승인 Primary key */
ALTER TABLE [VECTORX_AUTH_GRP_APV]
	ADD
		CONSTRAINT [PK_VECTORX_AUTH_GRP_APV]
		PRIMARY KEY NONCLUSTERED (
			[USR_APV_ID] ASC, 
			[AUTH_GRP_ID] ASC
		)
GO

/* 권한_그룹_승인 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_승인', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV'
GO

/* 사용자_승인_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_승인_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV', 
	@level2type=N'COLUMN', @level2name=N'USR_APV_ID'
GO

/* 권한_그룹_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV', 
	@level2type=N'COLUMN', @level2name=N'AUTH_GRP_ID'
GO

/* 상위_권한_그룹_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'상위_권한_그룹_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV', 
	@level2type=N'COLUMN', @level2name=N'UPR_AUTH_GRP_ID'
GO

/* 권한_그룹_명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV', 
	@level2type=N'COLUMN', @level2name=N'AUTH_GRP_NM'
GO

/* 정렬_번호 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'정렬_번호', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV', 
	@level2type=N'COLUMN', @level2name=N'SRT_NO'
GO

/* 권한_그룹_설명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_설명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV', 
	@level2type=N'COLUMN', @level2name=N'AUTH_GRP_DESC'
GO

/* 사용_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV', 
	@level2type=N'COLUMN', @level2name=N'USE_YN'
GO

/* 삭제_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'삭제_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV', 
	@level2type=N'COLUMN', @level2name=N'DEL_YN'
GO

/* 개인정보_취급_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'개인정보_취급_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV', 
	@level2type=N'COLUMN', @level2name=N'PRV_TRT_YN'
GO

/* 시스템_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'시스템_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV', 
	@level2type=N'COLUMN', @level2name=N'SYS_CD'
GO

/* 승인_그룹_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'승인_그룹_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV', 
	@level2type=N'COLUMN', @level2name=N'APV_GRP_YN'
GO

/* 승인_필요_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'승인_필요_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV', 
	@level2type=N'COLUMN', @level2name=N'APV_NEC_YN'
GO

/* 권한_그룹_단계_번호 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_단계_번호', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV', 
	@level2type=N'COLUMN', @level2name=N'AUTH_GRP_STEP_NO'
GO

/* 추가_역할_목록_값 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'추가_역할_목록_값', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV', 
	@level2type=N'COLUMN', @level2name=N'ADD_ROL_LIST_VAL'
GO

/* 사용_구분_코드_목록_값 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용_구분_코드_목록_값', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV', 
	@level2type=N'COLUMN', @level2name=N'USE_DV_CD_LIST_VAL'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 권한_그룹_승인 Primary key */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_승인 Primary key', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_AUTH_GRP_APV'
GO

/* 권한_그룹_승인 Primary key */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_승인 Primary key', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_AUTH_GRP_APV'
GO

/* 권한_그룹_승인_단계 */
CREATE TABLE [VECTORX_AUTH_GRP_APV_STEP] (
	[AUTH_GRP_ID] [NUMERIC] NOT NULL,  /* 권한_그룹_아이디 */
	[STEP_NO] [INT] NOT NULL,  /* 단계_번호 */
	[STEP_DV_CD] [CHAR](2),  /* 단계_구분_코드 */
	[APV_AUTH_GRP_ID] [NUMERIC],  /* 승인_권한_그룹_아이디 */
	[APV_USR_ID] [VARCHAR](20),  /* 승인_사용자_아이디 */
	[APV_PRC_DV_CD] [CHAR](2),  /* 승인_처리_구분_코드 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 권한_그룹_승인_단계 기본키 */
ALTER TABLE [VECTORX_AUTH_GRP_APV_STEP]
	ADD
		CONSTRAINT [PK_VECTORX_AUTH_GRP_APV_STEP]
		PRIMARY KEY NONCLUSTERED (
			[AUTH_GRP_ID] ASC, 
			[STEP_NO] ASC
		)
GO

/* 권한_그룹_승인_단계 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_승인_단계', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_STEP'
GO

/* 권한_그룹_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_STEP', 
	@level2type=N'COLUMN', @level2name=N'AUTH_GRP_ID'
GO

/* 단계_번호 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'단계_번호', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_STEP', 
	@level2type=N'COLUMN', @level2name=N'STEP_NO'
GO

/* 단계_구분_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'단계_구분_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_STEP', 
	@level2type=N'COLUMN', @level2name=N'STEP_DV_CD'
GO

/* 승인_권한_그룹_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'승인_권한_그룹_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_STEP', 
	@level2type=N'COLUMN', @level2name=N'APV_AUTH_GRP_ID'
GO

/* 승인_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'승인_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_STEP', 
	@level2type=N'COLUMN', @level2name=N'APV_USR_ID'
GO

/* 승인_처리_구분_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'승인_처리_구분_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_STEP', 
	@level2type=N'COLUMN', @level2name=N'APV_PRC_DV_CD'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_STEP', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_STEP', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_STEP', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_STEP', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_STEP', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_STEP', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 권한_그룹_승인_단계 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_승인_단계 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_STEP', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_AUTH_GRP_APV_STEP'
GO

/* 권한_그룹_승인_단계 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_승인_단계 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_STEP', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_AUTH_GRP_APV_STEP'
GO

/* 권한_그룹_승인_사용자 */
CREATE TABLE [VECTORX_AUTH_GRP_APV_USR] (
	[USR_APV_ID] [NUMERIC] NOT NULL,  /* 사용자_승인_아이디 */
	[AUTH_GRP_ID] [NUMERIC] NOT NULL,  /* 권한_그룹_아이디 */
	[USR_ID] [VARCHAR](20) NOT NULL,  /* 사용자_아이디 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 권한_그룹_승인_사용자 기본키 */
ALTER TABLE [VECTORX_AUTH_GRP_APV_USR]
	ADD
		CONSTRAINT [PK_VECTORX_AUTH_GRP_APV_USR]
		PRIMARY KEY NONCLUSTERED (
			[USR_APV_ID] ASC, 
			[AUTH_GRP_ID] ASC, 
			[USR_ID] ASC
		)
GO

/* 권한_그룹_승인_사용자 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_승인_사용자', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_USR'
GO

/* 사용자_승인_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_승인_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_USR', 
	@level2type=N'COLUMN', @level2name=N'USR_APV_ID'
GO

/* 권한_그룹_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_USR', 
	@level2type=N'COLUMN', @level2name=N'AUTH_GRP_ID'
GO

/* 사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_USR', 
	@level2type=N'COLUMN', @level2name=N'USR_ID'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_USR', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_USR', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_USR', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_USR', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_USR', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_USR', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 권한_그룹_승인_사용자 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_승인_사용자 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_USR', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_AUTH_GRP_APV_USR'
GO

/* 권한_그룹_승인_사용자 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_승인_사용자 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_USR', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_AUTH_GRP_APV_USR'
GO

/* 권한_그룹_승인_사용자_요청_대상_그룹 */
CREATE TABLE [VECTORX_AUTH_GRP_APV_USR_REQ_TGT_GRP] (
	[USR_APV_ID] [NUMERIC] NOT NULL,  /* 사용자_승인_아이디 */
	[AUTH_GRP_ID] [NUMERIC] NOT NULL,  /* 권한_그룹_아이디 */
	[REQ_AUTH_GRP_ID] [NUMERIC] NOT NULL,  /* 요청_권한_그룹_아이디 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 권한_그룹_승인_사용자_요청_대상_그룹 Primary key */
ALTER TABLE [VECTORX_AUTH_GRP_APV_USR_REQ_TGT_GRP]
	ADD
		CONSTRAINT [PK_VECTORX_AUTH_GRP_APV_USR_REQ_TGT_GRP]
		PRIMARY KEY NONCLUSTERED (
			[USR_APV_ID] ASC, 
			[AUTH_GRP_ID] ASC, 
			[REQ_AUTH_GRP_ID] ASC
		)
GO

/* 권한_그룹_승인_사용자_요청_대상_그룹 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_승인_사용자_요청_대상_그룹', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_USR_REQ_TGT_GRP'
GO

/* 사용자_승인_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_승인_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_USR_REQ_TGT_GRP', 
	@level2type=N'COLUMN', @level2name=N'USR_APV_ID'
GO

/* 권한_그룹_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_USR_REQ_TGT_GRP', 
	@level2type=N'COLUMN', @level2name=N'AUTH_GRP_ID'
GO

/* 요청_권한_그룹_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'요청_권한_그룹_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_USR_REQ_TGT_GRP', 
	@level2type=N'COLUMN', @level2name=N'REQ_AUTH_GRP_ID'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_USR_REQ_TGT_GRP', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_USR_REQ_TGT_GRP', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_USR_REQ_TGT_GRP', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_USR_REQ_TGT_GRP', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_USR_REQ_TGT_GRP', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_USR_REQ_TGT_GRP', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 권한_그룹_승인_사용자_요청_대상_그룹 Primary key */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_승인_사용자_요청_대상_그룹 Primary key', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_USR_REQ_TGT_GRP', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_AUTH_GRP_APV_USR_REQ_TGT_GRP'
GO

/* 권한_그룹_승인_사용자_요청_대상_그룹 Primary key */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_승인_사용자_요청_대상_그룹 Primary key', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_APV_USR_REQ_TGT_GRP', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_AUTH_GRP_APV_USR_REQ_TGT_GRP'
GO

/* 권한_그룹_이력 */
CREATE TABLE [VECTORX_AUTH_GRP_HIST] (
	[AUTH_GRP_HIST_ID] [NUMERIC] NOT NULL,  /* 권한_그룹_이력_아이디 */
	[AUTH_GRP_ID] [NUMERIC] NOT NULL,  /* 권한_그룹_아이디 */
	[AUTH_GRP_DV_VAL] [VARCHAR](10),  /* 권한_그룹_구분_값 */
	[INP_DTTM] [DATETIME] NOT NULL,  /* 입력_일시 */
	[UPR_AUTH_GRP_ID] [NUMERIC],  /* 상위_권한_그룹_아이디 */
	[AUTH_GRP_NM] [VARCHAR](100),  /* 권한_그룹_명 */
	[SRT_NO] [NUMERIC],  /* 정렬_번호 */
	[AUTH_GRP_DESC] [VARCHAR](1000),  /* 권한_그룹_설명 */
	[USE_YN] [CHAR](1),  /* 사용_여부 */
	[DEL_YN] [CHAR](1) DEFAULT 'N',  /* 삭제_여부 */
	[PRV_TRT_YN] [CHAR](1) DEFAULT 'N',  /* 개인정보_취급_여부 */
	[SYS_CD] [VARCHAR](20),  /* 시스템_코드 */
	[APV_GRP_YN] [CHAR](1) DEFAULT 'N',  /* 승인_그룹_여부 */
	[APV_NEC_YN] [CHAR](1),  /* 승인_필요_여부 */
	[AUTH_GRP_STEP_NO] [NUMERIC],  /* 권한_그룹_단계_번호 */
	[WORK_DV_CD] [CHAR](1),  /* 업무_구분_코드 */
	[ADD_ROL_LIST_VAL] [VARCHAR](1000),  /* 추가_역할_목록_값 */
	[USE_DV_CD_LIST_VAL] [VARCHAR](500),  /* 사용_구분_코드_목록_값 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 권한_그룹_이력 Primary key */
ALTER TABLE [VECTORX_AUTH_GRP_HIST]
	ADD
		CONSTRAINT [PK_VECTORX_AUTH_GRP_HIST]
		PRIMARY KEY NONCLUSTERED (
			[AUTH_GRP_HIST_ID] ASC
		)
GO

/* 권한_그룹_이력 인덱스 */
CREATE NONCLUSTERED INDEX [IX_VECTORX_AUTH_GRP_HIST] ON [VECTORX_AUTH_GRP_HIST] (
	[AUTH_GRP_ID] ASC
)

/* 권한_그룹_이력 인덱스2 */
CREATE NONCLUSTERED INDEX [IX_VECTORX_AUTH_GRP_HIST2] ON [VECTORX_AUTH_GRP_HIST] (
	[INP_DTTM] ASC
)
GO

/* 권한_그룹_이력 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_이력', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_HIST'
GO

/* 권한_그룹_이력_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_이력_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_HIST', 
	@level2type=N'COLUMN', @level2name=N'AUTH_GRP_HIST_ID'
GO

/* 권한_그룹_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_HIST', 
	@level2type=N'COLUMN', @level2name=N'AUTH_GRP_ID'
GO

/* 권한_그룹_구분_값 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_구분_값', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_HIST', 
	@level2type=N'COLUMN', @level2name=N'AUTH_GRP_DV_VAL'
GO

/* 입력_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'입력_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_HIST', 
	@level2type=N'COLUMN', @level2name=N'INP_DTTM'
GO

/* 상위_권한_그룹_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'상위_권한_그룹_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_HIST', 
	@level2type=N'COLUMN', @level2name=N'UPR_AUTH_GRP_ID'
GO

/* 권한_그룹_명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_HIST', 
	@level2type=N'COLUMN', @level2name=N'AUTH_GRP_NM'
GO

/* 정렬_번호 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'정렬_번호', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_HIST', 
	@level2type=N'COLUMN', @level2name=N'SRT_NO'
GO

/* 권한_그룹_설명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_설명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_HIST', 
	@level2type=N'COLUMN', @level2name=N'AUTH_GRP_DESC'
GO

/* 사용_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_HIST', 
	@level2type=N'COLUMN', @level2name=N'USE_YN'
GO

/* 삭제_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'삭제_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_HIST', 
	@level2type=N'COLUMN', @level2name=N'DEL_YN'
GO

/* 개인정보_취급_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'개인정보_취급_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_HIST', 
	@level2type=N'COLUMN', @level2name=N'PRV_TRT_YN'
GO

/* 시스템_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'시스템_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_HIST', 
	@level2type=N'COLUMN', @level2name=N'SYS_CD'
GO

/* 승인_그룹_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'승인_그룹_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_HIST', 
	@level2type=N'COLUMN', @level2name=N'APV_GRP_YN'
GO

/* 승인_필요_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'승인_필요_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_HIST', 
	@level2type=N'COLUMN', @level2name=N'APV_NEC_YN'
GO

/* 권한_그룹_단계_번호 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_단계_번호', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_HIST', 
	@level2type=N'COLUMN', @level2name=N'AUTH_GRP_STEP_NO'
GO

/* 업무_구분_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'업무_구분_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_HIST', 
	@level2type=N'COLUMN', @level2name=N'WORK_DV_CD'
GO

/* 추가_역할_목록_값 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'추가_역할_목록_값', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_HIST', 
	@level2type=N'COLUMN', @level2name=N'ADD_ROL_LIST_VAL'
GO

/* 사용_구분_코드_목록_값 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용_구분_코드_목록_값', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_HIST', 
	@level2type=N'COLUMN', @level2name=N'USE_DV_CD_LIST_VAL'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_HIST', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_HIST', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_HIST', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_HIST', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_HIST', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_HIST', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 권한_그룹_이력 Primary key */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_이력 Primary key', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_HIST', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_AUTH_GRP_HIST'
GO

/* 권한_그룹_이력 Primary key */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_이력 Primary key', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_HIST', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_AUTH_GRP_HIST'
GO

/* 권한_그룹_이력 인덱스 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_이력 인덱스', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_HIST', 
	@level2type=N'INDEX', @level2name=N'IX_VECTORX_AUTH_GRP_HIST'
GO

/* 권한_그룹_이력 인덱스2 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_이력 인덱스2', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_GRP_HIST', 
	@level2type=N'INDEX', @level2name=N'IX_VECTORX_AUTH_GRP_HIST2'
GO

/* 권한_승인 */
CREATE TABLE [VECTORX_AUTH_APV] (
	[USR_APV_ID] [NUMERIC] NOT NULL,  /* 사용자_승인_아이디 */
	[AUTH_ID] [NUMERIC] NOT NULL,  /* 권한_아이디 */
	[ADD_ROL_LIST_VAL] [VARCHAR](1000),  /* 추가_역할_목록_값 */
	[USE_SRT_DT] [VARCHAR](8),  /* 사용_시작_일자 */
	[USE_END_DT] [VARCHAR](8),  /* 사용_종료_일자 */
	[USR_AUTH_GRP_DEL_YN] [CHAR](1) DEFAULT 'N',  /* 사용자_권한_그룹_삭제_여부 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 권한_승인 기본키 */
ALTER TABLE [VECTORX_AUTH_APV]
	ADD
		CONSTRAINT [PK_VECTORX_AUTH_APV]
		PRIMARY KEY NONCLUSTERED (
			[USR_APV_ID] ASC
		)
GO

/* 권한_승인 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_승인', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_APV'
GO

/* 사용자_승인_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_승인_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_APV', 
	@level2type=N'COLUMN', @level2name=N'USR_APV_ID'
GO

/* 권한_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_APV', 
	@level2type=N'COLUMN', @level2name=N'AUTH_ID'
GO

/* 추가_역할_목록_값 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'추가_역할_목록_값', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_APV', 
	@level2type=N'COLUMN', @level2name=N'ADD_ROL_LIST_VAL'
GO

/* 사용_시작_일자 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용_시작_일자', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_APV', 
	@level2type=N'COLUMN', @level2name=N'USE_SRT_DT'
GO

/* 사용_종료_일자 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용_종료_일자', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_APV', 
	@level2type=N'COLUMN', @level2name=N'USE_END_DT'
GO

/* 사용자_권한_그룹_삭제_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_권한_그룹_삭제_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_APV', 
	@level2type=N'COLUMN', @level2name=N'USR_AUTH_GRP_DEL_YN'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_APV', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_APV', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_APV', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_APV', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_APV', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_APV', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 권한_승인 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_승인 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_APV', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_AUTH_APV'
GO

/* 권한_승인 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_승인 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_APV', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_AUTH_APV'
GO

/* 권한_이력 */
CREATE TABLE [VECTORX_AUTH_HIST] (
	[AUTH_HIST_ID] [NUMERIC] NOT NULL,  /* 권한_이력_아이디 */
	[AUTH_ID] [NUMERIC] NOT NULL,  /* 권한_아이디 */
	[INP_DTTM] [DATETIME] NOT NULL,  /* 입력_일시 */
	[AUTH_GRP_ID] [NUMERIC],  /* 권한_그룹_아이디 */
	[USR_ID] [VARCHAR](20),  /* 사용자_아이디 */
	[AUTH_TY_CD] [VARCHAR](20),  /* 권한_유형_코드 */
	[USE_SRT_DT] [VARCHAR](8),  /* 사용_시작_일자 */
	[USE_END_DT] [VARCHAR](8),  /* 사용_종료_일자 */
	[WORK_DV_CD] [CHAR](1),  /* 업무_구분_코드 */
	[ADD_ROL_LIST_VAL] [VARCHAR](1000),  /* 추가_역할_목록_값 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 권한_이력 Primary key */
ALTER TABLE [VECTORX_AUTH_HIST]
	ADD
		CONSTRAINT [PK_VECTORX_AUTH_HIST]
		PRIMARY KEY NONCLUSTERED (
			[AUTH_HIST_ID] ASC
		)
GO

/* 권한_이력 인덱스 */
CREATE NONCLUSTERED INDEX [IX_VECTORX_AUTH_HIST] ON [VECTORX_AUTH_HIST] (
	[AUTH_ID] ASC
)

/* 권한_이력 인덱스2 */
CREATE NONCLUSTERED INDEX [IX_VECTORX_AUTH_HIST2] ON [VECTORX_AUTH_HIST] (
	[INP_DTTM] ASC
)
GO

/* 권한_이력 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_이력', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_HIST'
GO

/* 권한_이력_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_이력_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_HIST', 
	@level2type=N'COLUMN', @level2name=N'AUTH_HIST_ID'
GO

/* 권한_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_HIST', 
	@level2type=N'COLUMN', @level2name=N'AUTH_ID'
GO

/* 입력_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'입력_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_HIST', 
	@level2type=N'COLUMN', @level2name=N'INP_DTTM'
GO

/* 권한_그룹_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_그룹_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_HIST', 
	@level2type=N'COLUMN', @level2name=N'AUTH_GRP_ID'
GO

/* 사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_HIST', 
	@level2type=N'COLUMN', @level2name=N'USR_ID'
GO

/* 권한_유형_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_유형_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_HIST', 
	@level2type=N'COLUMN', @level2name=N'AUTH_TY_CD'
GO

/* 사용_시작_일자 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용_시작_일자', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_HIST', 
	@level2type=N'COLUMN', @level2name=N'USE_SRT_DT'
GO

/* 사용_종료_일자 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용_종료_일자', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_HIST', 
	@level2type=N'COLUMN', @level2name=N'USE_END_DT'
GO

/* 업무_구분_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'업무_구분_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_HIST', 
	@level2type=N'COLUMN', @level2name=N'WORK_DV_CD'
GO

/* 추가_역할_목록_값 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'추가_역할_목록_값', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_HIST', 
	@level2type=N'COLUMN', @level2name=N'ADD_ROL_LIST_VAL'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_HIST', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_HIST', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_HIST', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_HIST', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_HIST', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_HIST', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 권한_이력 Primary key */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_이력 Primary key', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_HIST', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_AUTH_HIST'
GO

/* 권한_이력 Primary key */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_이력 Primary key', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_HIST', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_AUTH_HIST'
GO

/* 권한_이력 인덱스 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_이력 인덱스', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_HIST', 
	@level2type=N'INDEX', @level2name=N'IX_VECTORX_AUTH_HIST'
GO

/* 권한_이력 인덱스2 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_이력 인덱스2', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_AUTH_HIST', 
	@level2type=N'INDEX', @level2name=N'IX_VECTORX_AUTH_HIST2'
GO

/* 로그인_이력 */
CREATE TABLE [VECTORX_LOGIN_HIST] (
	[LOGIN_HIST_ID] [NUMERIC] NOT NULL,  /* 로그인_이력_아이디 */
	[USR_ID] [VARCHAR](20),  /* 사용자_아이디 */
	[USR_KEY] [VARCHAR](20),  /* 사용자_키 */
	[SYS_CD] [VARCHAR](20),  /* 시스템_코드 */
	[USR_NM] [VARCHAR](50),  /* 사용자_명 */
	[ACC_IP] [VARCHAR](20),  /* 접근_아이피 */
	[DEPT_NM] [VARCHAR](50),  /* 부서_명 */
	[LOGIN_DTTM] [DATETIME] NOT NULL,  /* 로그인_일시 */
	[LOGOT_DTTM] [DATETIME],  /* 로그아웃_일시 */
	[RES_CD_VAL] [VARCHAR](10),  /* 응답_코드_값 */
	[PROC_ID] [VARCHAR](50),  /* 프로세스_아이디 */
	[REQ_ID] [VARCHAR](50),  /* 요청_아이디 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 로그인_이력 기본키 */
ALTER TABLE [VECTORX_LOGIN_HIST]
	ADD
		CONSTRAINT [PK_VECTORX_LOGIN_HIST]
		PRIMARY KEY NONCLUSTERED (
			[LOGIN_HIST_ID] ASC
		)
GO

/* 로그인_이력 인덱스 */
CREATE NONCLUSTERED INDEX [IX_VECTORX_LOGIN_HIST] ON [VECTORX_LOGIN_HIST] (
	[USR_ID] ASC
)

/* 로그인_이력 인덱스2 */
CREATE NONCLUSTERED INDEX [IX_VECTORX_LOGIN_HIST2] ON [VECTORX_LOGIN_HIST] (
	[USR_NM] ASC
)

/* 로그인_이력 인덱스3 */
CREATE NONCLUSTERED INDEX [IX_VECTORX_LOGIN_HIST3] ON [VECTORX_LOGIN_HIST] (
	[LOGIN_DTTM] ASC
)

/* 로그인_이력 인덱스4 */
CREATE NONCLUSTERED INDEX [IX_VECTORX_LOGIN_HIST4] ON [VECTORX_LOGIN_HIST] (
	[LOGOT_DTTM] ASC
)
GO

/* 로그인_이력 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'로그인_이력', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_LOGIN_HIST'
GO

/* 로그인_이력_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'로그인_이력_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_LOGIN_HIST', 
	@level2type=N'COLUMN', @level2name=N'LOGIN_HIST_ID'
GO

/* 사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_LOGIN_HIST', 
	@level2type=N'COLUMN', @level2name=N'USR_ID'
GO

/* 사용자_키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_LOGIN_HIST', 
	@level2type=N'COLUMN', @level2name=N'USR_KEY'
GO

/* 시스템_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'시스템_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_LOGIN_HIST', 
	@level2type=N'COLUMN', @level2name=N'SYS_CD'
GO

/* 사용자_명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_LOGIN_HIST', 
	@level2type=N'COLUMN', @level2name=N'USR_NM'
GO

/* 접근_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'접근_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_LOGIN_HIST', 
	@level2type=N'COLUMN', @level2name=N'ACC_IP'
GO

/* 부서_명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'부서_명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_LOGIN_HIST', 
	@level2type=N'COLUMN', @level2name=N'DEPT_NM'
GO

/* 로그인_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'로그인_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_LOGIN_HIST', 
	@level2type=N'COLUMN', @level2name=N'LOGIN_DTTM'
GO

/* 로그아웃_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'로그아웃_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_LOGIN_HIST', 
	@level2type=N'COLUMN', @level2name=N'LOGOT_DTTM'
GO

/* 응답_코드_값 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'응답_코드_값', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_LOGIN_HIST', 
	@level2type=N'COLUMN', @level2name=N'RES_CD_VAL'
GO

/* 프로세스_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'프로세스_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_LOGIN_HIST', 
	@level2type=N'COLUMN', @level2name=N'PROC_ID'
GO

/* 요청_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'요청_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_LOGIN_HIST', 
	@level2type=N'COLUMN', @level2name=N'REQ_ID'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_LOGIN_HIST', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_LOGIN_HIST', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_LOGIN_HIST', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_LOGIN_HIST', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_LOGIN_HIST', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_LOGIN_HIST', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 로그인_이력 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'로그인_이력 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_LOGIN_HIST', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_LOGIN_HIST'
GO

/* 로그인_이력 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'로그인_이력 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_LOGIN_HIST', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_LOGIN_HIST'
GO

/* 로그인_이력 인덱스 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'로그인_이력 인덱스', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_LOGIN_HIST', 
	@level2type=N'INDEX', @level2name=N'IX_VECTORX_LOGIN_HIST'
GO

/* 로그인_이력 인덱스2 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'로그인_이력 인덱스2', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_LOGIN_HIST', 
	@level2type=N'INDEX', @level2name=N'IX_VECTORX_LOGIN_HIST2'
GO

/* 로그인_이력 인덱스3 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'로그인_이력 인덱스3', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_LOGIN_HIST', 
	@level2type=N'INDEX', @level2name=N'IX_VECTORX_LOGIN_HIST3'
GO

/* 로그인_이력 인덱스4 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'로그인_이력 인덱스4', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_LOGIN_HIST', 
	@level2type=N'INDEX', @level2name=N'IX_VECTORX_LOGIN_HIST4'
GO

/* 메뉴 */
CREATE TABLE [VECTORX_MNU] (
	[MNU_ID] [NUMERIC] NOT NULL,  /* 메뉴_아이디 */
	[UPR_MNU_ID] [NUMERIC],  /* 상위_메뉴_아이디 */
	[PRO_ID_VAL] [VARCHAR](20),  /* 프로그램_아이디_값 */
	[SYS_CD] [VARCHAR](20),  /* 시스템_코드 */
	[MNU_NM] [VARCHAR](50),  /* 메뉴_명 */
	[MNU_SRT_NO] [NUMERIC] NOT NULL DEFAULT 0,  /* 메뉴_정렬_번호 */
	[MNU_URL] [VARCHAR](1000),  /* 메뉴_URL */
	[MNU_DESC] [VARCHAR](1000),  /* 메뉴_설명 */
	[MNU_TY_CD] [CHAR](2),  /* 메뉴_유형_코드 */
	[USE_YN] [CHAR](1) NOT NULL,  /* 사용_여부 */
	[DEL_YN] [CHAR](1) DEFAULT 'N',  /* 삭제_여부 */
	[MNU_STEP_NO] [NUMERIC] NOT NULL DEFAULT 1,  /* 메뉴_단계_번호 */
	[IP_LMT_YN] [CHAR](1) DEFAULT 'N',  /* 아이피제한여부 */
	[IP_LIST] [VARCHAR](1000),  /* 아이피_목록 */
	[PRV_VIEW_YN] [CHAR](1) NOT NULL DEFAULT 'N',  /* 개인정보_조회_여부 */
	[DP_YN] [CHAR](1),  /* 전시_여부 */
	[AUTH_SCOP_CD] [CHAR](2),  /* 권한_범위_코드 */
	[ICON_FILE_ID] [VARCHAR](50),  /* 아이콘_파일_아이디 */
	[MNU_GUIDE_CONT] [TEXT],  /* 메뉴_가이드_내용 */
	[MNU_DVC_SCOP_CD] [CHAR](1) NOT NULL DEFAULT 'A', /* 메뉴_디바이스_범위_코드 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 메뉴 기본키 */
ALTER TABLE [VECTORX_MNU]
	ADD
		CONSTRAINT [PK_VECTORX_MNU]
		PRIMARY KEY NONCLUSTERED (
			[MNU_ID] ASC
		)
GO

/* 메뉴 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU'
GO

/* 메뉴_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU', 
	@level2type=N'COLUMN', @level2name=N'MNU_ID'
GO

/* 상위_메뉴_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'상위_메뉴_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU', 
	@level2type=N'COLUMN', @level2name=N'UPR_MNU_ID'
GO

/* 프로그램_아이디_값 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'프로그램_아이디_값', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU', 
	@level2type=N'COLUMN', @level2name=N'PRO_ID_VAL'
GO

/* 시스템_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'시스템_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU', 
	@level2type=N'COLUMN', @level2name=N'SYS_CD'
GO

/* 메뉴_명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU', 
	@level2type=N'COLUMN', @level2name=N'MNU_NM'
GO

/* 메뉴_정렬_번호 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_정렬_번호', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU', 
	@level2type=N'COLUMN', @level2name=N'MNU_SRT_NO'
GO

/* 메뉴_URL */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_URL', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU', 
	@level2type=N'COLUMN', @level2name=N'MNU_URL'
GO

/* 메뉴_설명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_설명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU', 
	@level2type=N'COLUMN', @level2name=N'MNU_DESC'
GO

/* 메뉴_유형_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_유형_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU', 
	@level2type=N'COLUMN', @level2name=N'MNU_TY_CD'
GO

/* 사용_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU', 
	@level2type=N'COLUMN', @level2name=N'USE_YN'
GO

/* 삭제_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'삭제_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU', 
	@level2type=N'COLUMN', @level2name=N'DEL_YN'
GO

/* 메뉴_단계_번호 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_단계_번호', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU', 
	@level2type=N'COLUMN', @level2name=N'MNU_STEP_NO'
GO

/* 아이피제한여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'아이피제한여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU', 
	@level2type=N'COLUMN', @level2name=N'IP_LMT_YN'
GO

/* 아이피_목록 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'아이피_목록', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU', 
	@level2type=N'COLUMN', @level2name=N'IP_LIST'
GO

/* 개인정보_조회_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'개인정보_조회_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU', 
	@level2type=N'COLUMN', @level2name=N'PRV_VIEW_YN'
GO

/* 전시_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'전시_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU', 
	@level2type=N'COLUMN', @level2name=N'DP_YN'
GO

/* 권한_범위_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_범위_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU', 
	@level2type=N'COLUMN', @level2name=N'AUTH_SCOP_CD'
GO

/* 아이콘_파일_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'아이콘_파일_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU', 
	@level2type=N'COLUMN', @level2name=N'ICON_FILE_ID'
GO

/* 메뉴_가이드_내용 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_가이드_내용', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU', 
	@level2type=N'COLUMN', @level2name=N'MNU_GUIDE_CONT'
GO

/* 메뉴_디바이스_범위_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_디바이스_범위_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU', 
	@level2type=N'COLUMN', @level2name=N'MNU_DVC_SCOP_CD'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 메뉴 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_MNU'
GO

/* 메뉴 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_MNU'
GO

/* 메뉴_권한 */
CREATE TABLE [VECTORX_MNU_AUTH] (
	[MNU_ID] [NUMERIC] NOT NULL,  /* 메뉴_아이디 */
	[AUTH_ID] [NUMERIC] NOT NULL,  /* 권한_아이디 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 메뉴_권한 기본키 */
ALTER TABLE [VECTORX_MNU_AUTH]
	ADD
		CONSTRAINT [PK_VECTORX_MNU_AUTH]
		PRIMARY KEY NONCLUSTERED (
			[MNU_ID] ASC, 
			[AUTH_ID] ASC
		)
GO

/* 메뉴_권한 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_권한', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_AUTH'
GO

/* 메뉴_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_AUTH', 
	@level2type=N'COLUMN', @level2name=N'MNU_ID'
GO

/* 권한_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_AUTH', 
	@level2type=N'COLUMN', @level2name=N'AUTH_ID'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_AUTH', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_AUTH', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_AUTH', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_AUTH', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_AUTH', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_AUTH', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 메뉴_권한 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_권한 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_AUTH', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_MNU_AUTH'
GO

/* 메뉴_권한 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_권한 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_AUTH', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_MNU_AUTH'
GO

/* 메뉴_권한_승인 */
CREATE TABLE [VECTORX_MNU_AUTH_APV] (
	[USR_APV_ID] [NUMERIC] NOT NULL,  /* 사용자_승인_아이디 */
	[MNU_ID] [NUMERIC] NOT NULL,  /* 메뉴_아이디 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 메뉴_권한_승인 기본키 */
ALTER TABLE [VECTORX_MNU_AUTH_APV]
	ADD
		CONSTRAINT [PK_VECTORX_MNU_AUTH_APV]
		PRIMARY KEY NONCLUSTERED (
			[USR_APV_ID] ASC, 
			[MNU_ID] ASC
		)
GO

/* 메뉴_권한_승인 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_권한_승인', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_AUTH_APV'
GO

/* 사용자_승인_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_승인_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_AUTH_APV', 
	@level2type=N'COLUMN', @level2name=N'USR_APV_ID'
GO

/* 메뉴_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_AUTH_APV', 
	@level2type=N'COLUMN', @level2name=N'MNU_ID'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_AUTH_APV', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_AUTH_APV', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_AUTH_APV', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_AUTH_APV', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_AUTH_APV', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_AUTH_APV', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 메뉴_권한_승인 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_권한_승인 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_AUTH_APV', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_MNU_AUTH_APV'
GO

/* 메뉴_권한_승인 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_권한_승인 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_AUTH_APV', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_MNU_AUTH_APV'
GO

/* 메뉴_권한_이력 */
CREATE TABLE [VECTORX_MNU_AUTH_HIST] (
	[AUTH_HIST_ID] [NUMERIC] NOT NULL,  /* 권한_이력_아이디 */
	[MNU_ID] [NUMERIC] NOT NULL,  /* 메뉴_아이디 */
	[AUTH_ID] [NUMERIC] NOT NULL,  /* 권한_아이디 */
	[WORK_DV_CD] [CHAR](1),  /* 업무_구분_코드 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 메뉴_권한_이력 기본키 */
ALTER TABLE [VECTORX_MNU_AUTH_HIST]
	ADD
		CONSTRAINT [PK_VECTORX_MNU_AUTH_HIST]
		PRIMARY KEY NONCLUSTERED (
			[AUTH_HIST_ID] ASC, 
			[MNU_ID] ASC, 
			[AUTH_ID] ASC
		)
GO

/* 메뉴_권한_이력 인덱스 */
CREATE NONCLUSTERED INDEX [IX_VECTORX_MNU_AUTH_HIST] ON [VECTORX_MNU_AUTH_HIST] (
	[REG_DTTM] ASC
)
GO

/* 메뉴_권한_이력 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_권한_이력', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_AUTH_HIST'
GO

/* 권한_이력_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_이력_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_AUTH_HIST', 
	@level2type=N'COLUMN', @level2name=N'AUTH_HIST_ID'
GO

/* 메뉴_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_AUTH_HIST', 
	@level2type=N'COLUMN', @level2name=N'MNU_ID'
GO

/* 권한_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_AUTH_HIST', 
	@level2type=N'COLUMN', @level2name=N'AUTH_ID'
GO

/* 업무_구분_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'업무_구분_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_AUTH_HIST', 
	@level2type=N'COLUMN', @level2name=N'WORK_DV_CD'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_AUTH_HIST', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_AUTH_HIST', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_AUTH_HIST', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_AUTH_HIST', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_AUTH_HIST', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_AUTH_HIST', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 메뉴_권한_이력 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_권한_이력 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_AUTH_HIST', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_MNU_AUTH_HIST'
GO

/* 메뉴_권한_이력 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_권한_이력 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_AUTH_HIST', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_MNU_AUTH_HIST'
GO

/* 메뉴_권한_이력 인덱스 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_권한_이력 인덱스', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_AUTH_HIST', 
	@level2type=N'INDEX', @level2name=N'IX_VECTORX_MNU_AUTH_HIST'
GO

/* 메뉴_기능 */
CREATE TABLE [VECTORX_MNU_FNC] (
	[MNU_ID] [NUMERIC] NOT NULL,  /* 메뉴_아이디 */
	[FNC_ID] [VARCHAR](50) NOT NULL,  /* 기능_아이디 */
	[FNC_NM] [VARCHAR](50),  /* 기능_명 */
	[PRV_VIEW_YN] [CHAR](1) DEFAULT 'N',  /* 개인정보_조회_여부 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 메뉴_기능 기본키 */
ALTER TABLE [VECTORX_MNU_FNC]
	ADD
		CONSTRAINT [PK_VECTORX_MNU_FNC]
		PRIMARY KEY NONCLUSTERED (
			[MNU_ID] ASC, 
			[FNC_ID] ASC
		)
GO

/* 메뉴_기능 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_기능', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC'
GO

/* 메뉴_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC', 
	@level2type=N'COLUMN', @level2name=N'MNU_ID'
GO

/* 기능_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'기능_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC', 
	@level2type=N'COLUMN', @level2name=N'FNC_ID'
GO

/* 기능_명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'기능_명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC', 
	@level2type=N'COLUMN', @level2name=N'FNC_NM'
GO

/* 개인정보_조회_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'개인정보_조회_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC', 
	@level2type=N'COLUMN', @level2name=N'PRV_VIEW_YN'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 메뉴_기능 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_기능 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_MNU_FNC'
GO

/* 메뉴_기능 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_기능 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_MNU_FNC'
GO

/* 메뉴_기능_권한 */
CREATE TABLE [VECTORX_MNU_FNC_AUTH] (
	[MNU_ID] [NUMERIC] NOT NULL,  /* 메뉴_아이디 */
	[FNC_ID] [VARCHAR](50) NOT NULL,  /* 기능_아이디 */
	[AUTH_ID] [NUMERIC] NOT NULL,  /* 권한_아이디 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 메뉴_기능_권한 기본키 */
ALTER TABLE [VECTORX_MNU_FNC_AUTH]
	ADD
		CONSTRAINT [PK_VECTORX_MNU_FNC_AUTH]
		PRIMARY KEY NONCLUSTERED (
			[MNU_ID] ASC, 
			[FNC_ID] ASC, 
			[AUTH_ID] ASC
		)
GO

/* 메뉴_기능_권한 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_기능_권한', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH'
GO

/* 메뉴_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH', 
	@level2type=N'COLUMN', @level2name=N'MNU_ID'
GO

/* 기능_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'기능_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH', 
	@level2type=N'COLUMN', @level2name=N'FNC_ID'
GO

/* 권한_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH', 
	@level2type=N'COLUMN', @level2name=N'AUTH_ID'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 메뉴_기능_권한 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_기능_권한 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_MNU_FNC_AUTH'
GO

/* 메뉴_기능_권한 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_기능_권한 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_MNU_FNC_AUTH'
GO

/* 메뉴_기능_권한_승인 */
CREATE TABLE [VECTORX_MNU_FNC_AUTH_APV] (
	[USR_APV_ID] [NUMERIC] NOT NULL,  /* 사용자_승인_아이디 */
	[MNU_ID] [NUMERIC] NOT NULL,  /* 메뉴_아이디 */
	[FNC_ID] [VARCHAR](50) NOT NULL,  /* 기능_아이디 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 메뉴_기능_권한_승인 기본키 */
ALTER TABLE [VECTORX_MNU_FNC_AUTH_APV]
	ADD
		CONSTRAINT [PK_VECTORX_MNU_FNC_AUTH_APV]
		PRIMARY KEY NONCLUSTERED (
			[USR_APV_ID] ASC, 
			[MNU_ID] ASC, 
			[FNC_ID] ASC
		)
GO

/* 메뉴_기능_권한_승인 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_기능_권한_승인', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH_APV'
GO

/* 사용자_승인_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_승인_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH_APV', 
	@level2type=N'COLUMN', @level2name=N'USR_APV_ID'
GO

/* 메뉴_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH_APV', 
	@level2type=N'COLUMN', @level2name=N'MNU_ID'
GO

/* 기능_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'기능_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH_APV', 
	@level2type=N'COLUMN', @level2name=N'FNC_ID'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH_APV', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH_APV', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH_APV', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH_APV', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH_APV', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH_APV', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 메뉴_기능_권한_승인 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_기능_권한_승인 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH_APV', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_MNU_FNC_AUTH_APV'
GO

/* 메뉴_기능_권한_승인 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_기능_권한_승인 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH_APV', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_MNU_FNC_AUTH_APV'
GO

/* 메뉴_기능_권한_이력 */
CREATE TABLE [VECTORX_MNU_FNC_AUTH_HIST] (
	[AUTH_HIST_ID] [NUMERIC] NOT NULL,  /* 권한_이력_아이디 */
	[MNU_ID] [NUMERIC] NOT NULL,  /* 메뉴_아이디 */
	[FNC_ID] [VARCHAR](50) NOT NULL,  /* 기능_아이디 */
	[AUTH_ID] [NUMERIC] NOT NULL,  /* 권한_아이디 */
	[WORK_DV_CD] [CHAR](1),  /* 업무_구분_코드 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 메뉴_기능_권한_이력 기본키 */
ALTER TABLE [VECTORX_MNU_FNC_AUTH_HIST]
	ADD
		CONSTRAINT [PK_VECTORX_MNU_FNC_AUTH_HIST]
		PRIMARY KEY NONCLUSTERED (
			[AUTH_HIST_ID] ASC, 
			[MNU_ID] ASC, 
			[FNC_ID] ASC, 
			[AUTH_ID] ASC
		)
GO

/* 메뉴_기능_권한_이력 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_기능_권한_이력', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH_HIST'
GO

/* 권한_이력_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_이력_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH_HIST', 
	@level2type=N'COLUMN', @level2name=N'AUTH_HIST_ID'
GO

/* 메뉴_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH_HIST', 
	@level2type=N'COLUMN', @level2name=N'MNU_ID'
GO

/* 기능_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'기능_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH_HIST', 
	@level2type=N'COLUMN', @level2name=N'FNC_ID'
GO

/* 권한_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH_HIST', 
	@level2type=N'COLUMN', @level2name=N'AUTH_ID'
GO

/* 업무_구분_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'업무_구분_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH_HIST', 
	@level2type=N'COLUMN', @level2name=N'WORK_DV_CD'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH_HIST', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH_HIST', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH_HIST', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH_HIST', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH_HIST', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH_HIST', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 메뉴_기능_권한_이력 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_기능_권한_이력 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH_HIST', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_MNU_FNC_AUTH_HIST'
GO

/* 메뉴_기능_권한_이력 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_기능_권한_이력 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_AUTH_HIST', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_MNU_FNC_AUTH_HIST'
GO

/* 메뉴_기능_접근_이력 */
CREATE TABLE [VECTORX_MNU_FNC_ACC_HIST] (
	[MNU_FNC_ACC_ID] [NUMERIC] NOT NULL,  /* 메뉴_기능_접근_아이디 */
	[MNU_ID] [NUMERIC] NOT NULL,  /* 메뉴_아이디 */
	[FNC_ID] [VARCHAR](50) NOT NULL,  /* 기능_아이디 */
	[USR_ID] [VARCHAR](20) NOT NULL,  /* 사용자_아이디 */
	[REQ_ID] [VARCHAR](50) NULL,  /* 요청_아이디 */
	[PROC_ID] [VARCHAR](50) NULL,  /* 프로세스_아이디 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 메뉴_기능_접근_이력 기본키 */
ALTER TABLE [VECTORX_MNU_FNC_ACC_HIST]
	ADD
		CONSTRAINT [PK_VECTORX_MNU_FNC_ACC_HIST]
		PRIMARY KEY NONCLUSTERED (
			[MNU_FNC_ACC_ID] ASC
		)
GO

/* 메뉴_기능_접근_이력 인덱스 */
CREATE NONCLUSTERED INDEX [IX_VECTORX_MNU_FNC_ACC_HIST] ON [VECTORX_MNU_FNC_ACC_HIST] (
	[MNU_ID] ASC, 
	[FNC_ID] ASC
)

/* 메뉴_기능_접근_이력 인덱스2 */
CREATE NONCLUSTERED INDEX [IX_VECTORX_MNU_FNC_ACC_HIST2] ON [VECTORX_MNU_FNC_ACC_HIST] (
	[USR_ID] ASC
)
GO

/* 메뉴_기능_접근_이력 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_기능_접근_이력', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_ACC_HIST'
GO

/* 메뉴_기능_접근_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_기능_접근_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'MNU_FNC_ACC_ID'
GO

/* 메뉴_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'MNU_ID'
GO

/* 기능_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'기능_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'FNC_ID'
GO

/* 사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'USR_ID'
GO

/* 프로세스_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'프로세스_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'PROC_ID'
GO

/* 요청_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'요청_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'REQ_ID'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 메뉴_기능_접근_이력 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_기능_접근_이력 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_ACC_HIST', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_MNU_FNC_ACC_HIST'
GO

/* 메뉴_기능_접근_이력 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_기능_접근_이력 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_ACC_HIST', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_MNU_FNC_ACC_HIST'
GO

/* 메뉴_기능_접근_이력 인덱스 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_기능_접근_이력 인덱스', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_ACC_HIST', 
	@level2type=N'INDEX', @level2name=N'IX_VECTORX_MNU_FNC_ACC_HIST'
GO

/* 메뉴_기능_접근_이력 인덱스2 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_기능_접근_이력 인덱스2', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_FNC_ACC_HIST', 
	@level2type=N'INDEX', @level2name=N'IX_VECTORX_MNU_FNC_ACC_HIST2'
GO

/* 메뉴_접근_이력 */
CREATE TABLE [VECTORX_MNU_ACC_HIST] (
	[MNU_ACC_ID] [NUMERIC] NOT NULL,  /* 메뉴_접근_아이디 */
	[MNU_ID] [NUMERIC] NOT NULL,  /* 메뉴_아이디 */
	[USR_ID] [VARCHAR](20) NOT NULL,  /* 사용자_아이디 */
	[PROC_ID] [VARCHAR](50),  /* 프로세스_아이디 */
	[REQ_ID] [VARCHAR](50),  /* 요청_아이디 */
	[MNU_URL] [VARCHAR](1000),  /* 메뉴_URL */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 메뉴_접근_이력 기본키 */
ALTER TABLE [VECTORX_MNU_ACC_HIST]
	ADD
		CONSTRAINT [PK_VECTORX_MNU_ACC_HIST]
		PRIMARY KEY NONCLUSTERED (
			[MNU_ACC_ID] ASC
		)
GO

/* 메뉴_접근_이력 인덱스 */
CREATE NONCLUSTERED INDEX [IX_VECTORX_MNU_ACC_HIST] ON [VECTORX_MNU_ACC_HIST] (
	[MNU_ID] ASC
)

/* 메뉴_접근_이력 인덱스2 */
CREATE NONCLUSTERED INDEX [IX_VECTORX_MNU_ACC_HIST2] ON [VECTORX_MNU_ACC_HIST] (
	[USR_ID] ASC
)
GO

/* 메뉴_접근_이력 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_접근_이력', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_ACC_HIST'
GO

/* 메뉴_접근_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_접근_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'MNU_ACC_ID'
GO

/* 메뉴_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'MNU_ID'
GO

/* 사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'USR_ID'
GO

/* 프로세스_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'프로세스_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'PROC_ID'
GO

/* 요청_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'요청_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'REQ_ID'
GO

/* 메뉴_URL */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_URL', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'MNU_URL'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_ACC_HIST', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 메뉴_접근_이력 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_접근_이력 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_ACC_HIST', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_MNU_ACC_HIST'
GO

/* 메뉴_접근_이력 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_접근_이력 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_ACC_HIST', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_MNU_ACC_HIST'
GO

/* 메뉴_접근_이력 인덱스 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_접근_이력 인덱스', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_ACC_HIST', 
	@level2type=N'INDEX', @level2name=N'IX_VECTORX_MNU_ACC_HIST'
GO

/* 메뉴_접근_이력 인덱스2 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_접근_이력 인덱스2', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_MNU_ACC_HIST', 
	@level2type=N'INDEX', @level2name=N'IX_VECTORX_MNU_ACC_HIST2'
GO

/* 배치_매니저 */
CREATE TABLE [VECTORX_BAT_MNGR] (
	[MNGR_ID] [VARCHAR](20) NOT NULL,  /* 매니저_아이디 */
	[URL] [VARCHAR](1000),  /* URL */
	[MSTR_YN] [CHAR](1) NOT NULL,  /* 마스터_여부 */
	[USE_YN] [CHAR](1) NOT NULL,  /* 사용_여부 */
	[REG_DTTM] [DATETIME],  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 배치_매니저 기본키 */
ALTER TABLE [VECTORX_BAT_MNGR]
	ADD
		CONSTRAINT [PK_VECTORX_BAT_MNGR]
		PRIMARY KEY NONCLUSTERED (
			[MNGR_ID] ASC
		)
GO

/* 배치_매니저 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'배치_매니저', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_MNGR'
GO

/* 매니저_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'매니저_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_MNGR', 
	@level2type=N'COLUMN', @level2name=N'MNGR_ID'
GO

/* URL */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'URL', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_MNGR', 
	@level2type=N'COLUMN', @level2name=N'URL'
GO

/* 마스터_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'마스터_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_MNGR', 
	@level2type=N'COLUMN', @level2name=N'MSTR_YN'
GO

/* 사용_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_MNGR', 
	@level2type=N'COLUMN', @level2name=N'USE_YN'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_MNGR', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_MNGR', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_MNGR', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_MNGR', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_MNGR', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_MNGR', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 배치_매니저 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'배치_매니저 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_MNGR', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_BAT_MNGR'
GO

/* 배치_매니저 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'배치_매니저 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_MNGR', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_BAT_MNGR'
GO

/* 배치_워커 */
CREATE TABLE [VECTORX_BAT_WRKR] (
	[WRKR_ID] [VARCHAR](20) NOT NULL,  /* 워커_아이디 */
	[URL] [VARCHAR](1000),  /* URL */
	[CPCT] [INT],  /* 수용량 */
	[USE_YN] [CHAR](1),  /* 사용_여부 */
	[REG_DTTM] [DATETIME],  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 배치_워커 기본키 */
ALTER TABLE [VECTORX_BAT_WRKR]
	ADD
		CONSTRAINT [PK_VECTORX_BAT_WRKR]
		PRIMARY KEY NONCLUSTERED (
			[WRKR_ID] ASC
		)
GO

/* 배치_워커 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'배치_워커', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_WRKR'
GO

/* 워커_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'워커_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_WRKR', 
	@level2type=N'COLUMN', @level2name=N'WRKR_ID'
GO

/* URL */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'URL', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_WRKR', 
	@level2type=N'COLUMN', @level2name=N'URL'
GO

/* 수용량 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수용량', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_WRKR', 
	@level2type=N'COLUMN', @level2name=N'CPCT'
GO

/* 사용_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_WRKR', 
	@level2type=N'COLUMN', @level2name=N'USE_YN'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_WRKR', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_WRKR', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_WRKR', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_WRKR', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_WRKR', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_WRKR', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 배치_워커 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'배치_워커 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_WRKR', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_BAT_WRKR'
GO

/* 배치_워커 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'배치_워커 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_WRKR', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_BAT_WRKR'
GO

/* 배치_작업 */
CREATE TABLE [VECTORX_BAT_TASK] (
	[TASK_ID] [VARCHAR](20) NOT NULL,  /* 작업_아이디 */
	[TASK_NM] [VARCHAR](50) NOT NULL,  /* 작업_명 */
	[TASK_DESC] [VARCHAR](1000),  /* 작업_설명 */
	[USE_YN] [CHAR](1),  /* 사용_여부 */
	[WIP_PLCY_CD] [CHAR](2),  /* 작업중_정책_코드 */
	[DLY_S] [INT],  /* 지연_시간(S) */
	[REG_DTTM] [DATETIME],  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 배치_작업 기본키 */
ALTER TABLE [VECTORX_BAT_TASK]
	ADD
		CONSTRAINT [PK_VECTORX_BAT_TASK]
		PRIMARY KEY NONCLUSTERED (
			[TASK_ID] ASC
		)
GO

/* 배치_작업 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'배치_작업', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK'
GO

/* 작업_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'작업_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK', 
	@level2type=N'COLUMN', @level2name=N'TASK_ID'
GO

/* 작업_명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'작업_명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK', 
	@level2type=N'COLUMN', @level2name=N'TASK_NM'
GO

/* 작업_설명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'작업_설명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK', 
	@level2type=N'COLUMN', @level2name=N'TASK_DESC'
GO

/* 사용_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK', 
	@level2type=N'COLUMN', @level2name=N'USE_YN'
GO

/* 작업중_정책_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'작업중_정책_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK', 
	@level2type=N'COLUMN', @level2name=N'WIP_PLCY_CD'
GO

/* 지연_시간(S) */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'지연_시간(S)', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK', 
	@level2type=N'COLUMN', @level2name=N'DLY_S'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 배치_작업 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'배치_작업 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_BAT_TASK'
GO

/* 배치_작업 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'배치_작업 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_BAT_TASK'
GO

/* 배치_작업_스케줄 */
CREATE TABLE [VECTORX_BAT_TASK_SCHDL] (
	[TASK_ID] [VARCHAR](20) NOT NULL,  /* 작업_아이디 */
	[TASK_SCHDL_NO] [NUMERIC] NOT NULL,  /* 작업_스케줄_번호 */
	[TASK_SCHDL_TYPE_CD] [CHAR](2) NOT NULL,  /* 작업_스케줄_유형_코드 */
	[TASK_SCHDL_EXPR] [VARCHAR](100) NOT NULL,  /* 작업_스케줄_표현식 */
	[USE_YN] [CHAR](1) NOT NULL /* 사용_여부 */
)
GO

/* 배치_작업_스케줄 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'배치_작업_스케줄', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK_SCHDL'
GO

/* 작업_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'작업_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK_SCHDL', 
	@level2type=N'COLUMN', @level2name=N'TASK_ID'
GO

/* 작업_스케줄_번호 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'작업_스케줄_번호', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK_SCHDL', 
	@level2type=N'COLUMN', @level2name=N'TASK_SCHDL_NO'
GO

/* 작업_스케줄_유형_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'작업_스케줄_유형_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK_SCHDL', 
	@level2type=N'COLUMN', @level2name=N'TASK_SCHDL_TYPE_CD'
GO

/* 작업_스케줄_표현식 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'작업_스케줄_표현식', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK_SCHDL', 
	@level2type=N'COLUMN', @level2name=N'TASK_SCHDL_EXPR'
GO

/* 사용_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK_SCHDL', 
	@level2type=N'COLUMN', @level2name=N'USE_YN'
GO

/* 배치_작업_실행 */
CREATE TABLE [VECTORX_BAT_TASK_EXEC] (
	[TASK_EXEC_ID] [CHAR](36) NOT NULL,  /* 작업_실행_아이디 */
	[WRKR_ID] [VARCHAR](20),  /* 워커_아이디 */
	[MNGR_ID] [VARCHAR](20) NOT NULL,  /* 매니저_아이디 */
	[TASK_ID] [VARCHAR](20) NOT NULL,  /* 작업_아이디 */
	[TASK_SCHDL_TYPE_CD] [CHAR](2) NOT NULL,  /* 작업_스케줄_유형_코드 */
	[TASK_SCHDL_EXPR] [VARCHAR](100) NOT NULL,  /* 작업_스케줄_표현식 */
	[SRT_DTTM] [DATETIME],  /* 시작_일시 */
	[END_DTTM] [DATETIME],  /* 종료_일시 */
	[STT_CD] [CHAR](2) NOT NULL,  /* 상태_코드 */
	[RSLT_CD] [CHAR](2),  /* 결과_코드 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20) NOT NULL,  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20) NOT NULL,  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME] NOT NULL,  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20) NOT NULL,  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) NOT NULL /* 수정_사용자_아이피 */
)
GO

/* 배치_작업_실행 기본키 */
ALTER TABLE [VECTORX_BAT_TASK_EXEC]
	ADD
		CONSTRAINT [PK_VECTORX_BAT_TASK_EXEC]
		PRIMARY KEY NONCLUSTERED (
			[TASK_EXEC_ID] ASC
		)
GO

/* 배치_작업_실행 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'배치_작업_실행', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK_EXEC'
GO

/* 작업_실행_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'작업_실행_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK_EXEC', 
	@level2type=N'COLUMN', @level2name=N'TASK_EXEC_ID'
GO

/* 워커_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'워커_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK_EXEC', 
	@level2type=N'COLUMN', @level2name=N'WRKR_ID'
GO

/* 매니저_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'매니저_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK_EXEC', 
	@level2type=N'COLUMN', @level2name=N'MNGR_ID'
GO

/* 작업_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'작업_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK_EXEC', 
	@level2type=N'COLUMN', @level2name=N'TASK_ID'
GO

/* 작업_스케줄_유형_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'작업_스케줄_유형_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK_EXEC', 
	@level2type=N'COLUMN', @level2name=N'TASK_SCHDL_TYPE_CD'
GO

/* 작업_스케줄_표현식 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'작업_스케줄_표현식', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK_EXEC', 
	@level2type=N'COLUMN', @level2name=N'TASK_SCHDL_EXPR'
GO

/* 시작_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'시작_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK_EXEC', 
	@level2type=N'COLUMN', @level2name=N'SRT_DTTM'
GO

/* 종료_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'종료_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK_EXEC', 
	@level2type=N'COLUMN', @level2name=N'END_DTTM'
GO

/* 상태_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'상태_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK_EXEC', 
	@level2type=N'COLUMN', @level2name=N'STT_CD'
GO

/* 결과_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'결과_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK_EXEC', 
	@level2type=N'COLUMN', @level2name=N'RSLT_CD'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK_EXEC', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK_EXEC', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK_EXEC', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK_EXEC', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK_EXEC', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK_EXEC', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 배치_작업_실행 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'배치_작업_실행 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK_EXEC', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_BAT_TASK_EXEC'
GO

/* 배치_작업_실행 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'배치_작업_실행 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK_EXEC', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_BAT_TASK_EXEC'
GO

/* 배치_작업_워커 */
CREATE TABLE [VECTORX_BAT_TASK_WRKR] (
	[TASK_ID] [VARCHAR](20) NOT NULL,  /*  작업_아이디 */
	[WRKR_ID] [VARCHAR](20) NOT NULL,  /* 워커_아이디 */
	[REG_DTTM] [DATETIME],  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 배치_작업_워커 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'배치_작업_워커', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK_WRKR'
GO

/*  작업_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N' 작업_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK_WRKR', 
	@level2type=N'COLUMN', @level2name=N'TASK_ID'
GO

/* 워커_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'워커_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK_WRKR', 
	@level2type=N'COLUMN', @level2name=N'WRKR_ID'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK_WRKR', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK_WRKR', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK_WRKR', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK_WRKR', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK_WRKR', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_BAT_TASK_WRKR', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 사용자 */
CREATE TABLE [VECTORX_USR] (
	[USR_ID] [VARCHAR](20) NOT NULL,  /* 사용자_아이디 */
	[USR_NM] [VARCHAR](50),  /* 사용자_명 */
	[DEPT_CD] [VARCHAR](20),  /* 부서_코드 */
	[DEPT_NM] [VARCHAR](50),  /* 부서_명 */
	[PWD] [VARCHAR](500),  /* 비밀번호 */
	[PWD_LST_UPD_DTTM] [DATETIME],  /* 비밀번호_최종_수정_일시 */
	[EMAIL] [VARCHAR](40),  /* 이메일 */
	[PH_NO] [VARCHAR](20),  /* 전화_번호 */
	[CPH_NO] [VARCHAR](20),  /* 핸드폰_번호 */
	[FAX_NO] [VARCHAR](20),  /* 팩스_번호 */
	[USR_STT_CD] [VARCHAR](20),  /* 사용자_상태_코드 */
	[USE_SRT_DT] [VARCHAR](8),  /* 사용_시작_일자 */
	[USE_END_DT] [VARCHAR](8),  /* 사용_종료_일자 */
	[USE_DV_CD] [VARCHAR](2),  /* 사용_구분_코드 */
	[LST_LOGIN_DTTM] [DATETIME],  /* 최종_로그인_일시 */
	[LOGIN_FAIL_CNT] [NUMERIC] DEFAULT 0,  /* 로그인_실패_건수 */
	[PWD_RESET_YN] [CHAR](1) DEFAULT 'Y',  /* 비밀번호_초기화_여부 */
	[IP_LMT_YN] [CHAR](1) DEFAULT 'N',  /* 아이피_제한_여부 */
	[IP_LIST] [VARCHAR](1000),  /* 아이피_목록 */
	[EMP_NO] [VARCHAR](20),  /* 사원_번호 */
	[RMK] [VARCHAR](1000),  /* 비고 */
	[ORG_CD] [VARCHAR](20),  /* 기관_코드 */
	[APV_CMPL_YN] [CHAR](1),  /* 승인_완료_여부 */
	[USR_APV_ID] [NUMERIC],  /* 사용자_승인_아이디 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 사용자 기본키 */
ALTER TABLE [VECTORX_USR]
	ADD
		CONSTRAINT [PK_VECTORX_USR]
		PRIMARY KEY NONCLUSTERED (
			[USR_ID] ASC
		)
GO

/* 사용자 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR'
GO

/* 사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR', 
	@level2type=N'COLUMN', @level2name=N'USR_ID'
GO

/* 사용자_명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR', 
	@level2type=N'COLUMN', @level2name=N'USR_NM'
GO

/* 부서_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'부서_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR', 
	@level2type=N'COLUMN', @level2name=N'DEPT_CD'
GO

/* 부서_명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'부서_명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR', 
	@level2type=N'COLUMN', @level2name=N'DEPT_NM'
GO

/* 비밀번호 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'비밀번호', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR', 
	@level2type=N'COLUMN', @level2name=N'PWD'
GO

/* 비밀번호_최종_수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'비밀번호_최종_수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR', 
	@level2type=N'COLUMN', @level2name=N'PWD_LST_UPD_DTTM'
GO

/* 이메일 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'이메일', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR', 
	@level2type=N'COLUMN', @level2name=N'EMAIL'
GO

/* 전화_번호 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'전화_번호', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR', 
	@level2type=N'COLUMN', @level2name=N'PH_NO'
GO

/* 핸드폰_번호 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'핸드폰_번호', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR', 
	@level2type=N'COLUMN', @level2name=N'CPH_NO'
GO

/* 팩스_번호 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'팩스_번호', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR', 
	@level2type=N'COLUMN', @level2name=N'FAX_NO'
GO

/* 사용자_상태_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_상태_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR', 
	@level2type=N'COLUMN', @level2name=N'USR_STT_CD'
GO

/* 사용_시작_일자 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용_시작_일자', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR', 
	@level2type=N'COLUMN', @level2name=N'USE_SRT_DT'
GO

/* 사용_종료_일자 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용_종료_일자', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR', 
	@level2type=N'COLUMN', @level2name=N'USE_END_DT'
GO

/* 사용_구분_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용_구분_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR', 
	@level2type=N'COLUMN', @level2name=N'USE_DV_CD'
GO

/* 최종_로그인_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'최종_로그인_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR', 
	@level2type=N'COLUMN', @level2name=N'LST_LOGIN_DTTM'
GO

/* 로그인_실패_건수 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'로그인_실패_건수', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR', 
	@level2type=N'COLUMN', @level2name=N'LOGIN_FAIL_CNT'
GO

/* 비밀번호_초기화_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'비밀번호_초기화_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR', 
	@level2type=N'COLUMN', @level2name=N'PWD_RESET_YN'
GO

/* 아이피_제한_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'아이피_제한_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR', 
	@level2type=N'COLUMN', @level2name=N'IP_LMT_YN'
GO

/* 아이피_목록 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'아이피_목록', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR', 
	@level2type=N'COLUMN', @level2name=N'IP_LIST'
GO

/* 사원_번호 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사원_번호', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR', 
	@level2type=N'COLUMN', @level2name=N'EMP_NO'
GO

/* 비고 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'비고', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR', 
	@level2type=N'COLUMN', @level2name=N'RMK'
GO

/* 기관_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'기관_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR', 
	@level2type=N'COLUMN', @level2name=N'ORG_CD'
GO

/* 승인_완료_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'승인_완료_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR', 
	@level2type=N'COLUMN', @level2name=N'APV_CMPL_YN'
GO

/* 사용자_승인_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_승인_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR', 
	@level2type=N'COLUMN', @level2name=N'USR_APV_ID'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 사용자 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_USR'
GO

/* 사용자 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_USR'
GO

/* 사용자_메뉴 */
CREATE TABLE [VECTORX_USR_MNU] (
	[USR_ID] [VARCHAR](20) NOT NULL,  /* 사용자_아이디 */
	[MNU_ID] [NUMERIC] NOT NULL,  /* 메뉴_아이디 */
	[DEF_MNU_YN] [CHAR](1),  /* 기본_메뉴_여부 */
	[SRT_NO] [NUMERIC],  /* 정렬_번호 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[SYS_CD] [VARCHAR](20),  /* 시스템_코드 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_IP] [VARCHAR](20),  /* 수정_사용자_아이피 */
	[UPD_USR_ID] [VARCHAR](20) /* 수정_사용자_아이디 */
)
GO

/* 사용자_메뉴 Primary key */
ALTER TABLE [VECTORX_USR_MNU]
	ADD
		CONSTRAINT [PK_VECTORX_USR_MNU]
		PRIMARY KEY NONCLUSTERED (
			[USR_ID] ASC, 
			[MNU_ID] ASC
		)
GO

/* 사용자_메뉴 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_메뉴', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_MNU'
GO

/* 사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_MNU', 
	@level2type=N'COLUMN', @level2name=N'USR_ID'
GO

/* 메뉴_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_MNU', 
	@level2type=N'COLUMN', @level2name=N'MNU_ID'
GO

/* 기본_메뉴_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'기본_메뉴_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_MNU', 
	@level2type=N'COLUMN', @level2name=N'DEF_MNU_YN'
GO

/* 정렬_번호 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'정렬_번호', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_MNU', 
	@level2type=N'COLUMN', @level2name=N'SRT_NO'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_MNU', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 시스템_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'시스템_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_MNU', 
	@level2type=N'COLUMN', @level2name=N'SYS_CD'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_MNU', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_MNU', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_MNU', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_MNU', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_MNU', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 사용자_메뉴 Primary key */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_메뉴 Primary key', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_MNU', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_USR_MNU'
GO

/* 사용자_메뉴 Primary key */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_메뉴 Primary key', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_MNU', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_USR_MNU'
GO

/* 사용자_상태_승인 */
CREATE TABLE [VECTORX_USR_STT_APV] (
	[USR_APV_ID] [NUMERIC] NOT NULL,  /* 사용자_승인_아이디 */
	[USR_ID] [VARCHAR](20),  /* 사용자_아이디 */
	[USR_STT_CD] [VARCHAR](20),  /* 사용자_상태_코드 */
	[PWD_RESET_YN] [CHAR](1) DEFAULT 'N',  /* 비밀번호_초기화_여부 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 사용자_상태_승인 기본키 */
ALTER TABLE [VECTORX_USR_STT_APV]
	ADD
		CONSTRAINT [PK_VECTORX_USR_STT_APV]
		PRIMARY KEY NONCLUSTERED (
			[USR_APV_ID] ASC
		)
GO

/* 사용자_상태_승인 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_상태_승인', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_STT_APV'
GO

/* 사용자_승인_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_승인_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_STT_APV', 
	@level2type=N'COLUMN', @level2name=N'USR_APV_ID'
GO

/* 사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_STT_APV', 
	@level2type=N'COLUMN', @level2name=N'USR_ID'
GO

/* 사용자_상태_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_상태_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_STT_APV', 
	@level2type=N'COLUMN', @level2name=N'USR_STT_CD'
GO

/* 비밀번호_초기화_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'비밀번호_초기화_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_STT_APV', 
	@level2type=N'COLUMN', @level2name=N'PWD_RESET_YN'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_STT_APV', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_STT_APV', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_STT_APV', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_STT_APV', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_STT_APV', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_STT_APV', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 사용자_상태_승인 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_상태_승인 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_STT_APV', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_USR_STT_APV'
GO

/* 사용자_상태_승인 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_상태_승인 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_STT_APV', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_USR_STT_APV'
GO

/* 사용자_승인 */
CREATE TABLE [VECTORX_USR_APV] (
	[USR_APV_ID] [NUMERIC] NOT NULL,  /* 사용자_승인_아이디 */
	[REQ_USR_ID] [VARCHAR](20) NOT NULL,  /* 요청_사용자_아이디 */
	[APV_USR_ID] [VARCHAR](20),  /* 승인_사용자_아이디 */
	[USR_APV_TY_CD] [VARCHAR](20),  /* 사용자_승인_유형_코드 */
	[APV_STT_CD] [VARCHAR](20),  /* 승인_상태_코드 */
	[APV_REQ_DTTM] [DATETIME],  /* 승인_요청_일시 */
	[APV_PRC_DTTM] [DATETIME],  /* 승인_처리_일시 */
	[APV_REQ_OPN_CONT] [VARCHAR](1000),  /* 승인_요청_의견_내용 */
	[APV_OPN_CONT] [VARCHAR](1000),  /* 승인_의견_내용 */
	[REQ_USR_EMAIL] [VARCHAR](40),  /* 요청_사용자_이메일 */
	[REQ_USR_DEPT_NM] [VARCHAR](50),  /* 요청_사용자_부서_명 */
	[REQ_USR_NM] [VARCHAR](50),  /* 요청_사용자_명 */
	[ADD_INF_VAL] [VARCHAR](4000),  /* 추가_정보_값 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 사용자_승인 기본키 */
ALTER TABLE [VECTORX_USR_APV]
	ADD
		CONSTRAINT [PK_VECTORX_USR_APV]
		PRIMARY KEY NONCLUSTERED (
			[USR_APV_ID] ASC
		)
GO

/* 사용자_승인 인덱스 */
CREATE NONCLUSTERED INDEX [IX_VECTORX_USR_APV] ON [VECTORX_USR_APV] (
	[USR_APV_TY_CD] ASC
)

/* 사용자_승인 인덱스2 */
CREATE NONCLUSTERED INDEX [IX_VECTORX_USR_APV2] ON [VECTORX_USR_APV] (
	[APV_STT_CD] ASC
)

/* 사용자_승인 인덱스3 */
CREATE NONCLUSTERED INDEX [IX_VECTORX_USR_APV3] ON [VECTORX_USR_APV] (
	[APV_REQ_DTTM] ASC
)
GO

/* 사용자_승인 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_승인', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV'
GO

/* 사용자_승인_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_승인_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV', 
	@level2type=N'COLUMN', @level2name=N'USR_APV_ID'
GO

/* 요청_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'요청_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV', 
	@level2type=N'COLUMN', @level2name=N'REQ_USR_ID'
GO

/* 승인_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'승인_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV', 
	@level2type=N'COLUMN', @level2name=N'APV_USR_ID'
GO

/* 사용자_승인_유형_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자 승인유형 코드가 08일 경우,
 권한 그룹 승인 테이블에 승인 권한그룹별로 정보를 INSERT', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV', 
	@level2type=N'COLUMN', @level2name=N'USR_APV_TY_CD'
GO

/* 승인_상태_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'승인_상태_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV', 
	@level2type=N'COLUMN', @level2name=N'APV_STT_CD'
GO

/* 승인_요청_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'승인_요청_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV', 
	@level2type=N'COLUMN', @level2name=N'APV_REQ_DTTM'
GO

/* 승인_처리_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'승인_처리_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV', 
	@level2type=N'COLUMN', @level2name=N'APV_PRC_DTTM'
GO

/* 승인_요청_의견_내용 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'승인_요청_의견_내용', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV', 
	@level2type=N'COLUMN', @level2name=N'APV_REQ_OPN_CONT'
GO

/* 승인_의견_내용 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'승인_의견_내용', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV', 
	@level2type=N'COLUMN', @level2name=N'APV_OPN_CONT'
GO

/* 요청_사용자_이메일 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'요청_사용자_이메일', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV', 
	@level2type=N'COLUMN', @level2name=N'REQ_USR_EMAIL'
GO

/* 요청_사용자_부서_명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'요청_사용자_부서_명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV', 
	@level2type=N'COLUMN', @level2name=N'REQ_USR_DEPT_NM'
GO

/* 요청_사용자_명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'요청_사용자_명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV', 
	@level2type=N'COLUMN', @level2name=N'REQ_USR_NM'
GO

/* 추가_정보_값 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'추가_정보_값', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV', 
	@level2type=N'COLUMN', @level2name=N'ADD_INF_VAL'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 사용자_승인 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_승인 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_USR_APV'
GO

/* 사용자_승인 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_승인 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_USR_APV'
GO

/* 사용자_승인 인덱스 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_승인 인덱스', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV', 
	@level2type=N'INDEX', @level2name=N'IX_VECTORX_USR_APV'
GO

/* 사용자_승인 인덱스2 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_승인 인덱스2', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV', 
	@level2type=N'INDEX', @level2name=N'IX_VECTORX_USR_APV2'
GO

/* 사용자_승인 인덱스3 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_승인 인덱스3', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV', 
	@level2type=N'INDEX', @level2name=N'IX_VECTORX_USR_APV3'
GO

/* 사용자_승인_단계 */
CREATE TABLE [VECTORX_USR_APV_STEP] (
	[USR_APV_ID] [NUMERIC] NOT NULL,  /* 사용자_승인_아이디 */
	[STEP_NO] [INT] NOT NULL,  /* 단계_번호 */
	[STEP_DV_CD] [CHAR](2),  /* 단계_구분_코드 */
	[APV_AUTH_GRP_ID] [NUMERIC],  /* 승인_권한_그룹_아이디 */
	[APV_USR_ID] [VARCHAR](20),  /* 승인_사용자_아이디 */
	[APV_PRC_DV_CD] [CHAR](2),  /* 승인_처리_구분_코드 */
	[APV_STT_CD] [CHAR](2),  /* 승인_상태_코드 */
	[APV_OPN_CONT] [VARCHAR](1000),  /* 승인_의견_내용 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 사용자_승인_단계 기본키 */
ALTER TABLE [VECTORX_USR_APV_STEP]
	ADD
		CONSTRAINT [PK_VECTORX_USR_APV_STEP]
		PRIMARY KEY NONCLUSTERED (
			[USR_APV_ID] ASC, 
			[STEP_NO] ASC
		)
GO

/* 사용자_승인_단계 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_승인_단계', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV_STEP'
GO

/* 사용자_승인_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_승인_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV_STEP', 
	@level2type=N'COLUMN', @level2name=N'USR_APV_ID'
GO

/* 단계_번호 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'단계_번호', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV_STEP', 
	@level2type=N'COLUMN', @level2name=N'STEP_NO'
GO

/* 단계_구분_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'단계_구분_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV_STEP', 
	@level2type=N'COLUMN', @level2name=N'STEP_DV_CD'
GO

/* 승인_권한_그룹_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'승인_권한_그룹_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV_STEP', 
	@level2type=N'COLUMN', @level2name=N'APV_AUTH_GRP_ID'
GO

/* 승인_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'승인_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV_STEP', 
	@level2type=N'COLUMN', @level2name=N'APV_USR_ID'
GO

/* 승인_처리_구분_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'승인_처리_구분_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV_STEP', 
	@level2type=N'COLUMN', @level2name=N'APV_PRC_DV_CD'
GO

/* 승인_상태_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'승인_상태_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV_STEP', 
	@level2type=N'COLUMN', @level2name=N'APV_STT_CD'
GO

/* 승인_의견_내용 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'승인_의견_내용', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV_STEP', 
	@level2type=N'COLUMN', @level2name=N'APV_OPN_CONT'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV_STEP', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV_STEP', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV_STEP', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV_STEP', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV_STEP', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV_STEP', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 사용자_승인_단계 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_승인_단계 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV_STEP', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_USR_APV_STEP'
GO

/* 사용자_승인_단계 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_승인_단계 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_APV_STEP', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_USR_APV_STEP'
GO

/* 사용자_이력 */
CREATE TABLE [VECTORX_USR_HIST] (
	[USR_ID] [VARCHAR](20) NOT NULL,  /* 사용자_아이디 */
	[INP_DTTM] [DATETIME] NOT NULL,  /* 입력_일시 */
	[USR_NM] [VARCHAR](50),  /* 사용자_명 */
	[DEPT_CD] [VARCHAR](20),  /* 부서_코드 */
	[DEPT_NM] [VARCHAR](50),  /* 부서_명 */
	[PWD] [VARCHAR](500),  /* 비밀번호 */
	[PWD_LST_UPD_DTTM] [DATETIME],  /* 비밀번호_최종_수정_일시 */
	[EMAIL] [VARCHAR](40),  /* 이메일 */
	[PH_NO] [VARCHAR](20),  /* 전화_번호 */
	[CPH_NO] [VARCHAR](20),  /* 핸드폰_번호 */
	[FAX_NO] [VARCHAR](20),  /* 팩스_번호 */
	[USR_STT_CD] [VARCHAR](20),  /* 사용자_상태_코드 */
	[USE_SRT_DT] [VARCHAR](8),  /* 사용_시작_일자 */
	[USE_END_DT] [VARCHAR](8),  /* 사용_종료_일자 */
	[USE_DV_CD] [VARCHAR](2),  /* 사용_구분_코드 */
	[LST_LOGIN_DTTM] [DATETIME],  /* 최종_로그인_일시 */
	[LOGIN_FAIL_CNT] [NUMERIC] DEFAULT 0,  /* 로그인_실패_건수 */
	[PWD_RESET_YN] [CHAR](1) DEFAULT 'Y',  /* 비밀번호_초기화_여부 */
	[IP_LMT_YN] [CHAR](1) DEFAULT 'N',  /* 아이피_제한_여부 */
	[IP_LIST] [VARCHAR](1000),  /* 아이피_목록 */
	[EMP_NO] [VARCHAR](20),  /* 사원_번호 */
	[RMK] [VARCHAR](1000),  /* 비고 */
	[ORG_CD] [VARCHAR](20),  /* 기관_코드 */
	[WORK_DV_CD] [CHAR](1),  /* 업무_구분_코드 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 사용자_이력 기본키 */
ALTER TABLE [VECTORX_USR_HIST]
	ADD
		CONSTRAINT [PK_VECTORX_USR_HIST]
		PRIMARY KEY NONCLUSTERED (
			[INP_DTTM] ASC
		)
GO

/* 사용자_이력 인덱스 */
CREATE NONCLUSTERED INDEX [IX_VECTORX_USR_HIST] ON [VECTORX_USR_HIST] (
	[USR_NM] ASC
)
GO

/* 사용자_이력 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_이력', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_HIST'
GO

/* 사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'USR_ID'
GO

/* 입력_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'입력_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'INP_DTTM'
GO

/* 사용자_명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'USR_NM'
GO

/* 부서_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'부서_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'DEPT_CD'
GO

/* 부서_명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'부서_명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'DEPT_NM'
GO

/* 비밀번호 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'비밀번호', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'PWD'
GO

/* 비밀번호_최종_수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'비밀번호_최종_수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'PWD_LST_UPD_DTTM'
GO

/* 이메일 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'이메일', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'EMAIL'
GO

/* 전화_번호 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'전화_번호', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'PH_NO'
GO

/* 핸드폰_번호 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'핸드폰_번호', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'CPH_NO'
GO

/* 팩스_번호 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'팩스_번호', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'FAX_NO'
GO

/* 사용자_상태_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_상태_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'USR_STT_CD'
GO

/* 사용_시작_일자 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용_시작_일자', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'USE_SRT_DT'
GO

/* 사용_종료_일자 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용_종료_일자', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'USE_END_DT'
GO

/* 사용_구분_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용_구분_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'USE_DV_CD'
GO

/* 최종_로그인_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'최종_로그인_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'LST_LOGIN_DTTM'
GO

/* 로그인_실패_건수 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'로그인_실패_건수', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'LOGIN_FAIL_CNT'
GO

/* 비밀번호_초기화_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'비밀번호_초기화_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'PWD_RESET_YN'
GO

/* 아이피_제한_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'아이피_제한_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'IP_LMT_YN'
GO

/* 아이피_목록 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'아이피_목록', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'IP_LIST'
GO

/* 사원_번호 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사원_번호', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'EMP_NO'
GO

/* 비고 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'비고', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'RMK'
GO

/* 기관_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'기관_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'ORG_CD'
GO

/* 업무_구분_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'업무_구분_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'WORK_DV_CD'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_HIST', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 사용자_이력 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_이력 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_HIST', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_USR_HIST'
GO

/* 사용자_이력 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_이력 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_HIST', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_USR_HIST'
GO

/* 사용자_이력 인덱스 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_이력 인덱스', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_USR_HIST', 
	@level2type=N'INDEX', @level2name=N'IX_VECTORX_USR_HIST'
GO

/* 어플리케이션_상태 */
CREATE TABLE [VECTORX_APP_STT] (
	[APP_STT_ID] [NUMERIC] NOT NULL,  /* 어플리케이션_상태_아이디 */
	[APLY_SRT_DTTM] [DATETIME],  /* 적용_시작_일시 */
	[APLY_END_DTTM] [DATETIME],  /* 적용_종료_일시 */
	[STT_TY_CD] [VARCHAR](20),  /* 상태_유형_코드 */
	[ACC_ALW_IP_LIST] [VARCHAR](1000),  /* 접속_허용_아이피_목록 */
	[USE_YN] [CHAR](1),  /* 사용_여부 */
	[TITLE] [VARCHAR](100),  /* 제목 */
	[REDT_URL] [VARCHAR](1000),  /* 리다이렉트_URL */
	[CTRL_SCOP_TY_CD] [VARCHAR](20),  /* 제어_범위_유형_코드 */
	[SCOP_URL] [VARCHAR](1000),  /* 범위_URL */
	[EXPS_MSG] [VARCHAR](1000),  /* 노출_메시지 */
	[SYS_CD] [VARCHAR](20),  /* 시스템_코드 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 어플리케이션_상태 기본키 */
ALTER TABLE [VECTORX_APP_STT]
	ADD
		CONSTRAINT [PK_VECTORX_APP_STT]
		PRIMARY KEY NONCLUSTERED (
			[APP_STT_ID] ASC
		)
GO

/* 어플리케이션_상태 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'어플리케이션_상태', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_APP_STT'
GO

/* 어플리케이션_상태_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'어플리케이션_상태_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_APP_STT', 
	@level2type=N'COLUMN', @level2name=N'APP_STT_ID'
GO

/* 적용_시작_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'적용_시작_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_APP_STT', 
	@level2type=N'COLUMN', @level2name=N'APLY_SRT_DTTM'
GO

/* 적용_종료_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'적용_종료_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_APP_STT', 
	@level2type=N'COLUMN', @level2name=N'APLY_END_DTTM'
GO

/* 상태_유형_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'상태_유형_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_APP_STT', 
	@level2type=N'COLUMN', @level2name=N'STT_TY_CD'
GO

/* 접속_허용_아이피_목록 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'접속_허용_아이피_목록', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_APP_STT', 
	@level2type=N'COLUMN', @level2name=N'ACC_ALW_IP_LIST'
GO

/* 사용_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_APP_STT', 
	@level2type=N'COLUMN', @level2name=N'USE_YN'
GO

/* 제목 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'제목', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_APP_STT', 
	@level2type=N'COLUMN', @level2name=N'TITLE'
GO

/* 리다이렉트_URL */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'리다이렉트_URL', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_APP_STT', 
	@level2type=N'COLUMN', @level2name=N'REDT_URL'
GO

/* 제어_범위_유형_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'제어_범위_유형_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_APP_STT', 
	@level2type=N'COLUMN', @level2name=N'CTRL_SCOP_TY_CD'
GO

/* 범위_URL */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'범위_URL', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_APP_STT', 
	@level2type=N'COLUMN', @level2name=N'SCOP_URL'
GO

/* 노출_메시지 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'노출_메시지', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_APP_STT', 
	@level2type=N'COLUMN', @level2name=N'EXPS_MSG'
GO

/* 시스템_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'시스템_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_APP_STT', 
	@level2type=N'COLUMN', @level2name=N'SYS_CD'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_APP_STT', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_APP_STT', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_APP_STT', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_APP_STT', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_APP_STT', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_APP_STT', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 어플리케이션_상태 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'어플리케이션_상태 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_APP_STT', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_APP_STT'
GO

/* 어플리케이션_상태 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'어플리케이션_상태 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_APP_STT', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_APP_STT'
GO

/* 어플리케이션_상태_메뉴 */
CREATE TABLE [VECTORX_APP_STT_MNU] (
	[MNU_ID] [NUMERIC] NOT NULL,  /* 메뉴_아이디 */
	[APP_STT_ID] [NUMERIC] NOT NULL,  /* 어플리케이션_상태_아이디 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 어플리케이션_상태_메뉴 기본키 */
ALTER TABLE [VECTORX_APP_STT_MNU]
	ADD
		CONSTRAINT [PK_VECTORX_APP_STT_MNU]
		PRIMARY KEY NONCLUSTERED (
			[MNU_ID] ASC, 
			[APP_STT_ID] ASC
		)
GO

/* 어플리케이션_상태_메뉴 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'어플리케이션_상태_메뉴', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_APP_STT_MNU'
GO

/* 메뉴_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_APP_STT_MNU', 
	@level2type=N'COLUMN', @level2name=N'MNU_ID'
GO

/* 어플리케이션_상태_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'어플리케이션_상태_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_APP_STT_MNU', 
	@level2type=N'COLUMN', @level2name=N'APP_STT_ID'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_APP_STT_MNU', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_APP_STT_MNU', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_APP_STT_MNU', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_APP_STT_MNU', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_APP_STT_MNU', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_APP_STT_MNU', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 어플리케이션_상태_메뉴 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'어플리케이션_상태_메뉴 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_APP_STT_MNU', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_APP_STT_MNU'
GO

/* 어플리케이션_상태_메뉴 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'어플리케이션_상태_메뉴 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_APP_STT_MNU', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_APP_STT_MNU'
GO

/* 인터페이스 */
CREATE TABLE [VECTORX_IFS] (
	[IF_ID] [VARCHAR](20) NOT NULL,  /* 인터페이스_아이디 */
	[IF_VER] [VARCHAR](10) NOT NULL,  /* 인터페이스_버전 */
	[IF_NM] [VARCHAR](50),  /* 인터페이스_명 */
	[SYS_CD] [VARCHAR](20),  /* 시스템_코드 */
	[USE_YN] [CHAR](1),  /* 사용_여부 */
	[RMK] [VARCHAR](1000),  /* 비고 */
	[IP_LMT_YN] [CHAR](1) DEFAULT 'N',  /* 아이피_제한_여부 */
	[IP_LIST] [VARCHAR](1000),  /* 아이피_목록 */
	[URL] [VARCHAR](1000),  /* URL */
	[HTTP_METH_CD] [VARCHAR](20),  /* HTTP_메소드_코드 */
	[AUTH_CTRL_YN] [CHAR](1) DEFAULT 'N',  /* 권한_제어_여부 */
	[IF_TY_CD] [VARCHAR](20),  /* 인터페이스_유형_코드 */
	[IF_LOG_TY_CD] [VARCHAR](20),  /* 인터페이스_로깅_유형_코드 */
	[IF_DIR_CD] [VARCHAR](20),  /* 인터페이스_방향_코드 */
	[CHNL_LMT_YN] [CHAR](1) DEFAULT 'N',  /* 채널_제한_여부 */
	[CERT_NEC_YN] [CHAR](1) DEFAULT 'N',  /* 인증_필요_여부 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 인터페이스 기본키 */
ALTER TABLE [VECTORX_IFS]
	ADD
		CONSTRAINT [PK_VECTORX_IFS]
		PRIMARY KEY NONCLUSTERED (
			[IF_ID] ASC, 
			[IF_VER] ASC
		)
GO

/* 인터페이스 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인터페이스', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS'
GO

/* 인터페이스_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인터페이스_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS', 
	@level2type=N'COLUMN', @level2name=N'IF_ID'
GO

/* 인터페이스_버전 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인터페이스_버전', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS', 
	@level2type=N'COLUMN', @level2name=N'IF_VER'
GO

/* 인터페이스_명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인터페이스_명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS', 
	@level2type=N'COLUMN', @level2name=N'IF_NM'
GO

/* 시스템_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'시스템_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS', 
	@level2type=N'COLUMN', @level2name=N'SYS_CD'
GO

/* 사용_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS', 
	@level2type=N'COLUMN', @level2name=N'USE_YN'
GO

/* 비고 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'비고', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS', 
	@level2type=N'COLUMN', @level2name=N'RMK'
GO

/* 아이피_제한_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'아이피_제한_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS', 
	@level2type=N'COLUMN', @level2name=N'IP_LMT_YN'
GO

/* 아이피_목록 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'아이피_목록', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS', 
	@level2type=N'COLUMN', @level2name=N'IP_LIST'
GO

/* URL */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'URL', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS', 
	@level2type=N'COLUMN', @level2name=N'URL'
GO

/* HTTP_메소드_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'HTTP_메소드_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS', 
	@level2type=N'COLUMN', @level2name=N'HTTP_METH_CD'
GO

/* 권한_제어_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'권한_제어_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS', 
	@level2type=N'COLUMN', @level2name=N'AUTH_CTRL_YN'
GO

/* 인터페이스_유형_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인터페이스_유형_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS', 
	@level2type=N'COLUMN', @level2name=N'IF_TY_CD'
GO

/* 인터페이스_로깅_유형_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인터페이스_로깅_유형_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS', 
	@level2type=N'COLUMN', @level2name=N'IF_LOG_TY_CD'
GO

/* 인터페이스_방향_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인터페이스_방향_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS', 
	@level2type=N'COLUMN', @level2name=N'IF_DIR_CD'
GO

/* 채널_제한_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'채널_제한_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS', 
	@level2type=N'COLUMN', @level2name=N'CHNL_LMT_YN'
GO

/* 인증_필요_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인증_필요_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS', 
	@level2type=N'COLUMN', @level2name=N'CERT_NEC_YN'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 인터페이스 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인터페이스 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_IFS'
GO

/* 인터페이스 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인터페이스 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_IFS'
GO

/* 인터페이스_이력 */
CREATE TABLE [VECTORX_IFS_HIST] (
	[IF_HIST_ID] [NUMERIC] NOT NULL,  /* 인터페이스_이력_아이디 */
	[PROC_ID] [VARCHAR](50),  /* 프로세스_아이디 */
	[REQ_ID] [VARCHAR](50),  /* 요청_아이디 */
	[REQ_NO] [NUMERIC],  /* 요청_번호 */
	[IF_ID] [VARCHAR](20),  /* 인터페이스_아이디 */
	[IF_VER] [VARCHAR](10),  /* 인터페이스_버전 */
	[IF_NM] [VARCHAR](50),  /* 인터페이스_명 */
	[SYS_CD] [VARCHAR](20),  /* 시스템_코드 */
	[CHNL_CD] [VARCHAR](20),  /* 채널_코드 */
	[RMK] [VARCHAR](1000),  /* 비고 */
	[URL] [VARCHAR](1000),  /* URL */
	[HTTP_METH_CD] [VARCHAR](20),  /* HTTP_메소드_코드 */
	[SUCC_YN] [CHAR](1),  /* 성공_여부 */
	[RES_CD_VAL] [VARCHAR](10),  /* 응답_코드_값 */
	[HTTP_STT_CD_VAL] [VARCHAR](4),  /* HTTP_상태_코드_값 */
	[REQ_MSG_CONT] [TEXT],  /* 요청_메시지_내용 */
	[RES_MSG_CONT] [TEXT],  /* 응답_메시지_내용 */
	[REQ_HED_CONT] [TEXT],  /* 요청_헤더_내용 */
	[REQ_PRM_CONT] [TEXT],  /* 요청_파라메터_내용 */
	[RES_HED_CONT] [TEXT],  /* 응답_헤더_내용 */
	[USR_ID] [VARCHAR](20),  /* 사용자_아이디 */
	[USR_KEY] [VARCHAR](20),  /* 사용자_키 */
	[MNU_ID] [NUMERIC],  /* 메뉴_아이디 */
	[PROC_MS] [NUMERIC],  /* 프로세스_시간(MS) */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 인터페이스_이력 기본키 */
ALTER TABLE [VECTORX_IFS_HIST]
	ADD
		CONSTRAINT [PK_VECTORX_IFS_HIST]
		PRIMARY KEY NONCLUSTERED (
			[IF_HIST_ID] ASC
		)
GO

/* 인터페이스_이력 인덱스 */
CREATE NONCLUSTERED INDEX [IX_VECTORX_IFS_HIST] ON [VECTORX_IFS_HIST] (
	[PROC_ID] ASC
)

/* 인터페이스_이력 인덱스2 */
CREATE NONCLUSTERED INDEX [IX_VECTORX_IFS_HIST2] ON [VECTORX_IFS_HIST] (
	[REQ_ID] ASC
)

/* 인터페이스_이력 인덱스3 */
CREATE NONCLUSTERED INDEX [IX_VECTORX_IFS_HIST3] ON [VECTORX_IFS_HIST] (
	[IF_ID] ASC, 
	[IF_VER] ASC
)
GO

/* 인터페이스_이력 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인터페이스_이력', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_HIST'
GO

/* 인터페이스_이력_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인터페이스_이력_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_HIST', 
	@level2type=N'COLUMN', @level2name=N'IF_HIST_ID'
GO

/* 프로세스_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'프로세스_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_HIST', 
	@level2type=N'COLUMN', @level2name=N'PROC_ID'
GO

/* 요청_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'요청_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_HIST', 
	@level2type=N'COLUMN', @level2name=N'REQ_ID'
GO

/* 요청_번호 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'요청_번호', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_HIST', 
	@level2type=N'COLUMN', @level2name=N'REQ_NO'
GO

/* 인터페이스_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인터페이스_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_HIST', 
	@level2type=N'COLUMN', @level2name=N'IF_ID'
GO

/* 인터페이스_버전 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인터페이스_버전', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_HIST', 
	@level2type=N'COLUMN', @level2name=N'IF_VER'
GO

/* 인터페이스_명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인터페이스_명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_HIST', 
	@level2type=N'COLUMN', @level2name=N'IF_NM'
GO

/* 시스템_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'시스템_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_HIST', 
	@level2type=N'COLUMN', @level2name=N'SYS_CD'
GO

/* 채널_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'채널_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_HIST', 
	@level2type=N'COLUMN', @level2name=N'CHNL_CD'
GO

/* 비고 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'비고', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_HIST', 
	@level2type=N'COLUMN', @level2name=N'RMK'
GO

/* URL */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'URL', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_HIST', 
	@level2type=N'COLUMN', @level2name=N'URL'
GO

/* HTTP_메소드_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'HTTP_메소드_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_HIST', 
	@level2type=N'COLUMN', @level2name=N'HTTP_METH_CD'
GO

/* 성공_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'성공_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_HIST', 
	@level2type=N'COLUMN', @level2name=N'SUCC_YN'
GO

/* 응답_코드_값 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'응답_코드_값', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_HIST', 
	@level2type=N'COLUMN', @level2name=N'RES_CD_VAL'
GO

/* HTTP_상태_코드_값 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'HTTP_상태_코드_값', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_HIST', 
	@level2type=N'COLUMN', @level2name=N'HTTP_STT_CD_VAL'
GO

/* 요청_메시지_내용 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'요청_메시지_내용', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_HIST', 
	@level2type=N'COLUMN', @level2name=N'REQ_MSG_CONT'
GO

/* 응답_메시지_내용 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'응답_메시지_내용', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_HIST', 
	@level2type=N'COLUMN', @level2name=N'RES_MSG_CONT'
GO

/* 요청_헤더_내용 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'요청_헤더_내용', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_HIST', 
	@level2type=N'COLUMN', @level2name=N'REQ_HED_CONT'
GO

/* 요청_파라메터_내용 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'요청_파라메터_내용', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_HIST', 
	@level2type=N'COLUMN', @level2name=N'REQ_PRM_CONT'
GO

/* 응답_헤더_내용 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'응답_헤더_내용', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_HIST', 
	@level2type=N'COLUMN', @level2name=N'RES_HED_CONT'
GO

/* 사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_HIST', 
	@level2type=N'COLUMN', @level2name=N'USR_ID'
GO

/* 사용자_키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_HIST', 
	@level2type=N'COLUMN', @level2name=N'USR_KEY'
GO

/* 메뉴_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_HIST', 
	@level2type=N'COLUMN', @level2name=N'MNU_ID'
GO

/* 프로세스_시간(MS) */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'프로세스_시간(MS)', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_HIST', 
	@level2type=N'COLUMN', @level2name=N'PROC_MS'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_HIST', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_HIST', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_HIST', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_HIST', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_HIST', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_HIST', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 인터페이스_이력 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인터페이스_이력 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_HIST', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_IFS_HIST'
GO

/* 인터페이스_이력 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인터페이스_이력 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_HIST', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_IFS_HIST'
GO

/* 인터페이스_이력 인덱스 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인터페이스_이력 인덱스', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_HIST', 
	@level2type=N'INDEX', @level2name=N'IX_VECTORX_IFS_HIST'
GO

/* 인터페이스_이력 인덱스2 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인터페이스_이력 인덱스2', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_HIST', 
	@level2type=N'INDEX', @level2name=N'IX_VECTORX_IFS_HIST2'
GO

/* 인터페이스_이력 인덱스3 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인터페이스_이력 인덱스3', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_HIST', 
	@level2type=N'INDEX', @level2name=N'IX_VECTORX_IFS_HIST3'
GO

/* 인터페이스_채널 */
CREATE TABLE [VECTORX_IF_CHNL] (
	[IF_ID] [VARCHAR](20) NOT NULL,  /* 인터페이스_아이디 */
	[IF_VER] [VARCHAR](10) NOT NULL,  /* 인터페이스_버전 */
	[CHNL_CD] [VARCHAR](20) NOT NULL,  /* 채널_코드 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 인터페이스_채널 기본키 */
ALTER TABLE [VECTORX_IF_CHNL]
	ADD
		CONSTRAINT [PK_VECTORX_IF_CHNL]
		PRIMARY KEY NONCLUSTERED (
			[IF_ID] ASC, 
			[IF_VER] ASC, 
			[CHNL_CD] ASC
		)
GO

/* 인터페이스_채널 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인터페이스_채널', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IF_CHNL'
GO

/* 인터페이스_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인터페이스_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IF_CHNL', 
	@level2type=N'COLUMN', @level2name=N'IF_ID'
GO

/* 인터페이스_버전 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인터페이스_버전', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IF_CHNL', 
	@level2type=N'COLUMN', @level2name=N'IF_VER'
GO

/* 채널_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'채널_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IF_CHNL', 
	@level2type=N'COLUMN', @level2name=N'CHNL_CD'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IF_CHNL', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IF_CHNL', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IF_CHNL', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IF_CHNL', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IF_CHNL', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IF_CHNL', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 인터페이스_채널 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인터페이스_채널 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IF_CHNL', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_IF_CHNL'
GO

/* 인터페이스_채널 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인터페이스_채널 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IF_CHNL', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_IF_CHNL'
GO

/* 인터페이스_키 */
CREATE TABLE [VECTORX_IF_KEY] (
	[IF_ID] [VARCHAR](20) NOT NULL,  /* 인터페이스_아이디 */
	[IF_VER] [VARCHAR](10) NOT NULL,  /* 인터페이스_버전 */
	[IF_KEY] [VARCHAR](50) NOT NULL,  /* 인터페이스_키 */
	[IF_VAL] [VARCHAR](1000),  /* 인터페이스_값 */
	[RMK] [VARCHAR](1000),  /* 비고 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 인터페이스_키 Primary key */
ALTER TABLE [VECTORX_IF_KEY]
	ADD
		CONSTRAINT [PK_VECTORX_IF_KEY]
		PRIMARY KEY NONCLUSTERED (
			[IF_ID] ASC, 
			[IF_VER] ASC, 
			[IF_KEY] ASC
		)
GO

/* 인터페이스_키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인터페이스_키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IF_KEY'
GO

/* 인터페이스_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인터페이스_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IF_KEY', 
	@level2type=N'COLUMN', @level2name=N'IF_ID'
GO

/* 인터페이스_버전 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인터페이스_버전', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IF_KEY', 
	@level2type=N'COLUMN', @level2name=N'IF_VER'
GO

/* 인터페이스_키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인터페이스_키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IF_KEY', 
	@level2type=N'COLUMN', @level2name=N'IF_KEY'
GO

/* 인터페이스_값 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인터페이스_값', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IF_KEY', 
	@level2type=N'COLUMN', @level2name=N'IF_VAL'
GO

/* 비고 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'비고', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IF_KEY', 
	@level2type=N'COLUMN', @level2name=N'RMK'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IF_KEY', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IF_KEY', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IF_KEY', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IF_KEY', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IF_KEY', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IF_KEY', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 인터페이스_키 Primary key */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인터페이스_키 Primary key', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IF_KEY', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_IF_KEY'
GO

/* 인터페이스_키 Primary key */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인터페이스_키 Primary key', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IF_KEY', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_IF_KEY'
GO

/* 토큰 */
CREATE TABLE [VECTORX_TOKEN] (
	[REFRESH_TOKEN] [VARCHAR](255) NOT NULL,  /* 리프레시_토큰 */
	[EXP_DTTM] [DATETIME],  /* 만료_일시 */
	[ACC_TOKEN] [TEXT],  /* 접근_토큰 */
	[CHNL_CD] [VARCHAR](20),  /* 채널_코드 */
	[USR_ID] [VARCHAR](20),  /* 사용자_아이디 */
	[USE_CNT] [NUMERIC],  /* 사용_건수 */
	[DVC_ID] [VARCHAR](50),  /* 디바이스_아이디 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 토큰 기본키 */
ALTER TABLE [VECTORX_TOKEN]
	ADD
		CONSTRAINT [PK_VECTORX_TOKEN]
		PRIMARY KEY NONCLUSTERED (
			[REFRESH_TOKEN] ASC
		)
GO

/* 토큰 인덱스 */
CREATE NONCLUSTERED INDEX [IX_VECTORX_TOKEN] ON [VECTORX_TOKEN] (
	[EXP_DTTM] ASC
)

/* 토큰 인덱스2 */
CREATE NONCLUSTERED INDEX [IX_VECTORX_TOKEN2] ON [VECTORX_TOKEN] (
	[USR_ID] ASC
)

/* 토큰 인덱스3 */
CREATE NONCLUSTERED INDEX [IX_VECTORX_TOKEN3] ON [VECTORX_TOKEN] (
	[REG_USR_IP] ASC
)
GO

/* 토큰 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'토큰', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_TOKEN'
GO

/* 리프레시_토큰 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'리프레시_토큰', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_TOKEN', 
	@level2type=N'COLUMN', @level2name=N'REFRESH_TOKEN'
GO

/* 만료_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'만료_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_TOKEN', 
	@level2type=N'COLUMN', @level2name=N'EXP_DTTM'
GO

/* 접근_토큰 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'접근_토큰', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_TOKEN', 
	@level2type=N'COLUMN', @level2name=N'ACC_TOKEN'
GO

/* 채널_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'채널_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_TOKEN', 
	@level2type=N'COLUMN', @level2name=N'CHNL_CD'
GO

/* 사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_TOKEN', 
	@level2type=N'COLUMN', @level2name=N'USR_ID'
GO

/* 사용_건수 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용_건수', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_TOKEN', 
	@level2type=N'COLUMN', @level2name=N'USE_CNT'
GO

/* 디바이스_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'디바이스_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_TOKEN', 
	@level2type=N'COLUMN', @level2name=N'DVC_ID'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_TOKEN', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_TOKEN', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_TOKEN', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_TOKEN', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_TOKEN', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_TOKEN', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 토큰 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'토큰 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_TOKEN', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_TOKEN'
GO

/* 토큰 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'토큰 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_TOKEN', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_TOKEN'
GO

/* 토큰 인덱스 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'토큰 인덱스', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_TOKEN', 
	@level2type=N'INDEX', @level2name=N'IX_VECTORX_TOKEN'
GO

/* 토큰 인덱스2 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'토큰 인덱스2', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_TOKEN', 
	@level2type=N'INDEX', @level2name=N'IX_VECTORX_TOKEN2'
GO

/* 토큰 인덱스3 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'토큰 인덱스3', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_TOKEN', 
	@level2type=N'INDEX', @level2name=N'IX_VECTORX_TOKEN3'
GO

/* 파일 */
CREATE TABLE [VECTORX_FILES] (
	[FILE_ID] [VARCHAR](50) NOT NULL,  /* 파일_아이디 */
	[FILE_NO] [NUMERIC] NOT NULL,  /* 파일_번호 */
	[MNU_ID] [NUMERIC],  /* 메뉴_아이디 */
	[FILE_GRP_ID] [VARCHAR](50) NOT NULL,  /* 파일_그룹_아이디 */
	[FILE_NM] [VARCHAR](500),  /* 파일_명 */
	[ORG_FILE_NM] [VARCHAR](500),  /* 기존_파일_명 */
	[FILE_DESC] [VARCHAR](1000),  /* 파일_설명 */
	[FILE_FMT_CONT] [VARCHAR](1000),  /* 파일_형식_내용 */
	[SV_PATH] [VARCHAR](1000),  /* 저장_경로 */
	[FILE_SZ] [VARCHAR](10),  /* 파일_크기 */
	[FILE_CRYT_METH_CD] [CHAR](2) NOT NULL DEFAULT '00',  /* 파일_암호화_방식_코드 */
	[FILE_CRYT_KEY_VAL] [VARCHAR](1000),  /* 파일_암호화_키_값 */
	[FILE_ACC_URL] [VARCHAR](1000),  /* 파일_접근_URL */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 파일 기본키 */
ALTER TABLE [VECTORX_FILES]
	ADD
		CONSTRAINT [PK_VECTORX_FILES]
		PRIMARY KEY NONCLUSTERED (
			[FILE_ID] ASC, 
			[FILE_NO] ASC
		)
GO

/* 파일 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'파일', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILES'
GO

/* 파일_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'파일_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILES', 
	@level2type=N'COLUMN', @level2name=N'FILE_ID'
GO

/* 파일_번호 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'파일_번호', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILES', 
	@level2type=N'COLUMN', @level2name=N'FILE_NO'
GO

/* 메뉴_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'메뉴_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILES', 
	@level2type=N'COLUMN', @level2name=N'MNU_ID'
GO

/* 파일_그룹_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'파일_그룹_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILES', 
	@level2type=N'COLUMN', @level2name=N'FILE_GRP_ID'
GO

/* 파일_명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'파일_명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILES', 
	@level2type=N'COLUMN', @level2name=N'FILE_NM'
GO

/* 기존_파일_명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'기존_파일_명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILES', 
	@level2type=N'COLUMN', @level2name=N'ORG_FILE_NM'
GO

/* 파일_설명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'파일_설명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILES', 
	@level2type=N'COLUMN', @level2name=N'FILE_DESC'
GO

/* 파일_형식_내용 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'파일_형식_내용', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILES', 
	@level2type=N'COLUMN', @level2name=N'FILE_FMT_CONT'
GO

/* 저장_경로 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'저장_경로', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILES', 
	@level2type=N'COLUMN', @level2name=N'SV_PATH'
GO

/* 파일_크기 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'파일_크기', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILES', 
	@level2type=N'COLUMN', @level2name=N'FILE_SZ'
GO

/* 파일_암호화_방식_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'파일_암호화_방식_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILES', 
	@level2type=N'COLUMN', @level2name=N'FILE_CRYT_METH_CD'
GO

/* 파일_암호화_키_값 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'파일_암호화_키_값', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILES', 
	@level2type=N'COLUMN', @level2name=N'FILE_CRYT_KEY_VAL'
GO

/* 파일_접근_URL */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'파일_접근_URL', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILES', 
	@level2type=N'COLUMN', @level2name=N'FILE_ACC_URL'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILES', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILES', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILES', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILES', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILES', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILES', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 파일 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'파일 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILES', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_FILES'
GO

/* 파일 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'파일 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILES', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_FILES'
GO

/* 파일_그룹 */
CREATE TABLE [VECTORX_FILE_GRP] (
	[FILE_GRP_ID] [VARCHAR](50) NOT NULL,  /* 파일_그룹_아이디 */
	[FILE_GRP_NM] [VARCHAR](50),  /* 파일_그룹_명 */
	[SV_PATH] [VARCHAR](1000),  /* 저장_경로 */
	[MAX_SZ] [BIGINT],  /* 최대_크기 */
	[EXTEN_LMT] [VARCHAR](100),  /* 확장자_제한 */
	[DIR_STRUCT_CD] [VARCHAR](20) NOT NULL DEFAULT 'RT_DIR',  /* 디렉토리_구조_코드 */
	[FILE_NM_SV_METH_CD] [VARCHAR](20) NOT NULL,  /* 파일_명_저장_방식_코드 */
	[FILE_CRYT_METH_CD] [CHAR](2) NOT NULL DEFAULT '00',  /* 파일_암호화_방식_코드 */
	[WEB_DEF_URL] [VARCHAR](1000),  /* 웹_기본_URL */
	[USE_YN] [CHAR](1),  /* 사용_여부 */
	[DEL_YN] [CHAR](1) DEFAULT 'N',  /* 삭제_여부 */
	[TMP_UPL_USE_YN] [CHAR](1) NOT NULL DEFAULT 'N',  /* 임시_업로드_사용_여부 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_IP] [VARCHAR](20),  /* 수정_사용자_아이피 */
	[UPD_USR_ID] [VARCHAR](20) /* 수정_사용자_아이디 */
)
GO

/* 파일_그룹 기본키 */
ALTER TABLE [VECTORX_FILE_GRP]
	ADD
		CONSTRAINT [PK_VECTORX_FILE_GRP]
		PRIMARY KEY NONCLUSTERED (
			[FILE_GRP_ID] ASC
		)
GO

/* 파일_그룹 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'파일_그룹', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILE_GRP'
GO

/* 파일_그룹_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'파일_그룹_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILE_GRP', 
	@level2type=N'COLUMN', @level2name=N'FILE_GRP_ID'
GO

/* 파일_그룹_명 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'파일_그룹_명', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILE_GRP', 
	@level2type=N'COLUMN', @level2name=N'FILE_GRP_NM'
GO

/* 저장_경로 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'저장_경로', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILE_GRP', 
	@level2type=N'COLUMN', @level2name=N'SV_PATH'
GO

/* 최대_크기 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'최대_크기', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILE_GRP', 
	@level2type=N'COLUMN', @level2name=N'MAX_SZ'
GO

/* 확장자_제한 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'확장자_제한', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILE_GRP', 
	@level2type=N'COLUMN', @level2name=N'EXTEN_LMT'
GO

/* 디렉토리_구조_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'디렉토리_구조_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILE_GRP', 
	@level2type=N'COLUMN', @level2name=N'DIR_STRUCT_CD'
GO

/* 파일_명_저장_방식_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'파일_명_저장_방식_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILE_GRP', 
	@level2type=N'COLUMN', @level2name=N'FILE_NM_SV_METH_CD'
GO

/* 파일_암호화_방식_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'파일_암호화_방식_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILE_GRP', 
	@level2type=N'COLUMN', @level2name=N'FILE_CRYT_METH_CD'
GO

/* 웹_기본_URL */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'웹_기본_URL', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILE_GRP', 
	@level2type=N'COLUMN', @level2name=N'WEB_DEF_URL'
GO

/* 사용_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILE_GRP', 
	@level2type=N'COLUMN', @level2name=N'USE_YN'
GO

/* 삭제_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'삭제_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILE_GRP', 
	@level2type=N'COLUMN', @level2name=N'DEL_YN'
GO

/* 임시_업로드_사용_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'임시_업로드_사용_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILE_GRP', 
	@level2type=N'COLUMN', @level2name=N'TMP_UPL_USE_YN'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILE_GRP', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILE_GRP', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILE_GRP', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILE_GRP', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILE_GRP', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILE_GRP', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 파일_그룹 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'파일_그룹 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILE_GRP', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_FILE_GRP'
GO

/* 파일_그룹 기본키 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'파일_그룹 기본키', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_FILE_GRP', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_FILE_GRP'
GO

/* 인터페이스_요청_제어 */
CREATE TABLE [VECTORX_IFS_REQ_CTRL] (
	[REQ_CTRL_ID] [NUMERIC] NOT NULL,  /* 요청_제어_아이디 */
	[SYS_CD] [VARCHAR](20) NOT NULL,  /* 시스템_코드 */
	[TITLE] [VARCHAR](100) NOT NULL,  /* 제목 */
	[RMK] [VARCHAR](1000),  /* 비고 */
	[URL_PTRN_VAL] [VARCHAR](1000) NOT NULL,  /* URL_패턴_값 */
	[USE_YN] [CHAR](1) NOT NULL,  /* 사용_여부 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 인터페이스_요청_제어 Primary key */
ALTER TABLE [VECTORX_IFS_REQ_CTRL]
	ADD
		CONSTRAINT [PK_VECTORX_IFS_REQ_CTRL]
		PRIMARY KEY NONCLUSTERED (
			[REQ_CTRL_ID] ASC
		)
GO

/* 인터페이스_요청_제어 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인터페이스_요청_제어', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_REQ_CTRL'
GO

/* 요청_제어_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'요청_제어_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_REQ_CTRL', 
	@level2type=N'COLUMN', @level2name=N'REQ_CTRL_ID'
GO

/* 시스템_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'시스템_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_REQ_CTRL', 
	@level2type=N'COLUMN', @level2name=N'SYS_CD'
GO

/* 제목 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'제목', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_REQ_CTRL', 
	@level2type=N'COLUMN', @level2name=N'TITLE'
GO

/* 비고 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'비고', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_REQ_CTRL', 
	@level2type=N'COLUMN', @level2name=N'RMK'
GO

/* URL_패턴_값 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'URL_패턴_값', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_REQ_CTRL', 
	@level2type=N'COLUMN', @level2name=N'URL_PTRN_VAL'
GO

/* 사용_여부 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'사용_여부', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_REQ_CTRL', 
	@level2type=N'COLUMN', @level2name=N'USE_YN'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_REQ_CTRL', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_REQ_CTRL', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_REQ_CTRL', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_REQ_CTRL', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_REQ_CTRL', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_REQ_CTRL', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 인터페이스_요청_제어 Primary key */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인터페이스_요청_제어 Primary key', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_REQ_CTRL', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_IFS_REQ_CTRL'
GO

/* 인터페이스_요청_제어 Primary key */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인터페이스_요청_제어 Primary key', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_REQ_CTRL', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_IFS_REQ_CTRL'
GO

/* 인터페이스_요청_제어_채널 */
CREATE TABLE [VECTORX_IFS_REQ_CTRL_CHNL] (
	[REQ_CTRL_ID] [NUMERIC] NOT NULL,  /* 요청_제어_아이디 */
	[CHNL_CD] [VARCHAR](20) NOT NULL,  /* 채널_코드 */
	[CTRL_MIN] [NUMERIC] NOT NULL,  /* 제어_분 */
	[MAX_REQ_NUM] [NUMERIC] NOT NULL,  /* 최대_요청_수 */
	[REG_DTTM] [DATETIME] NOT NULL,  /* 등록_일시 */
	[REG_USR_ID] [VARCHAR](20),  /* 등록_사용자_아이디 */
	[REG_USR_IP] [VARCHAR](20),  /* 등록_사용자_아이피 */
	[UPD_DTTM] [DATETIME],  /* 수정_일시 */
	[UPD_USR_ID] [VARCHAR](20),  /* 수정_사용자_아이디 */
	[UPD_USR_IP] [VARCHAR](20) /* 수정_사용자_아이피 */
)
GO

/* 인터페이스_요청_제어_채널 Primary key */
ALTER TABLE [VECTORX_IFS_REQ_CTRL_CHNL]
	ADD
		CONSTRAINT [PK_VECTORX_IFS_REQ_CTRL_CHNL]
		PRIMARY KEY NONCLUSTERED (
			[REQ_CTRL_ID] ASC, 
			[CHNL_CD] ASC
		)
GO

/* 인터페이스_요청_제어_채널 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인터페이스_요청_제어_채널', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_REQ_CTRL_CHNL'
GO

/* 요청_제어_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'요청_제어_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_REQ_CTRL_CHNL', 
	@level2type=N'COLUMN', @level2name=N'REQ_CTRL_ID'
GO

/* 채널_코드 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'채널_코드', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_REQ_CTRL_CHNL', 
	@level2type=N'COLUMN', @level2name=N'CHNL_CD'
GO

/* 제어_분 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'제어_분', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_REQ_CTRL_CHNL', 
	@level2type=N'COLUMN', @level2name=N'CTRL_MIN'
GO

/* 최대_요청_수 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'최대_요청_수', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_REQ_CTRL_CHNL', 
	@level2type=N'COLUMN', @level2name=N'MAX_REQ_NUM'
GO

/* 등록_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_REQ_CTRL_CHNL', 
	@level2type=N'COLUMN', @level2name=N'REG_DTTM'
GO

/* 등록_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_REQ_CTRL_CHNL', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_ID'
GO

/* 등록_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'등록_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_REQ_CTRL_CHNL', 
	@level2type=N'COLUMN', @level2name=N'REG_USR_IP'
GO

/* 수정_일시 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_일시', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_REQ_CTRL_CHNL', 
	@level2type=N'COLUMN', @level2name=N'UPD_DTTM'
GO

/* 수정_사용자_아이디 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이디', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_REQ_CTRL_CHNL', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_ID'
GO

/* 수정_사용자_아이피 */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'수정_사용자_아이피', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_REQ_CTRL_CHNL', 
	@level2type=N'COLUMN', @level2name=N'UPD_USR_IP'
GO

/* 인터페이스_요청_제어_채널 Primary key */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인터페이스_요청_제어_채널 Primary key', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_REQ_CTRL_CHNL', 
	@level2type=N'CONSTRAINT', @level2name=N'PK_VECTORX_IFS_REQ_CTRL_CHNL'
GO

/* 인터페이스_요청_제어_채널 Primary key */
EXEC sp_addextendedproperty 
	@name=N'MS_Description', @value=N'인터페이스_요청_제어_채널 Primary key', 
	@level0type=N'SCHEMA', @level0name=N'dbo', 
	@level1type=N'TABLE', @level1name=N'VECTORX_IFS_REQ_CTRL_CHNL', 
	@level2type=N'INDEX', @level2name=N'PK_VECTORX_IFS_REQ_CTRL_CHNL'
GO