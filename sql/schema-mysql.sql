-- 1. 시퀀스를 사용할 테이블 생성
CREATE TABLE SEQUENCES 
(
NAME VARCHAR(32),
CURRVAL BIGINT UNSIGNED
)
ENGINE=InnoDB
;

-- 2. 시퀀스를 생성할 프로시저 생성
DELIMITER $$
	CREATE PROCEDURE `CreateSequence` (IN the_name text)
    MODIFIES SQL DATA
    DETERMINISTIC
    BEGIN
		DELETE FROM sequences WHERE name = the_name;
        INSERT INTO sequences VALUES(the_name, 0);
	END;

-- 3. 생성한 시퀀스의 다음값을 가져오는 함수 생성
DELIMITER $$
	CREATE FUNCTION `nextval` (the_name VARCHAR(32))
	RETURNS BIGINT UNSIGNED
	MODIFIES SQL DATA
	DETERMINISTIC
	BEGIN
		DECLARE ret BIGINT UNSIGNED;
		UPDATE sequences SET currval = currval + 1 WHERE name = the_name;
		SELECT currval INTO ret FROM sequences WHERE name = the_name LIMIT 1;
		RETURN ret;
END
;


-- 4. 시퀀스를 생성할 프로시저 실행
CALL CreateSequence('SQ_VECTORX_AUTH_GRP_HIST_01') ;

/* SQLINES DEMO *** T_01 */
CALL CreateSequence('SQ_VECTORX_AUTH_HIST_01') 
;

/* SQ_VECTORX_AUTH_01 */
CALL CreateSequence('SQ_VECTORX_AUTH_01') 
;

/* SQLINES DEMO *** _01 */
CALL CreateSequence('SQ_VECTORX_IFS_HIST_01') 
;

/* SQ_VECTORX_MNU_01 */
CALL CreateSequence('SQ_VECTORX_MNU_01') 
;

/* SQLINES DEMO ***  */
CALL CreateSequence('SQ_VECTORX_POSTS_01') 
;

/* SQLINES DEMO *** _HIST_01 */
CALL CreateSequence('SQ_VECTORX_DBMS_QRY_HIST_01') 
;

/* SQLINES DEMO *** 01 */
CALL CreateSequence('SQ_VECTORX_USR_APV_01') 
;

/* SQLINES DEMO *** HIST_01 */
CALL CreateSequence('SQ_VECTORX_MNU_ACC_HIST_01') 
;

/* SQLINES DEMO *** HIST_01 */
CALL CreateSequence('SQ_VECTORX_MNU_FNC_ACC_HIST_01') 
;

/* SQLINES DEMO *** ST_01 */
CALL CreateSequence('SQ_VECTORX_LOGIN_HIST_01') 
;

/* SQLINES DEMO *** 01 */
CALL CreateSequence('SQ_VECTORX_APP_STT_01') 
;

/* SQLINES DEMO *** HIST_01 */
CALL CreateSequence('SQ_VECTORX_PRV_ACC_HIST_01') 
;


-- 공통_코드
CREATE TABLE `dbo`.`VECTORX_CMM_CD` (
	`GRP_CD`     VARCHAR(20)   NOT NULL COMMENT '코드를 관리하는 코드 그룹 문자', -- 그룹_코드
	`DTL_CD`     VARCHAR(20)   NOT NULL COMMENT '그룹코드 값에 따른 코드 정보', -- 상세_코드
	`CD_NM`      VARCHAR(50)   NULL     COMMENT '코드_명', -- 코드_명
	`CD_DESC`    VARCHAR(1000) NULL     COMMENT '코드_설명', -- 코드_설명
	`UPR_GRP_CD` VARCHAR(20)   NULL     COMMENT '상위_그룹_코드', -- 상위_그룹_코드
	`UPR_DTL_CD` VARCHAR(20)   NULL     COMMENT '상위_상세_코드', -- 상위_상세_코드
	`SRT_NO`     NUMERIC       NULL     DEFAULT 0 COMMENT '정렬_번호', -- 정렬_번호
	`USE_YN`     CHAR(1)       NULL     COMMENT '사용_여부', -- 사용_여부
	`RMK`        VARCHAR(1000) NULL     COMMENT '비고', -- 비고
	`ETC1`       VARCHAR(50)   NULL     COMMENT '기타1', -- 기타1
	`ETC2`       VARCHAR(50)   NULL     COMMENT '기타2', -- 기타2
	`ETC3`       VARCHAR(50)   NULL     COMMENT '기타3', -- 기타3
	`ETC4`       VARCHAR(50)   NULL     COMMENT '기타4', -- 기타4
	`ETC5`       VARCHAR(50)   NULL     COMMENT '기타5', -- 기타5
	`LCLS_CD`    VARCHAR(10)   NULL     COMMENT '대분류_코드', -- 대분류_코드
	`LCLS_NM`    VARCHAR(100)  NULL     COMMENT '대분류_명', -- 대분류_명
	`MCLS_CD`    VARCHAR(10)   NULL     COMMENT '중분류_코드', -- 중분류_코드
	`MCLS_NM`    VARCHAR(100)  NULL     COMMENT '중분류_명', -- 중분류_명
	`GRP_NM`     VARCHAR(100)  NULL     COMMENT '그룹_명', -- 그룹_명
	`CD_LEN`     NUMERIC       NULL     COMMENT '코드_길이', -- 코드_길이
	`REG_DTTM`   DATETIME      NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID` VARCHAR(20)   NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP` VARCHAR(20)   NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`   DATETIME      NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID` VARCHAR(20)   NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP` VARCHAR(20)   NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '공통_코드';

-- 공통_코드
ALTER TABLE `dbo`.`VECTORX_CMM_CD`
	ADD CONSTRAINT `PK_VECTORX_CMM_CD` -- 공통_코드 기본키
		PRIMARY KEY (
			`GRP_CD`, -- 그룹_코드
			`DTL_CD`  -- 상세_코드
		);

-- 메뉴
CREATE TABLE `dbo`.`VECTORX_MNU` (
	`MNU_ID`         NUMERIC       NOT NULL COMMENT '메뉴_아이디', -- 메뉴_아이디
	`UPR_MNU_ID`     NUMERIC       NULL     COMMENT '상위_메뉴_아이디', -- 상위_메뉴_아이디
	`PRO_ID_VAL`     VARCHAR(20)   NULL     COMMENT '프로그램_아이디_값', -- 프로그램_아이디_값
	`SYS_CD`         VARCHAR(20)   NULL     COMMENT '시스템_코드', -- 시스템_코드
	`MNU_NM`         VARCHAR(50)   NULL     COMMENT '메뉴_명', -- 메뉴_명
	`MNU_SRT_NO`     NUMERIC       NOT NULL DEFAULT 0 COMMENT '메뉴_정렬_번호', -- 메뉴_정렬_번호
	`MNU_URL`        VARCHAR(1000) NULL     COMMENT '메뉴_URL', -- 메뉴_URL
	`MNU_DESC`       VARCHAR(1000) NULL     COMMENT '메뉴_설명', -- 메뉴_설명
	`MNU_TY_CD`      CHAR(2)       NULL     COMMENT '메뉴_유형_코드', -- 메뉴_유형_코드
	`USE_YN`         CHAR(1)       NOT NULL COMMENT '사용_여부', -- 사용_여부
	`DEL_YN`         CHAR(1)       NULL     DEFAULT 'N' COMMENT '삭제_여부', -- 삭제_여부
	`MNU_STEP_NO`    NUMERIC       NOT NULL DEFAULT 1 COMMENT '메뉴_단계_번호', -- 메뉴_단계_번호
	`IP_LMT_YN`      CHAR(1)       NULL     DEFAULT 'N' COMMENT '아이피제한여부', -- 아이피제한여부
	`IP_LIST`        VARCHAR(1000) NULL     COMMENT '아이피_목록', -- 아이피_목록
	`PRV_VIEW_YN`    CHAR(1)       NULL     DEFAULT 'N' COMMENT '개인정보_조회_여부', -- 개인정보_조회_여부
	`DP_YN`          CHAR(1)       NULL     COMMENT '전시_여부', -- 전시_여부
	`AUTH_SCOP_CD`   CHAR(2)       NULL     COMMENT '권한_범위_코드', -- 권한_범위_코드
	`ICON_FILE_ID`   VARCHAR(50)   NULL     COMMENT '아이콘_파일_아이디', -- 아이콘_파일_아이디
	`MNU_GUIDE_CONT` TEXT          NULL     COMMENT '메뉴_가이드_내용', -- 메뉴_가이드_내용
	`MNU_DVC_SCOP_CD` CHAR(1)      NOT NULL DEFAULT 'A'  COMMENT '메뉴_디바이스_범위_코드', -- 메뉴_디바이스_범위_코드
	`REG_DTTM`       DATETIME      NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`     VARCHAR(20)   NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`     VARCHAR(20)   NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`       DATETIME      NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID`     VARCHAR(20)   NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP`     VARCHAR(20)   NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '메뉴';

-- 메뉴
ALTER TABLE `dbo`.`VECTORX_MNU`
	ADD CONSTRAINT `PK_VECTORX_MNU` -- 메뉴 기본키
		PRIMARY KEY (
			`MNU_ID` -- 메뉴_아이디
		);

-- 메뉴_기능
CREATE TABLE `dbo`.`VECTORX_MNU_FNC` (
	`MNU_ID`      NUMERIC     NOT NULL COMMENT '메뉴_아이디', -- 메뉴_아이디
	`FNC_ID`      VARCHAR(50) NOT NULL COMMENT '기능_아이디', -- 기능_아이디
	`FNC_NM`      VARCHAR(50) NULL     COMMENT '기능_명', -- 기능_명
	`PRV_VIEW_YN` CHAR(1)     NULL     DEFAULT 'N' COMMENT '개인정보_조회_여부', -- 개인정보_조회_여부
	`REG_DTTM`    DATETIME    NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`  VARCHAR(20) NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`  VARCHAR(20) NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`    DATETIME    NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID`  VARCHAR(20) NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP`  VARCHAR(20) NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '메뉴_기능';

-- 메뉴_기능
ALTER TABLE `dbo`.`VECTORX_MNU_FNC`
	ADD CONSTRAINT `PK_VECTORX_MNU_FNC` -- 메뉴_기능 기본키
		PRIMARY KEY (
			`MNU_ID`, -- 메뉴_아이디
			`FNC_ID`  -- 기능_아이디
		);

-- 권한
CREATE TABLE `dbo`.`VECTORX_AUTH` (
	`AUTH_ID`          NUMERIC       NOT NULL COMMENT '권한_아이디', -- 권한_아이디
	`AUTH_GRP_ID`      NUMERIC       NULL     COMMENT '권한_그룹_아이디', -- 권한_그룹_아이디
	`USR_ID`           VARCHAR(20)   NULL     COMMENT '사용자_아이디', -- 사용자_아이디
	`AUTH_TY_CD`       VARCHAR(20)   NULL     COMMENT '권한_유형_코드', -- 권한_유형_코드
	`ADD_ROL_LIST_VAL` VARCHAR(1000) NULL     COMMENT '추가_역할_목록_값', -- 추가_역할_목록_값
	`USE_SRT_DT`       VARCHAR(8)    NULL     COMMENT '사용_시작_일자', -- 사용_시작_일자
	`USE_END_DT`       VARCHAR(8)    NULL     COMMENT '사용_종료_일자', -- 사용_종료_일자
	`REG_DTTM`         DATETIME      NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`       VARCHAR(20)   NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`       VARCHAR(20)   NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`         DATETIME      NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID`       VARCHAR(20)   NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP`       VARCHAR(20)   NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '권한';

-- 권한
ALTER TABLE `dbo`.`VECTORX_AUTH`
	ADD CONSTRAINT `PK_VECTORX_AUTH` -- 권한 기본키
		PRIMARY KEY (
			`AUTH_ID` -- 권한_아이디
		);

-- 권한 인덱스
CREATE INDEX `IX_VECTORX_AUTH`
	ON `dbo`.`VECTORX_AUTH`( -- 권한
		`USE_SRT_DT` ASC -- 사용_시작_일자
	);

-- 권한 인덱스2
CREATE INDEX `IX_VECTORX_AUTH2`
	ON `dbo`.`VECTORX_AUTH`( -- 권한
		`USE_END_DT` ASC -- 사용_종료_일자
	);

-- 권한_그룹
CREATE TABLE `dbo`.`VECTORX_AUTH_GRP` (
	`AUTH_GRP_ID`        NUMERIC       NOT NULL COMMENT '권한_그룹_아이디', -- 권한_그룹_아이디
	`UPR_AUTH_GRP_ID`    NUMERIC       NULL     COMMENT '상위_권한_그룹_아이디', -- 상위_권한_그룹_아이디
	`AUTH_GRP_DV_VAL`    VARCHAR(10)   NULL     COMMENT '권한_그룹_구분_값', -- 권한_그룹_구분_값
	`AUTH_GRP_NM`        VARCHAR(100)  NULL     COMMENT '권한_그룹_명', -- 권한_그룹_명
	`SRT_NO`             NUMERIC       NULL     COMMENT '정렬_번호', -- 정렬_번호
	`AUTH_GRP_DESC`      VARCHAR(1000) NULL     COMMENT '권한_그룹_설명', -- 권한_그룹_설명
	`USE_YN`             CHAR(1)       NULL     COMMENT '사용_여부', -- 사용_여부
	`DEL_YN`             CHAR(1)       NULL     DEFAULT 'N' COMMENT '삭제_여부', -- 삭제_여부
	`PRV_TRT_YN`         CHAR(1)       NULL     DEFAULT 'N' COMMENT '개인정보_취급_여부', -- 개인정보_취급_여부
	`SYS_CD`             VARCHAR(20)   NULL     COMMENT '시스템_코드', -- 시스템_코드
	`APV_GRP_YN`         CHAR(1)       NULL     DEFAULT 'N' COMMENT '승인_그룹_여부', -- 승인_그룹_여부
	`APV_NEC_YN`         CHAR(1)       NULL     COMMENT '승인_필요_여부', -- 승인_필요_여부
	`AUTH_GRP_STEP_NO`   NUMERIC       NULL     COMMENT '권한_그룹_단계_번호', -- 권한_그룹_단계_번호
	`ADD_ROL_LIST_VAL`   VARCHAR(1000) NULL     COMMENT '추가_역할_목록_값', -- 추가_역할_목록_값
	`USE_DV_CD_LIST_VAL` VARCHAR(500)  NULL     COMMENT '사용_구분_코드_목록_값', -- 사용_구분_코드_목록_값
	`REG_DTTM`           DATETIME      NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`         VARCHAR(20)   NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`         VARCHAR(20)   NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`           DATETIME      NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID`         VARCHAR(20)   NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP`         VARCHAR(20)   NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '권한_그룹';

-- 권한_그룹
ALTER TABLE `dbo`.`VECTORX_AUTH_GRP`
	ADD CONSTRAINT `PK_VECTORX_AUTH_GRP` -- 권한_그룹 기본키
		PRIMARY KEY (
			`AUTH_GRP_ID` -- 권한_그룹_아이디
		);

-- 권한_그룹_사용자
CREATE TABLE `dbo`.`VECTORX_AUTH_GRP_USR` (
	`USR_ID`      VARCHAR(20) NOT NULL COMMENT '사용자_아이디', -- 사용자_아이디
	`AUTH_GRP_ID` NUMERIC     NOT NULL COMMENT '권한_그룹_아이디', -- 권한_그룹_아이디
	`REG_DTTM`    DATETIME    NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`  VARCHAR(20) NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`  VARCHAR(20) NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`    DATETIME    NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID`  VARCHAR(20) NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP`  VARCHAR(20) NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '권한_그룹_사용자';

-- 권한_그룹_사용자
ALTER TABLE `dbo`.`VECTORX_AUTH_GRP_USR`
	ADD CONSTRAINT `PK_VECTORX_AUTH_GRP_USR` -- 권한_그룹_사용자 기본키
		PRIMARY KEY (
			`USR_ID`,      -- 사용자_아이디
			`AUTH_GRP_ID`  -- 권한_그룹_아이디
		);

-- 사용자
CREATE TABLE `dbo`.`VECTORX_USR` (
	`USR_ID`           VARCHAR(20)   NOT NULL COMMENT '사용자_아이디', -- 사용자_아이디
	`USR_NM`           VARCHAR(50)   NULL     COMMENT '사용자_명', -- 사용자_명
	`DEPT_CD`          VARCHAR(20)   NULL     COMMENT '부서_코드', -- 부서_코드
	`DEPT_NM`          VARCHAR(50)   NULL     COMMENT '부서_명', -- 부서_명
	`PWD`              VARCHAR(500)  NULL     COMMENT '비밀번호', -- 비밀번호
	`PWD_LST_UPD_DTTM` DATETIME      NULL     COMMENT '비밀번호_최종_수정_일시', -- 비밀번호_최종_수정_일시
	`EMAIL`            VARCHAR(40)   NULL     COMMENT '이메일', -- 이메일
	`PH_NO`            VARCHAR(20)   NULL     COMMENT '전화_번호', -- 전화_번호
	`CPH_NO`           VARCHAR(20)   NULL     COMMENT '핸드폰_번호', -- 핸드폰_번호
	`FAX_NO`           VARCHAR(20)   NULL     COMMENT '팩스_번호', -- 팩스_번호
	`USR_STT_CD`       VARCHAR(20)   NULL     COMMENT '사용자_상태_코드', -- 사용자_상태_코드
	`USE_SRT_DT`       VARCHAR(8)    NULL     COMMENT '사용_시작_일자', -- 사용_시작_일자
	`USE_END_DT`       VARCHAR(8)    NULL     COMMENT '사용_종료_일자', -- 사용_종료_일자
	`USE_DV_CD`        VARCHAR(2)    NULL     COMMENT '사용_구분_코드', -- 사용_구분_코드
	`LST_LOGIN_DTTM`   DATETIME      NULL     COMMENT '최종_로그인_일시', -- 최종_로그인_일시
	`LOGIN_FAIL_CNT`   NUMERIC       NULL     DEFAULT 0 COMMENT '로그인_실패_건수', -- 로그인_실패_건수
	`PWD_RESET_YN`     CHAR(1)       NULL     DEFAULT 'Y' COMMENT '비밀번호_초기화_여부', -- 비밀번호_초기화_여부
	`IP_LMT_YN`        CHAR(1)       NULL     DEFAULT 'N' COMMENT '아이피_제한_여부', -- 아이피_제한_여부
	`IP_LIST`          VARCHAR(1000) NULL     COMMENT '아이피_목록', -- 아이피_목록
	`EMP_NO`           VARCHAR(20)   NULL     COMMENT '사원_번호', -- 사원_번호
	`RMK`              VARCHAR(1000) NULL     COMMENT '비고', -- 비고
	`ORG_CD`           VARCHAR(20)   NULL     COMMENT '기관_코드', -- 기관_코드
	`APV_CMPL_YN`      CHAR(1)       NULL     COMMENT '승인_완료_여부', -- 승인_완료_여부
	`USR_APV_ID`       NUMERIC       NULL     COMMENT '사용자_승인_아이디', -- 사용자_승인_아이디
	`REG_DTTM`         DATETIME      NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`       VARCHAR(20)   NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`       VARCHAR(20)   NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`         DATETIME      NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID`       VARCHAR(20)   NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP`       VARCHAR(20)   NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '사용자';

-- 사용자
ALTER TABLE `dbo`.`VECTORX_USR`
	ADD CONSTRAINT `PK_VECTORX_USR` -- 사용자 기본키
		PRIMARY KEY (
			`USR_ID` -- 사용자_아이디
		);

-- 사용자_승인
CREATE TABLE `dbo`.`VECTORX_USR_APV` (
	`USR_APV_ID`       NUMERIC       NOT NULL COMMENT '사용자_승인_아이디', -- 사용자_승인_아이디
	`REQ_USR_ID`       VARCHAR(20)   NOT NULL COMMENT '요청_사용자_아이디', -- 요청_사용자_아이디
	`APV_USR_ID`       VARCHAR(20)   NULL     COMMENT '승인_사용자_아이디', -- 승인_사용자_아이디
	`USR_APV_TY_CD`    VARCHAR(20)   NULL     COMMENT '사용자 승인유형 코드가 08일 경우,
	 권한 그룹 승인 테이블에 승인 권한그룹별로 정보를 INSERT', -- 사용자_승인_유형_코드
	`APV_STT_CD`       VARCHAR(20)   NULL     COMMENT '승인_상태_코드', -- 승인_상태_코드
	`APV_REQ_DTTM`     DATETIME      NULL     COMMENT '승인_요청_일시', -- 승인_요청_일시
	`APV_PRC_DTTM`     DATETIME      NULL     COMMENT '승인_처리_일시', -- 승인_처리_일시
	`APV_REQ_OPN_CONT` VARCHAR(1000) NULL     COMMENT '승인_요청_의견_내용', -- 승인_요청_의견_내용
	`APV_OPN_CONT`     VARCHAR(1000) NULL     COMMENT '승인_의견_내용', -- 승인_의견_내용
	`REQ_USR_EMAIL`    VARCHAR(40)   NULL     COMMENT '요청_사용자_이메일', -- 요청_사용자_이메일
	`REQ_USR_DEPT_NM`  VARCHAR(50)   NULL     COMMENT '요청_사용자_부서_명', -- 요청_사용자_부서_명
	`REQ_USR_NM`       VARCHAR(50)   NULL     COMMENT '요청_사용자_명', -- 요청_사용자_명
	`ADD_INF_VAL`      VARCHAR(4000) NULL     COMMENT '추가_정보_값', -- 추가_정보_값
	`REG_DTTM`         DATETIME      NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`       VARCHAR(20)   NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`       VARCHAR(20)   NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`         DATETIME      NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID`       VARCHAR(20)   NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP`       VARCHAR(20)   NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '사용자_승인';

-- 사용자_승인
ALTER TABLE `dbo`.`VECTORX_USR_APV`
	ADD CONSTRAINT `PK_VECTORX_USR_APV` -- 사용자_승인 기본키
		PRIMARY KEY (
			`USR_APV_ID` -- 사용자_승인_아이디
		);

-- 사용자_승인 인덱스
CREATE INDEX `IX_VECTORX_USR_APV`
	ON `dbo`.`VECTORX_USR_APV`( -- 사용자_승인
		`USR_APV_TY_CD` ASC -- 사용자_승인_유형_코드
	);

-- 사용자_승인 인덱스2
CREATE INDEX `IX_VECTORX_USR_APV2`
	ON `dbo`.`VECTORX_USR_APV`( -- 사용자_승인
		`APV_STT_CD` ASC -- 승인_상태_코드
	);

-- 사용자_승인 인덱스3
CREATE INDEX `IX_VECTORX_USR_APV3`
	ON `dbo`.`VECTORX_USR_APV`( -- 사용자_승인
		`APV_REQ_DTTM` ASC -- 승인_요청_일시
	);

-- 로그인_이력
CREATE TABLE `dbo`.`VECTORX_LOGIN_HIST` (
	`LOGIN_HIST_ID` NUMERIC     NOT NULL COMMENT '로그인_이력_아이디', -- 로그인_이력_아이디
	`USR_ID`        VARCHAR(20) NULL     COMMENT '사용자_아이디', -- 사용자_아이디
	`USR_KEY`       VARCHAR(20) NULL     COMMENT '사용자_키', -- 사용자_키
	`SYS_CD`        VARCHAR(20) NULL     COMMENT '시스템_코드', -- 시스템_코드
	`USR_NM`        VARCHAR(50) NULL     COMMENT '사용자_명', -- 사용자_명
	`ACC_IP`        VARCHAR(20) NULL     COMMENT '접근_아이피', -- 접근_아이피
	`DEPT_NM`       VARCHAR(50) NULL     COMMENT '부서_명', -- 부서_명
	`LOGIN_DTTM`    DATETIME    NOT NULL COMMENT '로그인_일시', -- 로그인_일시
	`LOGOT_DTTM`    DATETIME    NULL     COMMENT '로그아웃_일시', -- 로그아웃_일시
	`RES_CD_VAL`    VARCHAR(10) NULL     COMMENT '응답_코드_값', -- 응답_코드_값
	`PROC_ID`       VARCHAR(50) NULL     COMMENT '프로세스_아이디', -- 프로세스_아이디
	`REQ_ID`        VARCHAR(50) NULL     COMMENT '요청_아이디', -- 요청_아이디
	`REG_DTTM`      DATETIME    NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`    VARCHAR(20) NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`    VARCHAR(20) NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`      DATETIME    NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID`    VARCHAR(20) NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP`    VARCHAR(20) NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '로그인_이력';

-- 로그인_이력
ALTER TABLE `dbo`.`VECTORX_LOGIN_HIST`
	ADD CONSTRAINT `PK_VECTORX_LOGIN_HIST` -- 로그인_이력 기본키
		PRIMARY KEY (
			`LOGIN_HIST_ID` -- 로그인_이력_아이디
		);

-- 로그인_이력 인덱스
CREATE INDEX `IX_VECTORX_LOGIN_HIST`
	ON `dbo`.`VECTORX_LOGIN_HIST`( -- 로그인_이력
		`USR_ID` ASC -- 사용자_아이디
	);

-- 로그인_이력 인덱스2
CREATE INDEX `IX_VECTORX_LOGIN_HIST2`
	ON `dbo`.`VECTORX_LOGIN_HIST`( -- 로그인_이력
		`USR_NM` ASC -- 사용자_명
	);

-- 로그인_이력 인덱스3
CREATE INDEX `IX_VECTORX_LOGIN_HIST3`
	ON `dbo`.`VECTORX_LOGIN_HIST`( -- 로그인_이력
		`LOGIN_DTTM` ASC -- 로그인_일시
	);

-- 로그인_이력 인덱스4
CREATE INDEX `IX_VECTORX_LOGIN_HIST4`
	ON `dbo`.`VECTORX_LOGIN_HIST`( -- 로그인_이력
		`LOGOT_DTTM` ASC -- 로그아웃_일시
	);

-- 권한_승인
CREATE TABLE `dbo`.`VECTORX_AUTH_APV` (
	`USR_APV_ID`          NUMERIC       NOT NULL COMMENT '사용자_승인_아이디', -- 사용자_승인_아이디
	`AUTH_ID`             NUMERIC       NOT NULL COMMENT '권한_아이디', -- 권한_아이디
	`ADD_ROL_LIST_VAL`    VARCHAR(1000) NULL     COMMENT '추가_역할_목록_값', -- 추가_역할_목록_값
	`USE_SRT_DT`          VARCHAR(8)    NULL     COMMENT '사용_시작_일자', -- 사용_시작_일자
	`USE_END_DT`          VARCHAR(8)    NULL     COMMENT '사용_종료_일자', -- 사용_종료_일자
	`USR_AUTH_GRP_DEL_YN` CHAR(1)       NULL     DEFAULT 'N' COMMENT '사용자_권한_그룹_삭제_여부', -- 사용자_권한_그룹_삭제_여부
	`REG_DTTM`            DATETIME      NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`          VARCHAR(20)   NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`          VARCHAR(20)   NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`            DATETIME      NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID`          VARCHAR(20)   NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP`          VARCHAR(20)   NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '권한_승인';

-- 권한_승인
ALTER TABLE `dbo`.`VECTORX_AUTH_APV`
	ADD CONSTRAINT `PK_VECTORX_AUTH_APV` -- 권한_승인 기본키
		PRIMARY KEY (
			`USR_APV_ID` -- 사용자_승인_아이디
		);

-- 메뉴_권한
CREATE TABLE `dbo`.`VECTORX_MNU_AUTH` (
	`MNU_ID`     NUMERIC     NOT NULL COMMENT '메뉴_아이디', -- 메뉴_아이디
	`AUTH_ID`    NUMERIC     NOT NULL COMMENT '권한_아이디', -- 권한_아이디
	`REG_DTTM`   DATETIME    NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID` VARCHAR(20) NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP` VARCHAR(20) NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`   DATETIME    NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID` VARCHAR(20) NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP` VARCHAR(20) NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '메뉴_권한';

-- 메뉴_권한
ALTER TABLE `dbo`.`VECTORX_MNU_AUTH`
	ADD CONSTRAINT `PK_VECTORX_MNU_AUTH` -- 메뉴_권한 기본키
		PRIMARY KEY (
			`MNU_ID`,  -- 메뉴_아이디
			`AUTH_ID`  -- 권한_아이디
		);

-- 메뉴_권한_이력
CREATE TABLE `dbo`.`VECTORX_MNU_AUTH_HIST` (
	`AUTH_HIST_ID` NUMERIC     NOT NULL COMMENT '권한_이력_아이디', -- 권한_이력_아이디
	`MNU_ID`       NUMERIC     NOT NULL COMMENT '메뉴_아이디', -- 메뉴_아이디
	`AUTH_ID`      NUMERIC     NOT NULL COMMENT '권한_아이디', -- 권한_아이디
	`WORK_DV_CD`   CHAR(1)     NULL     COMMENT '업무_구분_코드', -- 업무_구분_코드
	`REG_DTTM`     DATETIME    NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`   VARCHAR(20) NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`   VARCHAR(20) NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`     DATETIME    NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID`   VARCHAR(20) NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP`   VARCHAR(20) NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '메뉴_권한_이력';

-- 메뉴_권한_이력
ALTER TABLE `dbo`.`VECTORX_MNU_AUTH_HIST`
	ADD CONSTRAINT `PK_VECTORX_MNU_AUTH_HIST` -- 메뉴_권한_이력 기본키
		PRIMARY KEY (
			`AUTH_HIST_ID`, -- 권한_이력_아이디
			`MNU_ID`,       -- 메뉴_아이디
			`AUTH_ID`       -- 권한_아이디
		);

-- 메뉴_권한_이력 인덱스
CREATE INDEX `IX_VECTORX_MNU_AUTH_HIST`
	ON `dbo`.`VECTORX_MNU_AUTH_HIST`( -- 메뉴_권한_이력
		`REG_DTTM` ASC -- 등록_일시
	);

-- 메뉴_기능_권한_승인
CREATE TABLE `dbo`.`VECTORX_MNU_FNC_AUTH_APV` (
	`USR_APV_ID` NUMERIC     NOT NULL COMMENT '사용자_승인_아이디', -- 사용자_승인_아이디
	`MNU_ID`     NUMERIC     NOT NULL COMMENT '메뉴_아이디', -- 메뉴_아이디
	`FNC_ID`     VARCHAR(50) NOT NULL COMMENT '기능_아이디', -- 기능_아이디
	`REG_DTTM`   DATETIME    NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID` VARCHAR(20) NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP` VARCHAR(20) NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`   DATETIME    NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID` VARCHAR(20) NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP` VARCHAR(20) NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '메뉴_기능_권한_승인';

-- 메뉴_기능_권한_승인
ALTER TABLE `dbo`.`VECTORX_MNU_FNC_AUTH_APV`
	ADD CONSTRAINT `PK_VECTORX_MNU_FNC_AUTH_APV` -- 메뉴_기능_권한_승인 기본키
		PRIMARY KEY (
			`USR_APV_ID`, -- 사용자_승인_아이디
			`MNU_ID`,     -- 메뉴_아이디
			`FNC_ID`      -- 기능_아이디
		);

-- 메뉴_권한_승인
CREATE TABLE `dbo`.`VECTORX_MNU_AUTH_APV` (
	`USR_APV_ID` NUMERIC     NOT NULL COMMENT '사용자_승인_아이디', -- 사용자_승인_아이디
	`MNU_ID`     NUMERIC     NOT NULL COMMENT '메뉴_아이디', -- 메뉴_아이디
	`REG_DTTM`   DATETIME    NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID` VARCHAR(20) NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP` VARCHAR(20) NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`   DATETIME    NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID` VARCHAR(20) NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP` VARCHAR(20) NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '메뉴_권한_승인';

-- 메뉴_권한_승인
ALTER TABLE `dbo`.`VECTORX_MNU_AUTH_APV`
	ADD CONSTRAINT `PK_VECTORX_MNU_AUTH_APV` -- 메뉴_권한_승인 기본키
		PRIMARY KEY (
			`USR_APV_ID`, -- 사용자_승인_아이디
			`MNU_ID`      -- 메뉴_아이디
		);

-- 메뉴_기능_권한
CREATE TABLE `dbo`.`VECTORX_MNU_FNC_AUTH` (
	`MNU_ID`     NUMERIC     NOT NULL COMMENT '메뉴_아이디', -- 메뉴_아이디
	`FNC_ID`     VARCHAR(50) NOT NULL COMMENT '기능_아이디', -- 기능_아이디
	`AUTH_ID`    NUMERIC     NOT NULL COMMENT '권한_아이디', -- 권한_아이디
	`REG_DTTM`   DATETIME    NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID` VARCHAR(20) NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP` VARCHAR(20) NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`   DATETIME    NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID` VARCHAR(20) NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP` VARCHAR(20) NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '메뉴_기능_권한';

-- 메뉴_기능_권한
ALTER TABLE `dbo`.`VECTORX_MNU_FNC_AUTH`
	ADD CONSTRAINT `PK_VECTORX_MNU_FNC_AUTH` -- 메뉴_기능_권한 기본키
		PRIMARY KEY (
			`MNU_ID`,  -- 메뉴_아이디
			`FNC_ID`,  -- 기능_아이디
			`AUTH_ID`  -- 권한_아이디
		);

-- 메뉴_기능_권한_이력
CREATE TABLE `dbo`.`VECTORX_MNU_FNC_AUTH_HIST` (
	`AUTH_HIST_ID` NUMERIC     NOT NULL COMMENT '권한_이력_아이디', -- 권한_이력_아이디
	`MNU_ID`       NUMERIC     NOT NULL COMMENT '메뉴_아이디', -- 메뉴_아이디
	`FNC_ID`       VARCHAR(50) NOT NULL COMMENT '기능_아이디', -- 기능_아이디
	`AUTH_ID`      NUMERIC     NOT NULL COMMENT '권한_아이디', -- 권한_아이디
	`WORK_DV_CD`   CHAR(1)     NULL     COMMENT '업무_구분_코드', -- 업무_구분_코드
	`REG_DTTM`     DATETIME    NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`   VARCHAR(20) NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`   VARCHAR(20) NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`     DATETIME    NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID`   VARCHAR(20) NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP`   VARCHAR(20) NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '메뉴_기능_권한_이력';

-- 메뉴_기능_권한_이력
ALTER TABLE `dbo`.`VECTORX_MNU_FNC_AUTH_HIST`
	ADD CONSTRAINT `PK_VECTORX_MNU_FNC_AUTH_HIST` -- 메뉴_기능_권한_이력 기본키
		PRIMARY KEY (
			`AUTH_HIST_ID`, -- 권한_이력_아이디
			`MNU_ID`,       -- 메뉴_아이디
			`FNC_ID`,       -- 기능_아이디
			`AUTH_ID`       -- 권한_아이디
		);

-- 토큰
CREATE TABLE `dbo`.`VECTORX_TOKEN` (
	`REFRESH_TOKEN` VARCHAR(255) NOT NULL COMMENT '리프레시_토큰', -- 리프레시_토큰
	`EXP_DTTM`      DATETIME     NULL     COMMENT '만료_일시', -- 만료_일시
	`ACC_TOKEN`     TEXT         NULL     COMMENT '접근_토큰', -- 접근_토큰
	`CHNL_CD`       VARCHAR(20)  NULL     COMMENT '채널_코드', -- 채널_코드
	`USR_ID`        VARCHAR(20)  NULL     COMMENT '사용자_아이디', -- 사용자_아이디
	`USE_CNT`       NUMERIC      NULL     COMMENT '사용_건수', -- 사용_건수
	`DVC_ID`        VARCHAR(50)  NULL     COMMENT '디바이스_아이디', -- 디바이스_아이디
	`REG_DTTM`      DATETIME     NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`    VARCHAR(20)  NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`    VARCHAR(20)  NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`      DATETIME     NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID`    VARCHAR(20)  NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP`    VARCHAR(20)  NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '토큰';

-- 토큰
ALTER TABLE `dbo`.`VECTORX_TOKEN`
	ADD CONSTRAINT `PK_VECTORX_TOKEN` -- 토큰 기본키
		PRIMARY KEY (
			`REFRESH_TOKEN` -- 리프레시_토큰
		);

-- 토큰 인덱스
CREATE INDEX `IX_VECTORX_TOKEN`
	ON `dbo`.`VECTORX_TOKEN`( -- 토큰
		`EXP_DTTM` ASC -- 만료_일시
	);

-- 토큰 인덱스2
CREATE INDEX `IX_VECTORX_TOKEN2`
	ON `dbo`.`VECTORX_TOKEN`( -- 토큰
		`USR_ID` ASC -- 사용자_아이디
	);

-- 토큰 인덱스3
CREATE INDEX `IX_VECTORX_TOKEN3`
	ON `dbo`.`VECTORX_TOKEN`( -- 토큰
		`REG_USR_IP` ASC -- 등록_사용자_아이피
	);

-- 파일
CREATE TABLE `dbo`.`VECTORX_FILES` (
	`FILE_ID`           VARCHAR(50)   NOT NULL COMMENT '파일_아이디', -- 파일_아이디
	`FILE_NO`           NUMERIC       NOT NULL COMMENT '파일_번호', -- 파일_번호
	`MNU_ID`            NUMERIC       NULL     COMMENT '메뉴_아이디', -- 메뉴_아이디
	`FILE_GRP_ID`       VARCHAR(50)   NOT NULL COMMENT '파일_그룹_아이디', -- 파일_그룹_아이디
	`FILE_NM`           VARCHAR(500)  NULL     COMMENT '파일_명', -- 파일_명
	`ORG_FILE_NM`       VARCHAR(500)  NULL     COMMENT '기존_파일_명', -- 기존_파일_명
	`FILE_DESC`         VARCHAR(1000) NULL     COMMENT '파일_설명', -- 파일_설명
	`FILE_FMT_CONT`     VARCHAR(1000) NULL     COMMENT '파일_형식_내용', -- 파일_형식_내용
	`SV_PATH`           VARCHAR(1000) NULL     COMMENT '저장_경로', -- 저장_경로
	`FILE_SZ`           VARCHAR(10)   NULL     COMMENT '파일_크기', -- 파일_크기
	`FILE_CRYT_METH_CD` CHAR(2)       NOT NULL DEFAULT '00' COMMENT '파일_암호화_방식_코드', -- 파일_암호화_방식_코드
	`FILE_CRYT_KEY_VAL` VARCHAR(1000) NULL     COMMENT '파일_암호화_키_값', -- 파일_암호화_키_값
	`REG_DTTM`          DATETIME      NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`        VARCHAR(20)   NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`        VARCHAR(20)   NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`          DATETIME      NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID`        VARCHAR(20)   NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP`        VARCHAR(20)   NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '파일';

-- 파일
ALTER TABLE `dbo`.`VECTORX_FILES`
	ADD CONSTRAINT `PK_VECTORX_FILES` -- 파일 기본키
		PRIMARY KEY (
			`FILE_ID`, -- 파일_아이디
			`FILE_NO`  -- 파일_번호
		);

-- 파일_그룹
CREATE TABLE `dbo`.`VECTORX_FILE_GRP` (
	`FILE_GRP_ID`        VARCHAR(50)   NOT NULL COMMENT '파일_그룹_아이디', -- 파일_그룹_아이디
	`FILE_GRP_NM`        VARCHAR(50)   NULL     COMMENT '파일_그룹_명', -- 파일_그룹_명
	`SV_PATH`            VARCHAR(1000) NULL     COMMENT '저장_경로', -- 저장_경로
	`MAX_SZ`             BIGINT        NULL     COMMENT '최대_크기', -- 최대_크기
	`EXTEN_LMT`          VARCHAR(100)  NULL     COMMENT '확장자_제한', -- 확장자_제한
	`DIR_STRUCT_CD`      VARCHAR(20)   NOT NULL DEFAULT 'RT_DIR' COMMENT '디렉토리_구조_코드', -- 디렉토리_구조_코드
	`FILE_NM_SV_METH_CD` VARCHAR(20)   NOT NULL COMMENT '파일_명_저장_방식_코드', -- 파일_명_저장_방식_코드
	`FILE_CRYT_METH_CD`  CHAR(2)       NOT NULL DEFAULT '00' COMMENT '파일_암호화_방식_코드', -- 파일_암호화_방식_코드
	`WEB_DEF_URL`        VARCHAR(1000) NULL     COMMENT '웹_기본_URL', -- 웹_기본_URL
	`USE_YN`             CHAR(1)       NULL     COMMENT '사용_여부', -- 사용_여부
	`DEL_YN`             CHAR(1)       NULL     DEFAULT 'N' COMMENT '삭제_여부', -- 삭제_여부
	`REG_DTTM`           DATETIME      NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`         VARCHAR(20)   NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`         VARCHAR(20)   NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`           DATETIME      NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_IP`         VARCHAR(20)   NULL     COMMENT '수정_사용자_아이피', -- 수정_사용자_아이피
	`UPD_USR_ID`         VARCHAR(20)   NULL     COMMENT '수정_사용자_아이디' -- 수정_사용자_아이디
)
COMMENT '파일_그룹';

-- 파일_그룹
ALTER TABLE `dbo`.`VECTORX_FILE_GRP`
	ADD CONSTRAINT `PK_VECTORX_FILE_GRP` -- 파일_그룹 기본키
		PRIMARY KEY (
			`FILE_GRP_ID` -- 파일_그룹_아이디
		);

-- 게시
CREATE TABLE `dbo`.`VECTORX_POSTS` (
	`POST_ID`       NUMERIC       NOT NULL COMMENT '게시_아이디', -- 게시_아이디
	`UPR_POST_ID`   NUMERIC       NULL     COMMENT '상위_게시_아이디', -- 상위_게시_아이디
	`POST_GRP_ID`   VARCHAR(10)   NULL     COMMENT '게시_그룹_아이디', -- 게시_그룹_아이디
	`POST_DV_CD`    VARCHAR(20)   NULL     COMMENT '게시_구분_코드', -- 게시_구분_코드
	`TITLE`         VARCHAR(100)  NULL     COMMENT '제목', -- 제목
	`TOP_FIX_YN`    CHAR(1)       NULL     DEFAULT 'N' COMMENT '상단_고정_여부', -- 상단_고정_여부
	`CONT`          VARCHAR(1000) NULL     COMMENT '내용', -- 내용
	`USE_YN`        CHAR(1)       NULL     COMMENT '사용_여부', -- 사용_여부
	`REG_USR_NM`    VARCHAR(50)   NULL     COMMENT '등록_사용자_명', -- 등록_사용자_명
	`POST_SRT_DTTM` DATETIME      NULL     COMMENT '게시_시작_일시', -- 게시_시작_일시
	`POST_END_DTTM` DATETIME      NULL     COMMENT '게시_종료_일시', -- 게시_종료_일시
	`VIEW_CNT`      NUMERIC       NULL     COMMENT '조회_건수', -- 조회_건수
	`POP_POST_YN`   CHAR(1)       NULL     DEFAULT 'N' COMMENT '팝업_게시_여부', -- 팝업_게시_여부
	`FILE_ID`       VARCHAR(50)   NULL     COMMENT '파일_아이디', -- 파일_아이디
	`DEL_YN`        CHAR(1)       NULL     DEFAULT 'N' COMMENT '삭제_여부', -- 삭제_여부
	`REG_DTTM`      DATETIME      NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`    VARCHAR(20)   NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`    VARCHAR(20)   NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`      DATETIME      NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID`    VARCHAR(20)   NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP`    VARCHAR(20)   NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '게시';

-- 게시
ALTER TABLE `dbo`.`VECTORX_POSTS`
	ADD CONSTRAINT `PK_VECTORX_POSTS` -- 게시 기본키
		PRIMARY KEY (
			`POST_ID` -- 게시_아이디
		);

-- 게시_그룹
CREATE TABLE `dbo`.`VECTORX_POST_GRP` (
	`POST_GRP_ID`        VARCHAR(10) NOT NULL COMMENT '게시_그룹_아이디', -- 게시_그룹_아이디
	`FILE_GRP_ID`        VARCHAR(50) NULL     COMMENT '파일_그룹_아이디', -- 파일_그룹_아이디
	`POST_GRP_NM`        VARCHAR(50) NULL     COMMENT '게시_그룹_명', -- 게시_그룹_명
	`ATTCH_FILE_USE_YN`  CHAR(1)     NULL     COMMENT '첨부_파일_사용_여부', -- 첨부_파일_사용_여부
	`HTML_EDITOR_USE_YN` CHAR(1)     NULL     COMMENT 'HTML_에디터_사용_여부', -- HTML_에디터_사용_여부
	`POST_TERM_USE_YN`   CHAR(1)     NULL     COMMENT '게시_기간_사용_여부', -- 게시_기간_사용_여부
	`TOP_FIX_USE_YN`     CHAR(1)     NULL     DEFAULT 'N' COMMENT '상단_고정_사용_여부', -- 상단_고정_사용_여부
	`POP_USE_YN`         CHAR(1)     NULL     DEFAULT 'N' COMMENT '팝업_사용_여부', -- 팝업_사용_여부
	`POST_DV_USE_YN`     CHAR(1)     NULL     COMMENT '게시_구분_사용_여부', -- 게시_구분_사용_여부
	`POST__USE_YN`       CHAR(1)     NULL     COMMENT '게시_태그_사용_여부', -- 게시_태그_사용_여부
	`USE_YN`             CHAR(1)     NULL     COMMENT '사용_여부', -- 사용_여부
	`DEL_YN`             CHAR(1)     NULL     DEFAULT 'N' COMMENT '삭제_여부', -- 삭제_여부
	`REG_DTTM`           DATETIME    NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`         VARCHAR(20) NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`         VARCHAR(20) NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`           DATETIME    NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID`         VARCHAR(20) NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP`         VARCHAR(20) NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '게시_그룹';

-- 게시_그룹
ALTER TABLE `dbo`.`VECTORX_POST_GRP`
	ADD CONSTRAINT `PK_VECTORX_POST_GRP` -- 게시_그룹 기본키
		PRIMARY KEY (
			`POST_GRP_ID` -- 게시_그룹_아이디
		);

-- 인터페이스
CREATE TABLE `dbo`.`VECTORX_IFS` (
	`IF_ID`        VARCHAR(20)   NOT NULL COMMENT '인터페이스_아이디', -- 인터페이스_아이디
	`IF_VER`       VARCHAR(10)   NOT NULL COMMENT '인터페이스_버전', -- 인터페이스_버전
	`IF_NM`        VARCHAR(50)   NULL     COMMENT '인터페이스_명', -- 인터페이스_명
	`SYS_CD`       VARCHAR(20)   NULL     COMMENT '시스템_코드', -- 시스템_코드
	`USE_YN`       CHAR(1)       NULL     COMMENT '사용_여부', -- 사용_여부
	`RMK`          VARCHAR(1000) NULL     COMMENT '비고', -- 비고
	`IP_LMT_YN`    CHAR(1)       NULL     DEFAULT 'N' COMMENT '아이피_제한_여부', -- 아이피_제한_여부
	`IP_LIST`      VARCHAR(1000) NULL     COMMENT '아이피_목록', -- 아이피_목록
	`URL`          VARCHAR(1000) NULL     COMMENT 'URL', -- URL
	`HTTP_METH_CD` VARCHAR(20)   NULL     COMMENT 'HTTP_메소드_코드', -- HTTP_메소드_코드
	`AUTH_CTRL_YN` CHAR(1)       NULL     DEFAULT 'N' COMMENT '권한_제어_여부', -- 권한_제어_여부
	`IF_TY_CD`     VARCHAR(20)   NULL     COMMENT '인터페이스_유형_코드', -- 인터페이스_유형_코드
	`IF_LOG_TY_CD` VARCHAR(20)   NULL     COMMENT '인터페이스_로깅_유형_코드', -- 인터페이스_로깅_유형_코드
	`IF_DIR_CD`    VARCHAR(20)   NULL     COMMENT '인터페이스_방향_코드', -- 인터페이스_방향_코드
	`CHNL_LMT_YN`  CHAR(1)       NULL     DEFAULT 'N' COMMENT '채널_제한_여부', -- 채널_제한_여부
	`CERT_NEC_YN`  CHAR(1)       NULL     DEFAULT 'N' COMMENT '인증_필요_여부', -- 인증_필요_여부
	`REG_DTTM`     DATETIME      NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`   VARCHAR(20)   NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`   VARCHAR(20)   NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`     DATETIME      NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID`   VARCHAR(20)   NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP`   VARCHAR(20)   NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '인터페이스';

-- 인터페이스
ALTER TABLE `dbo`.`VECTORX_IFS`
	ADD CONSTRAINT `PK_VECTORX_IFS` -- 인터페이스 기본키
		PRIMARY KEY (
			`IF_ID`,  -- 인터페이스_아이디
			`IF_VER`  -- 인터페이스_버전
		);

-- 인터페이스_이력
CREATE TABLE `dbo`.`VECTORX_IFS_HIST` (
	`IF_HIST_ID`      NUMERIC       NOT NULL COMMENT '인터페이스_이력_아이디', -- 인터페이스_이력_아이디
	`PROC_ID`         VARCHAR(50)   NULL     COMMENT '프로세스_아이디', -- 프로세스_아이디
	`REQ_ID`          VARCHAR(50)   NULL     COMMENT '요청_아이디', -- 요청_아이디
	`REQ_NO`          NUMERIC       NULL     COMMENT '요청_번호', -- 요청_번호
	`IF_ID`           VARCHAR(20)   NULL     COMMENT '인터페이스_아이디', -- 인터페이스_아이디
	`IF_VER`          VARCHAR(10)   NULL     COMMENT '인터페이스_버전', -- 인터페이스_버전
	`IF_NM`           VARCHAR(50)   NULL     COMMENT '인터페이스_명', -- 인터페이스_명
	`SYS_CD`          VARCHAR(20)   NULL     COMMENT '시스템_코드', -- 시스템_코드
	`CHNL_CD`         VARCHAR(20)   NULL     COMMENT '채널_코드', -- 채널_코드
	`RMK`             VARCHAR(1000) NULL     COMMENT '비고', -- 비고
	`URL`             VARCHAR(1000) NULL     COMMENT 'URL', -- URL
	`HTTP_METH_CD`    VARCHAR(20)   NULL     COMMENT 'HTTP_메소드_코드', -- HTTP_메소드_코드
	`SUCC_YN`         CHAR(1)       NULL     COMMENT '성공_여부', -- 성공_여부
	`RES_CD_VAL`      VARCHAR(10)   NULL     COMMENT '응답_코드_값', -- 응답_코드_값
	`HTTP_STT_CD_VAL` VARCHAR(4)    NULL     COMMENT 'HTTP_상태_코드_값', -- HTTP_상태_코드_값
	`REQ_MSG_CONT`    TEXT          NULL     COMMENT '요청_메시지_내용', -- 요청_메시지_내용
	`RES_MSG_CONT`    TEXT          NULL     COMMENT '응답_메시지_내용', -- 응답_메시지_내용
	`REQ_HED_CONT`    TEXT          NULL     COMMENT '요청_헤더_내용', -- 요청_헤더_내용
	`REQ_PRM_CONT`    TEXT          NULL     COMMENT '요청_파라메터_내용', -- 요청_파라메터_내용
	`RES_HED_CONT`    TEXT          NULL     COMMENT '응답_헤더_내용', -- 응답_헤더_내용
	`USR_ID`          VARCHAR(20)   NULL     COMMENT '사용자_아이디', -- 사용자_아이디
	`USR_KEY`         VARCHAR(20)   NULL     COMMENT '사용자_키', -- 사용자_키
	`MNU_ID`          NUMERIC       NULL     COMMENT '메뉴_아이디', -- 메뉴_아이디
	`PROC_MS`         NUMERIC       NULL     COMMENT '프로세스_시간(MS)', -- 프로세스_시간(MS)
	`REG_DTTM`        DATETIME      NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`      VARCHAR(20)   NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`      VARCHAR(20)   NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`        DATETIME      NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID`      VARCHAR(20)   NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP`      VARCHAR(20)   NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '인터페이스_이력';

-- 인터페이스_이력
ALTER TABLE `dbo`.`VECTORX_IFS_HIST`
	ADD CONSTRAINT `PK_VECTORX_IFS_HIST` -- 인터페이스_이력 기본키
		PRIMARY KEY (
			`IF_HIST_ID` -- 인터페이스_이력_아이디
		);

-- 인터페이스_이력 인덱스
CREATE INDEX `IX_VECTORX_IFS_HIST`
	ON `dbo`.`VECTORX_IFS_HIST`( -- 인터페이스_이력
		`PROC_ID` ASC -- 프로세스_아이디
	);

-- 인터페이스_이력 인덱스2
CREATE INDEX `IX_VECTORX_IFS_HIST2`
	ON `dbo`.`VECTORX_IFS_HIST`( -- 인터페이스_이력
		`REQ_ID` ASC -- 요청_아이디
	);

-- 인터페이스_이력 인덱스3
CREATE INDEX `IX_VECTORX_IFS_HIST3`
	ON `dbo`.`VECTORX_IFS_HIST`( -- 인터페이스_이력
		`IF_ID` ASC,  -- 인터페이스_아이디
		`IF_VER` ASC  -- 인터페이스_버전
	);

-- 메뉴_접근_이력
CREATE TABLE `dbo`.`VECTORX_MNU_ACC_HIST` (
	`MNU_ACC_ID` NUMERIC       NOT NULL COMMENT '메뉴_접근_아이디', -- 메뉴_접근_아이디
	`MNU_ID`     NUMERIC       NOT NULL COMMENT '메뉴_아이디', -- 메뉴_아이디
	`USR_ID`     VARCHAR(20)   NOT NULL COMMENT '사용자_아이디', -- 사용자_아이디
	`PROC_ID`    VARCHAR(50)   NULL     COMMENT '프로세스_아이디', -- 프로세스_아이디
	`REQ_ID`     VARCHAR(50)   NULL     COMMENT '요청_아이디', -- 요청_아이디
	`MNU_URL`    VARCHAR(1000) NULL     COMMENT '메뉴_URL', -- 메뉴_URL
	`REG_DTTM`   DATETIME      NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID` VARCHAR(20)   NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP` VARCHAR(20)   NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`   DATETIME      NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID` VARCHAR(20)   NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP` VARCHAR(20)   NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '메뉴_접근_이력';

-- 메뉴_접근_이력
ALTER TABLE `dbo`.`VECTORX_MNU_ACC_HIST`
	ADD CONSTRAINT `PK_VECTORX_MNU_ACC_HIST` -- 메뉴_접근_이력 기본키
		PRIMARY KEY (
			`MNU_ACC_ID` -- 메뉴_접근_아이디
		);

-- 메뉴_접근_이력 인덱스
CREATE INDEX `IX_VECTORX_MNU_ACC_HIST`
	ON `dbo`.`VECTORX_MNU_ACC_HIST`( -- 메뉴_접근_이력
		`MNU_ID` ASC -- 메뉴_아이디
	);

-- 메뉴_접근_이력 인덱스2
CREATE INDEX `IX_VECTORX_MNU_ACC_HIST2`
	ON `dbo`.`VECTORX_MNU_ACC_HIST`( -- 메뉴_접근_이력
		`USR_ID` ASC -- 사용자_아이디
	);

-- 메뉴_기능_접근_이력
CREATE TABLE `dbo`.`VECTORX_MNU_FNC_ACC_HIST` (
	`MNU_FNC_ACC_ID` NUMERIC     NOT NULL COMMENT '메뉴_기능_접근_아이디', -- 메뉴_기능_접근_아이디
	`MNU_ID`         NUMERIC     NOT NULL COMMENT '메뉴_아이디', -- 메뉴_아이디
	`FNC_ID`         VARCHAR(50) NOT NULL COMMENT '기능_아이디', -- 기능_아이디
	`USR_ID`         VARCHAR(20) NOT NULL COMMENT '사용자_아이디', -- 사용자_아이디
	`REQ_ID`         VARCHAR(50) NULL COMMENT '요청_아이디', -- 요청_아이디
	`PROC_ID`        VARCHAR(50) NULL COMMENT '프로세스_아이디', -- 프로세스_아이디
	`REG_DTTM`       DATETIME    NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`     VARCHAR(20) NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`     VARCHAR(20) NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`       DATETIME    NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID`     VARCHAR(20) NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP`     VARCHAR(20) NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '메뉴_기능_접근_이력';

-- 메뉴_기능_접근_이력
ALTER TABLE `dbo`.`VECTORX_MNU_FNC_ACC_HIST`
	ADD CONSTRAINT `PK_VECTORX_MNU_FNC_ACC_HIST` -- 메뉴_기능_접근_이력 기본키
		PRIMARY KEY (
			`MNU_FNC_ACC_ID` -- 메뉴_기능_접근_아이디
		);

-- 메뉴_기능_접근_이력 인덱스
CREATE INDEX `IX_VECTORX_MNU_FNC_ACC_HIST`
	ON `dbo`.`VECTORX_MNU_FNC_ACC_HIST`( -- 메뉴_기능_접근_이력
		`MNU_ID` ASC, -- 메뉴_아이디
		`FNC_ID` ASC  -- 기능_아이디
	);

-- 메뉴_기능_접근_이력 인덱스2
CREATE INDEX `IX_VECTORX_MNU_FNC_ACC_HIST2`
	ON `dbo`.`VECTORX_MNU_FNC_ACC_HIST`( -- 메뉴_기능_접근_이력
		`USR_ID` ASC -- 사용자_아이디
	);

-- 사용자_이력
CREATE TABLE `dbo`.`VECTORX_USR_HIST` (
	`USR_ID`           VARCHAR(20)   NOT NULL COMMENT '사용자_아이디', -- 사용자_아이디
	`INP_DTTM`         DATETIME      NOT NULL COMMENT '입력_일시', -- 입력_일시
	`USR_NM`           VARCHAR(50)   NULL     COMMENT '사용자_명', -- 사용자_명
	`DEPT_CD`          VARCHAR(20)   NULL     COMMENT '부서_코드', -- 부서_코드
	`DEPT_NM`          VARCHAR(50)   NULL     COMMENT '부서_명', -- 부서_명
	`PWD`              VARCHAR(500)  NULL     COMMENT '비밀번호', -- 비밀번호
	`PWD_LST_UPD_DTTM` DATETIME      NULL     COMMENT '비밀번호_최종_수정_일시', -- 비밀번호_최종_수정_일시
	`EMAIL`            VARCHAR(40)   NULL     COMMENT '이메일', -- 이메일
	`PH_NO`            VARCHAR(20)   NULL     COMMENT '전화_번호', -- 전화_번호
	`CPH_NO`           VARCHAR(20)   NULL     COMMENT '핸드폰_번호', -- 핸드폰_번호
	`FAX_NO`           VARCHAR(20)   NULL     COMMENT '팩스_번호', -- 팩스_번호
	`USR_STT_CD`       VARCHAR(20)   NULL     COMMENT '사용자_상태_코드', -- 사용자_상태_코드
	`USE_SRT_DT`       VARCHAR(8)    NULL     COMMENT '사용_시작_일자', -- 사용_시작_일자
	`USE_END_DT`       VARCHAR(8)    NULL     COMMENT '사용_종료_일자', -- 사용_종료_일자
	`USE_DV_CD`        VARCHAR(2)    NULL     COMMENT '사용_구분_코드', -- 사용_구분_코드
	`LST_LOGIN_DTTM`   DATETIME      NULL     COMMENT '최종_로그인_일시', -- 최종_로그인_일시
	`LOGIN_FAIL_CNT`   NUMERIC       NULL     DEFAULT 0 COMMENT '로그인_실패_건수', -- 로그인_실패_건수
	`PWD_RESET_YN`     CHAR(1)       NULL     DEFAULT 'Y' COMMENT '비밀번호_초기화_여부', -- 비밀번호_초기화_여부
	`IP_LMT_YN`        CHAR(1)       NULL     DEFAULT 'N' COMMENT '아이피_제한_여부', -- 아이피_제한_여부
	`IP_LIST`          VARCHAR(1000) NULL     COMMENT '아이피_목록', -- 아이피_목록
	`EMP_NO`           VARCHAR(20)   NULL     COMMENT '사원_번호', -- 사원_번호
	`RMK`              VARCHAR(1000) NULL     COMMENT '비고', -- 비고
	`ORG_CD`           VARCHAR(20)   NULL     COMMENT '기관_코드', -- 기관_코드
	`WORK_DV_CD`       CHAR(1)       NULL     COMMENT '업무_구분_코드', -- 업무_구분_코드
	`REG_DTTM`         DATETIME      NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`       VARCHAR(20)   NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`       VARCHAR(20)   NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`         DATETIME      NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID`       VARCHAR(20)   NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP`       VARCHAR(20)   NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '사용자_이력';

-- 사용자_이력
ALTER TABLE `dbo`.`VECTORX_USR_HIST`
	ADD CONSTRAINT `PK_VECTORX_USR_HIST` -- 사용자_이력 기본키
		PRIMARY KEY (
			`INP_DTTM` -- 입력_일시
		);

-- 사용자_이력 인덱스
CREATE INDEX `IX_VECTORX_USR_HIST`
	ON `dbo`.`VECTORX_USR_HIST`( -- 사용자_이력
		`USR_NM` ASC -- 사용자_명
	);

-- 인터페이스_채널
CREATE TABLE `dbo`.`VECTORX_IF_CHNL` (
	`IF_ID`      VARCHAR(20) NOT NULL COMMENT '인터페이스_아이디', -- 인터페이스_아이디
	`IF_VER`     VARCHAR(10) NOT NULL COMMENT '인터페이스_버전', -- 인터페이스_버전
	`CHNL_CD`    VARCHAR(20) NOT NULL COMMENT '채널_코드', -- 채널_코드
	`REG_DTTM`   DATETIME    NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID` VARCHAR(20) NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP` VARCHAR(20) NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`   DATETIME    NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID` VARCHAR(20) NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP` VARCHAR(20) NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '인터페이스_채널';

-- 인터페이스_채널
ALTER TABLE `dbo`.`VECTORX_IF_CHNL`
	ADD CONSTRAINT `PK_VECTORX_IF_CHNL` -- 인터페이스_채널 기본키
		PRIMARY KEY (
			`IF_ID`,   -- 인터페이스_아이디
			`IF_VER`,  -- 인터페이스_버전
			`CHNL_CD`  -- 채널_코드
		);

-- 어플리케이션_상태
CREATE TABLE `dbo`.`VECTORX_APP_STT` (
	`APP_STT_ID`      NUMERIC       NOT NULL COMMENT '어플리케이션_상태_아이디', -- 어플리케이션_상태_아이디
	`APLY_SRT_DTTM`   DATETIME      NULL     COMMENT '적용_시작_일시', -- 적용_시작_일시
	`APLY_END_DTTM`   DATETIME      NULL     COMMENT '적용_종료_일시', -- 적용_종료_일시
	`STT_TY_CD`       VARCHAR(20)   NULL     COMMENT '상태_유형_코드', -- 상태_유형_코드
	`ACC_ALW_IP_LIST` VARCHAR(1000) NULL     COMMENT '접속_허용_아이피_목록', -- 접속_허용_아이피_목록
	`USE_YN`          CHAR(1)       NULL     COMMENT '사용_여부', -- 사용_여부
	`TITLE`           VARCHAR(100)  NULL     COMMENT '제목', -- 제목
	`REDT_URL`        VARCHAR(1000) NULL     COMMENT '리다이렉트_URL', -- 리다이렉트_URL
	`CTRL_SCOP_TY_CD` VARCHAR(20)   NULL     COMMENT '제어_범위_유형_코드', -- 제어_범위_유형_코드
	`SCOP_URL`        VARCHAR(1000) NULL     COMMENT '범위_URL', -- 범위_URL
	`EXPS_MSG`        VARCHAR(1000) NULL     COMMENT '노출_메시지', -- 노출_메시지
	`SYS_CD`          VARCHAR(20)   NULL     COMMENT '시스템_코드', -- 시스템_코드
	`REG_DTTM`        DATETIME      NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`      VARCHAR(20)   NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`      VARCHAR(20)   NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`        DATETIME      NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID`      VARCHAR(20)   NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP`      VARCHAR(20)   NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '어플리케이션_상태';

-- 어플리케이션_상태
ALTER TABLE `dbo`.`VECTORX_APP_STT`
	ADD CONSTRAINT `PK_VECTORX_APP_STT` -- 어플리케이션_상태 기본키
		PRIMARY KEY (
			`APP_STT_ID` -- 어플리케이션_상태_아이디
		);

-- 어플리케이션_상태_메뉴
CREATE TABLE `dbo`.`VECTORX_APP_STT_MNU` (
	`MNU_ID`     NUMERIC     NOT NULL COMMENT '메뉴_아이디', -- 메뉴_아이디
	`APP_STT_ID` NUMERIC     NOT NULL COMMENT '어플리케이션_상태_아이디', -- 어플리케이션_상태_아이디
	`REG_DTTM`   DATETIME    NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID` VARCHAR(20) NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP` VARCHAR(20) NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`   DATETIME    NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID` VARCHAR(20) NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP` VARCHAR(20) NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '어플리케이션_상태_메뉴';

-- 어플리케이션_상태_메뉴
ALTER TABLE `dbo`.`VECTORX_APP_STT_MNU`
	ADD CONSTRAINT `PK_VECTORX_APP_STT_MNU` -- 어플리케이션_상태_메뉴 기본키
		PRIMARY KEY (
			`MNU_ID`,     -- 메뉴_아이디
			`APP_STT_ID`  -- 어플리케이션_상태_아이디
		);

-- 인터페이스_키
CREATE TABLE `dbo`.`VECTORX_IF_KEY` (
	`IF_ID`      VARCHAR(20)   NOT NULL COMMENT '인터페이스_아이디', -- 인터페이스_아이디
	`IF_VER`     VARCHAR(10)   NOT NULL COMMENT '인터페이스_버전', -- 인터페이스_버전
	`IF_KEY`     VARCHAR(50)   NOT NULL COMMENT '인터페이스_키', -- 인터페이스_키
	`IF_VAL`     VARCHAR(1000) NULL     COMMENT '인터페이스_값', -- 인터페이스_값
	`RMK`        VARCHAR(1000) NULL     COMMENT '비고', -- 비고
	`REG_DTTM`   DATETIME      NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID` VARCHAR(20)   NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP` VARCHAR(20)   NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`   DATETIME      NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID` VARCHAR(20)   NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP` VARCHAR(20)   NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '인터페이스_키';

-- 인터페이스_키
ALTER TABLE `dbo`.`VECTORX_IF_KEY`
	ADD CONSTRAINT `PK_VECTORX_IF_KEY` -- 인터페이스_키 Primary key
		PRIMARY KEY (
			`IF_ID`,  -- 인터페이스_아이디
			`IF_VER`, -- 인터페이스_버전
			`IF_KEY`  -- 인터페이스_키
		);

-- DBMS_쿼리_이력
CREATE TABLE `dbo`.`VECTORX_DBMS_QRY_HIST` (
	`DBMS_QRY_HIST_ID` NUMERIC       NOT NULL COMMENT 'DBMS_쿼리_이력_아이디', -- DBMS_쿼리_이력_아이디
	`PROC_ID`          VARCHAR(50)   NULL     COMMENT '프로세스_아이디', -- 프로세스_아이디
	`REQ_ID`           VARCHAR(50)   NULL     COMMENT '요청_아이디', -- 요청_아이디
	`ORG_QRY_CONT`     VARCHAR(4000) NULL     COMMENT '원_쿼리_내용', -- 원_쿼리_내용
	`EXEC_QRY_CONT`    VARCHAR(4000) NULL     COMMENT '실행_쿼리_내용', -- 실행_쿼리_내용
	`PROC_MS`          NUMERIC       NULL     COMMENT '프로세스_시간(MS)', -- 프로세스_시간(MS)
	`REG_DTTM`         DATETIME      NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`       VARCHAR(20)   NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`       VARCHAR(20)   NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`         DATETIME      NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID`       VARCHAR(20)   NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP`       VARCHAR(20)   NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT 'DBMS_쿼리_이력';

-- DBMS_쿼리_이력
ALTER TABLE `dbo`.`VECTORX_DBMS_QRY_HIST`
	ADD CONSTRAINT `PK_VECTORX_DBMS_QRY_HIST` -- DBMS_쿼리_이력 Primary key
		PRIMARY KEY (
			`DBMS_QRY_HIST_ID` -- DBMS_쿼리_이력_아이디
		);

-- DBMS_쿼리_이력 인덱스
CREATE INDEX `IX_VECTORX_DBMS_QRY_HIST`
	ON `dbo`.`VECTORX_DBMS_QRY_HIST`( -- DBMS_쿼리_이력
		`PROC_ID` ASC -- 프로세스_아이디
	);

-- DBMS_쿼리_이력 인덱스2
CREATE INDEX `IX_VECTORX_DBMS_QRY_HIST2`
	ON `dbo`.`VECTORX_DBMS_QRY_HIST`( -- DBMS_쿼리_이력
		`REQ_ID` ASC -- 요청_아이디
	);

-- 권한_그룹_이력
CREATE TABLE `dbo`.`VECTORX_AUTH_GRP_HIST` (
	`AUTH_GRP_HIST_ID`   NUMERIC       NOT NULL COMMENT '권한_그룹_이력_아이디', -- 권한_그룹_이력_아이디
	`AUTH_GRP_ID`        NUMERIC       NOT NULL COMMENT '권한_그룹_아이디', -- 권한_그룹_아이디
	`AUTH_GRP_DV_VAL`    VARCHAR(10)   NULL     COMMENT '권한_그룹_구분_값', -- 권한_그룹_구분_값
	`INP_DTTM`           DATETIME      NOT NULL COMMENT '입력_일시', -- 입력_일시
	`UPR_AUTH_GRP_ID`    NUMERIC       NULL     COMMENT '상위_권한_그룹_아이디', -- 상위_권한_그룹_아이디
	`AUTH_GRP_NM`        VARCHAR(100)  NULL     COMMENT '권한_그룹_명', -- 권한_그룹_명
	`SRT_NO`             NUMERIC       NULL     COMMENT '정렬_번호', -- 정렬_번호
	`AUTH_GRP_DESC`      VARCHAR(1000) NULL     COMMENT '권한_그룹_설명', -- 권한_그룹_설명
	`USE_YN`             CHAR(1)       NULL     COMMENT '사용_여부', -- 사용_여부
	`DEL_YN`             CHAR(1)       NULL     DEFAULT 'N' COMMENT '삭제_여부', -- 삭제_여부
	`PRV_TRT_YN`         CHAR(1)       NULL     DEFAULT 'N' COMMENT '개인정보_취급_여부', -- 개인정보_취급_여부
	`SYS_CD`             VARCHAR(20)   NULL     COMMENT '시스템_코드', -- 시스템_코드
	`APV_GRP_YN`         CHAR(1)       NULL     DEFAULT 'N' COMMENT '승인_그룹_여부', -- 승인_그룹_여부
	`APV_NEC_YN`         CHAR(1)       NULL     COMMENT '승인_필요_여부', -- 승인_필요_여부
	`AUTH_GRP_STEP_NO`   NUMERIC       NULL     COMMENT '권한_그룹_단계_번호', -- 권한_그룹_단계_번호
	`WORK_DV_CD`         CHAR(1)       NULL     COMMENT '업무_구분_코드', -- 업무_구분_코드
	`ADD_ROL_LIST_VAL`   VARCHAR(1000) NULL     COMMENT '추가_역할_목록_값', -- 추가_역할_목록_값
	`USE_DV_CD_LIST_VAL` VARCHAR(500)  NULL     COMMENT '사용_구분_코드_목록_값', -- 사용_구분_코드_목록_값
	`REG_DTTM`           DATETIME      NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`         VARCHAR(20)   NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`         VARCHAR(20)   NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`           DATETIME      NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID`         VARCHAR(20)   NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP`         VARCHAR(20)   NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '권한_그룹_이력';

-- 권한_그룹_이력
ALTER TABLE `dbo`.`VECTORX_AUTH_GRP_HIST`
	ADD CONSTRAINT `PK_VECTORX_AUTH_GRP_HIST` -- 권한_그룹_이력 Primary key
		PRIMARY KEY (
			`AUTH_GRP_HIST_ID` -- 권한_그룹_이력_아이디
		);

-- 권한_그룹_이력 인덱스
CREATE INDEX `IX_VECTORX_AUTH_GRP_HIST`
	ON `dbo`.`VECTORX_AUTH_GRP_HIST`( -- 권한_그룹_이력
		`AUTH_GRP_ID` ASC -- 권한_그룹_아이디
	);

-- 권한_그룹_이력 인덱스2
CREATE INDEX `IX_VECTORX_AUTH_GRP_HIST2`
	ON `dbo`.`VECTORX_AUTH_GRP_HIST`( -- 권한_그룹_이력
		`INP_DTTM` ASC -- 입력_일시
	);

-- 권한_그룹_사용자_이력
CREATE TABLE `dbo`.`VECTORX_AUTH_GRP_USR_HIST` (
	`AUTH_GRP_HIST_ID` NUMERIC     NOT NULL COMMENT '권한_그룹_이력_아이디', -- 권한_그룹_이력_아이디
	`AUTH_GRP_ID`      NUMERIC     NOT NULL COMMENT '권한_그룹_아이디', -- 권한_그룹_아이디
	`USR_ID`           VARCHAR(20) NOT NULL COMMENT '사용자_아이디', -- 사용자_아이디
	`WORK_DV_CD`       CHAR(1)     NOT NULL COMMENT '업무_구분_코드', -- 업무_구분_코드
	`REG_DTTM`         DATETIME    NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`       VARCHAR(20) NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`       VARCHAR(20) NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`         DATETIME    NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID`       VARCHAR(20) NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP`       VARCHAR(20) NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '권한_그룹_사용자_이력';

-- 권한_그룹_사용자_이력
ALTER TABLE `dbo`.`VECTORX_AUTH_GRP_USR_HIST`
	ADD CONSTRAINT `PK_VECTORX_AUTH_GRP_USR_HIST` -- 권한_그룹_사용자_이력 Primary key
		PRIMARY KEY (
			`AUTH_GRP_HIST_ID`, -- 권한_그룹_이력_아이디
			`AUTH_GRP_ID`,      -- 권한_그룹_아이디
			`USR_ID`            -- 사용자_아이디
		);

-- 권한_그룹_사용자_이력 인덱스
CREATE INDEX `IX_VECTORX_AUTH_GRP_USR_HIST`
	ON `dbo`.`VECTORX_AUTH_GRP_USR_HIST`( -- 권한_그룹_사용자_이력
		`REG_DTTM` ASC -- 등록_일시
	);

-- 사용자_메뉴
CREATE TABLE `dbo`.`VECTORX_USR_MNU` (
	`USR_ID`     VARCHAR(20) NOT NULL COMMENT '사용자_아이디', -- 사용자_아이디
	`MNU_ID`     NUMERIC     NOT NULL COMMENT '메뉴_아이디', -- 메뉴_아이디
	`DEF_MNU_YN` CHAR(1)     NULL     COMMENT '기본_메뉴_여부', -- 기본_메뉴_여부
	`SRT_NO`     NUMERIC     NULL     COMMENT '정렬_번호', -- 정렬_번호
	`REG_DTTM`   DATETIME    NOT NULL COMMENT '등록_일시', -- 등록_일시
	`SYS_CD`     VARCHAR(20) NULL     COMMENT '시스템_코드', -- 시스템_코드
	`REG_USR_ID` VARCHAR(20) NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP` VARCHAR(20) NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`   DATETIME    NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_IP` VARCHAR(20) NULL     COMMENT '수정_사용자_아이피', -- 수정_사용자_아이피
	`UPD_USR_ID` VARCHAR(20) NULL     COMMENT '수정_사용자_아이디' -- 수정_사용자_아이디
)
COMMENT '사용자_메뉴';

-- 사용자_메뉴
ALTER TABLE `dbo`.`VECTORX_USR_MNU`
	ADD CONSTRAINT `PK_VECTORX_USR_MNU` -- 사용자_메뉴 Primary key
		PRIMARY KEY (
			`USR_ID`, -- 사용자_아이디
			`MNU_ID`  -- 메뉴_아이디
		);

-- 권한_이력
CREATE TABLE `dbo`.`VECTORX_AUTH_HIST` (
	`AUTH_HIST_ID`     NUMERIC       NOT NULL COMMENT '권한_이력_아이디', -- 권한_이력_아이디
	`AUTH_ID`          NUMERIC       NOT NULL COMMENT '권한_아이디', -- 권한_아이디
	`INP_DTTM`         DATETIME      NOT NULL COMMENT '입력_일시', -- 입력_일시
	`AUTH_GRP_ID`      NUMERIC       NULL     COMMENT '권한_그룹_아이디', -- 권한_그룹_아이디
	`USR_ID`           VARCHAR(20)   NULL     COMMENT '사용자_아이디', -- 사용자_아이디
	`AUTH_TY_CD`       VARCHAR(20)   NULL     COMMENT '권한_유형_코드', -- 권한_유형_코드
	`USE_SRT_DT`       VARCHAR(8)    NULL     COMMENT '사용_시작_일자', -- 사용_시작_일자
	`USE_END_DT`       VARCHAR(8)    NULL     COMMENT '사용_종료_일자', -- 사용_종료_일자
	`WORK_DV_CD`       CHAR(1)       NULL     COMMENT '업무_구분_코드', -- 업무_구분_코드
	`ADD_ROL_LIST_VAL` VARCHAR(1000) NULL     COMMENT '추가_역할_목록_값', -- 추가_역할_목록_값
	`REG_DTTM`         DATETIME      NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`       VARCHAR(20)   NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`       VARCHAR(20)   NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`         DATETIME      NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID`       VARCHAR(20)   NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP`       VARCHAR(20)   NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '권한_이력';

-- 권한_이력
ALTER TABLE `dbo`.`VECTORX_AUTH_HIST`
	ADD CONSTRAINT `PK_VECTORX_AUTH_HIST` -- 권한_이력 Primary key
		PRIMARY KEY (
			`AUTH_HIST_ID` -- 권한_이력_아이디
		);

-- 권한_이력 인덱스
CREATE INDEX `IX_VECTORX_AUTH_HIST`
	ON `dbo`.`VECTORX_AUTH_HIST`( -- 권한_이력
		`AUTH_ID` ASC -- 권한_아이디
	);

-- 권한_이력 인덱스2
CREATE INDEX `IX_VECTORX_AUTH_HIST2`
	ON `dbo`.`VECTORX_AUTH_HIST`( -- 권한_이력
		`INP_DTTM` ASC -- 입력_일시
	);

-- 사용자_상태_승인
CREATE TABLE `dbo`.`VECTORX_USR_STT_APV` (
	`USR_APV_ID`   NUMERIC     NOT NULL COMMENT '사용자_승인_아이디', -- 사용자_승인_아이디
	`USR_ID`       VARCHAR(20) NULL     COMMENT '사용자_아이디', -- 사용자_아이디
	`USR_STT_CD`   VARCHAR(20) NULL     COMMENT '사용자_상태_코드', -- 사용자_상태_코드
	`PWD_RESET_YN` CHAR(1)     NULL     DEFAULT 'N' COMMENT '비밀번호_초기화_여부', -- 비밀번호_초기화_여부
	`REG_DTTM`     DATETIME    NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`   VARCHAR(20) NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`   VARCHAR(20) NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`     DATETIME    NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID`   VARCHAR(20) NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP`   VARCHAR(20) NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '사용자_상태_승인';

-- 사용자_상태_승인
ALTER TABLE `dbo`.`VECTORX_USR_STT_APV`
	ADD CONSTRAINT `PK_VECTORX_USR_STT_APV` -- 사용자_상태_승인 기본키
		PRIMARY KEY (
			`USR_APV_ID` -- 사용자_승인_아이디
		);

-- 권한_그룹_승인
CREATE TABLE `dbo`.`VECTORX_AUTH_GRP_APV` (
	`USR_APV_ID`         NUMERIC       NOT NULL COMMENT '사용자_승인_아이디', -- 사용자_승인_아이디
	`AUTH_GRP_ID`        NUMERIC       NOT NULL COMMENT '권한_그룹_아이디', -- 권한_그룹_아이디
	`UPR_AUTH_GRP_ID`    NUMERIC       NULL     COMMENT '상위_권한_그룹_아이디', -- 상위_권한_그룹_아이디
	`AUTH_GRP_NM`        VARCHAR(100)  NULL     COMMENT '권한_그룹_명', -- 권한_그룹_명
	`SRT_NO`             NUMERIC       NULL     COMMENT '정렬_번호', -- 정렬_번호
	`AUTH_GRP_DESC`      VARCHAR(1000) NULL     COMMENT '권한_그룹_설명', -- 권한_그룹_설명
	`USE_YN`             CHAR(1)       NULL     COMMENT '사용_여부', -- 사용_여부
	`DEL_YN`             CHAR(1)       NULL     DEFAULT 'N' COMMENT '삭제_여부', -- 삭제_여부
	`PRV_TRT_YN`         CHAR(1)       NULL     DEFAULT 'N' COMMENT '개인정보_취급_여부', -- 개인정보_취급_여부
	`SYS_CD`             VARCHAR(20)   NULL     COMMENT '시스템_코드', -- 시스템_코드
	`APV_GRP_YN`         CHAR(1)       NULL     DEFAULT 'N' COMMENT '승인_그룹_여부', -- 승인_그룹_여부
	`APV_NEC_YN`         CHAR(1)       NULL     COMMENT '승인_필요_여부', -- 승인_필요_여부
	`AUTH_GRP_STEP_NO`   NUMERIC       NULL     COMMENT '권한_그룹_단계_번호', -- 권한_그룹_단계_번호
	`ADD_ROL_LIST_VAL`   VARCHAR(1000) NULL     COMMENT '추가_역할_목록_값', -- 추가_역할_목록_값
	`USE_DV_CD_LIST_VAL` VARCHAR(500)  NULL     COMMENT '사용_구분_코드_목록_값', -- 사용_구분_코드_목록_값
	`REG_DTTM`           DATETIME      NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`         VARCHAR(20)   NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`         VARCHAR(20)   NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`           DATETIME      NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID`         VARCHAR(20)   NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP`         VARCHAR(20)   NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '권한_그룹_승인';

-- 권한_그룹_승인
ALTER TABLE `dbo`.`VECTORX_AUTH_GRP_APV`
	ADD CONSTRAINT `PK_VECTORX_AUTH_GRP_APV` -- 권한_그룹_승인 Primary key
		PRIMARY KEY (
			`USR_APV_ID`,  -- 사용자_승인_아이디
			`AUTH_GRP_ID`  -- 권한_그룹_아이디
		);

-- 권한_그룹_승인_사용자
CREATE TABLE `dbo`.`VECTORX_AUTH_GRP_APV_USR` (
	`USR_APV_ID`  NUMERIC     NOT NULL COMMENT '사용자_승인_아이디', -- 사용자_승인_아이디
	`AUTH_GRP_ID` NUMERIC     NOT NULL COMMENT '권한_그룹_아이디', -- 권한_그룹_아이디
	`USR_ID`      VARCHAR(20) NOT NULL COMMENT '사용자_아이디', -- 사용자_아이디
	`REG_DTTM`    DATETIME    NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`  VARCHAR(20) NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`  VARCHAR(20) NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`    DATETIME    NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID`  VARCHAR(20) NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP`  VARCHAR(20) NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '권한_그룹_승인_사용자';

-- 권한_그룹_승인_사용자
ALTER TABLE `dbo`.`VECTORX_AUTH_GRP_APV_USR`
	ADD CONSTRAINT `PK_VECTORX_AUTH_GRP_APV_USR` -- 권한_그룹_승인_사용자 기본키
		PRIMARY KEY (
			`USR_APV_ID`,  -- 사용자_승인_아이디
			`AUTH_GRP_ID`, -- 권한_그룹_아이디
			`USR_ID`       -- 사용자_아이디
		);

-- 게시_의견
CREATE TABLE `dbo`.`VECTORX_POST_OPN` (
	`POST_OPN_ID`   NUMERIC       NOT NULL COMMENT '게시_의견_아이디', -- 게시_의견_아이디
	`POST_ID`       NUMERIC       NULL     COMMENT '게시_아이디', -- 게시_아이디
	`POST_OPN_CONT` VARCHAR(1000) NULL     COMMENT '게시_의견_내용', -- 게시_의견_내용
	`REG_USR_NM`    VARCHAR(50)   NULL     COMMENT '등록_사용자_명', -- 등록_사용자_명
	`DEL_YN`        CHAR(1)       NULL     DEFAULT 'N' COMMENT '삭제_여부', -- 삭제_여부
	`REG_DTTM`      DATE          NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`    VARCHAR(20)   NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`    VARCHAR(20)   NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`      DATE          NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID`    VARCHAR(20)   NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP`    VARCHAR(20)   NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '게시_의견';

-- 게시_의견
ALTER TABLE `dbo`.`VECTORX_POST_OPN`
	ADD CONSTRAINT `PK_VECTORX_POST_OPN` -- 게시_의견 기본키
		PRIMARY KEY (
			`POST_OPN_ID` -- 게시_의견_아이디
		);

-- 게시_태그
CREATE TABLE `dbo`.`VECTORX_POST_TAG` (
	`POST_ID`    NUMERIC     NULL     COMMENT '게시_아이디', -- 게시_아이디
	`TAG_NM`     VARCHAR(50) NULL     COMMENT '태그_명', -- 태그_명
	`REG_DTTM`   DATE        NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID` VARCHAR(20) NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP` VARCHAR(20) NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`   DATE        NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID` VARCHAR(20) NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP` VARCHAR(20) NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '게시_태그';

-- 권한_그룹_승인_단계
CREATE TABLE `dbo`.`VECTORX_AUTH_GRP_APV_STEP` (
	`AUTH_GRP_ID`     NUMERIC     NOT NULL COMMENT '권한_그룹_아이디', -- 권한_그룹_아이디
	`STEP_NO`         INT         NOT NULL COMMENT '단계_번호', -- 단계_번호
	`STEP_DV_CD`      CHAR(2)     NULL     COMMENT '단계_구분_코드', -- 단계_구분_코드
	`APV_AUTH_GRP_ID` NUMERIC     NULL     COMMENT '승인_권한_그룹_아이디', -- 승인_권한_그룹_아이디
	`APV_USR_ID`      VARCHAR(20) NULL     COMMENT '승인_사용자_아이디', -- 승인_사용자_아이디
	`APV_PRC_DV_CD`   CHAR(2)     NULL     COMMENT '승인_처리_구분_코드', -- 승인_처리_구분_코드
	`REG_DTTM`        DATETIME    NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`      VARCHAR(20) NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`      VARCHAR(20) NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`        DATETIME    NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID`      VARCHAR(20) NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP`      VARCHAR(20) NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '권한_그룹_승인_단계';

-- 권한_그룹_승인_단계
ALTER TABLE `dbo`.`VECTORX_AUTH_GRP_APV_STEP`
	ADD CONSTRAINT `PK_VECTORX_AUTH_GRP_APV_STEP` -- 권한_그룹_승인_단계 기본키
		PRIMARY KEY (
			`AUTH_GRP_ID`, -- 권한_그룹_아이디
			`STEP_NO`      -- 단계_번호
		);

-- 사용자_승인_단계
CREATE TABLE `dbo`.`VECTORX_USR_APV_STEP` (
	`USR_APV_ID`      NUMERIC       NOT NULL COMMENT '사용자_승인_아이디', -- 사용자_승인_아이디
	`STEP_NO`         INT           NOT NULL COMMENT '단계_번호', -- 단계_번호
	`STEP_DV_CD`      CHAR(2)       NULL     COMMENT '단계_구분_코드', -- 단계_구분_코드
	`APV_AUTH_GRP_ID` NUMERIC       NULL     COMMENT '승인_권한_그룹_아이디', -- 승인_권한_그룹_아이디
	`APV_USR_ID`      VARCHAR(20)   NULL     COMMENT '승인_사용자_아이디', -- 승인_사용자_아이디
	`APV_PRC_DV_CD`   CHAR(2)       NULL     COMMENT '승인_처리_구분_코드', -- 승인_처리_구분_코드
	`APV_STT_CD`      CHAR(2)       NULL     COMMENT '승인_상태_코드', -- 승인_상태_코드
	`APV_OPN_CONT`    VARCHAR(1000) NULL     COMMENT '승인_의견_내용', -- 승인_의견_내용
	`REG_DTTM`        DATETIME      NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`      VARCHAR(20)   NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`      VARCHAR(20)   NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`        DATETIME      NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID`      VARCHAR(20)   NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP`      VARCHAR(20)   NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '사용자_승인_단계';

-- 사용자_승인_단계
ALTER TABLE `dbo`.`VECTORX_USR_APV_STEP`
	ADD CONSTRAINT `PK_VECTORX_USR_APV_STEP` -- 사용자_승인_단계 기본키
		PRIMARY KEY (
			`USR_APV_ID`, -- 사용자_승인_아이디
			`STEP_NO`     -- 단계_번호
		);

-- 배치_작업_스케줄
CREATE TABLE `dbo`.`VECTORX_BAT_TASK_SCHDL` (
	`TASK_ID`            VARCHAR(20)  NOT NULL COMMENT '작업_아이디', -- 작업_아이디
	`TASK_SCHDL_NO`      NUMERIC      NOT NULL COMMENT '작업_스케줄_번호', -- 작업_스케줄_번호
	`TASK_SCHDL_TYPE_CD` CHAR(2)      NOT NULL COMMENT '작업_스케줄_유형_코드', -- 작업_스케줄_유형_코드
	`TASK_SCHDL_EXPR`    VARCHAR(100) NOT NULL COMMENT '작업_스케줄_표현식', -- 작업_스케줄_표현식
	`USE_YN`             CHAR(1)      NOT NULL COMMENT '사용_여부' -- 사용_여부
)
COMMENT '배치_작업_스케줄';

-- 배치_작업_실행
CREATE TABLE `dbo`.`VECTORX_BAT_TASK_EXEC` (
	`TASK_EXEC_ID`       CHAR(36)     NOT NULL COMMENT '작업_실행_아이디', -- 작업_실행_아이디
	`WRKR_ID`            VARCHAR(20)  NULL     COMMENT '워커_아이디', -- 워커_아이디
	`MNGR_ID`            VARCHAR(20)  NOT NULL COMMENT '매니저_아이디', -- 매니저_아이디
	`TASK_ID`            VARCHAR(20)  NOT NULL COMMENT '작업_아이디', -- 작업_아이디
	`TASK_SCHDL_TYPE_CD` CHAR(2)      NOT NULL COMMENT '작업_스케줄_유형_코드', -- 작업_스케줄_유형_코드
	`TASK_SCHDL_EXPR`    VARCHAR(100) NOT NULL COMMENT '작업_스케줄_표현식', -- 작업_스케줄_표현식
	`SRT_DTTM`           DATETIME     NULL     COMMENT '시작_일시', -- 시작_일시
	`END_DTTM`           DATETIME     NULL     COMMENT '종료_일시', -- 종료_일시
	`STT_CD`             CHAR(2)      NOT NULL COMMENT '상태_코드', -- 상태_코드
	`RSLT_CD`            CHAR(2)      NULL     COMMENT '결과_코드', -- 결과_코드
	`REG_DTTM`           DATETIME     NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`         VARCHAR(20)  NOT NULL COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`         VARCHAR(20)  NOT NULL COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`           DATETIME     NOT NULL COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID`         VARCHAR(20)  NOT NULL COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP`         VARCHAR(20)  NOT NULL COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '배치_작업_실행';

-- 배치_작업_실행
ALTER TABLE `dbo`.`VECTORX_BAT_TASK_EXEC`
	ADD CONSTRAINT `PK_VECTORX_BAT_TASK_EXEC` -- 배치_작업_실행 기본키
		PRIMARY KEY (
			`TASK_EXEC_ID` -- 작업_실행_아이디
		);

-- 배치_작업_워커
CREATE TABLE `dbo`.`VECTORX_BAT_TASK_WRKR` (
	`TASK_ID`    VARCHAR(20) NOT NULL COMMENT ' 작업_아이디', --  작업_아이디
	`WRKR_ID`    VARCHAR(20) NOT NULL COMMENT '워커_아이디', -- 워커_아이디
	`REG_DTTM`   DATETIME    NULL     COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID` VARCHAR(20) NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP` VARCHAR(20) NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`   DATETIME    NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID` VARCHAR(20) NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP` VARCHAR(20) NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '배치_작업_워커';

-- 배치_워커
CREATE TABLE `dbo`.`VECTORX_BAT_WRKR` (
	`WRKR_ID`    VARCHAR(20)   NOT NULL COMMENT '워커_아이디', -- 워커_아이디
	`URL`        VARCHAR(1000) NULL     COMMENT 'URL', -- URL
	`CPCT`       INTEGER       NULL     COMMENT '수용량', -- 수용량
	`USE_YN`     CHAR(1)       NULL     COMMENT '사용_여부', -- 사용_여부
	`REG_DTTM`   DATETIME      NULL     COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID` VARCHAR(20)   NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP` VARCHAR(20)   NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`   DATETIME      NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID` VARCHAR(20)   NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP` VARCHAR(20)   NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '배치_워커';

-- 배치_워커
ALTER TABLE `dbo`.`VECTORX_BAT_WRKR`
	ADD CONSTRAINT `PK_VECTORX_BAT_WRKR` -- 배치_워커 기본키
		PRIMARY KEY (
			`WRKR_ID` -- 워커_아이디
		);

-- 배치_매니저
CREATE TABLE `dbo`.`VECTORX_BAT_MNGR` (
	`MNGR_ID`    VARCHAR(20)   NOT NULL COMMENT '매니저_아이디', -- 매니저_아이디
	`URL`        VARCHAR(1000) NULL     COMMENT 'URL', -- URL
	`MSTR_YN`    CHAR(1)       NOT NULL COMMENT '마스터_여부', -- 마스터_여부
	`USE_YN`     CHAR(1)       NOT NULL COMMENT '사용_여부', -- 사용_여부
	`REG_DTTM`   DATETIME      NULL     COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID` VARCHAR(20)   NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP` VARCHAR(20)   NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`   DATETIME      NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID` VARCHAR(20)   NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP` VARCHAR(20)   NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '배치_매니저';

-- 배치_매니저
ALTER TABLE `dbo`.`VECTORX_BAT_MNGR`
	ADD CONSTRAINT `PK_VECTORX_BAT_MNGR` -- 배치_매니저 기본키
		PRIMARY KEY (
			`MNGR_ID` -- 매니저_아이디
		);

-- 배치_작업
CREATE TABLE `dbo`.`VECTORX_BAT_TASK` (
	`TASK_ID`     VARCHAR(20)   NOT NULL COMMENT '작업_아이디', -- 작업_아이디
	`TASK_NM`     VARCHAR(50)   NOT NULL COMMENT '작업_명', -- 작업_명
	`TASK_DESC`   VARCHAR(1000) NULL     COMMENT '작업_설명', -- 작업_설명
	`USE_YN`      CHAR(1)       NULL     COMMENT '사용_여부', -- 사용_여부
	`WIP_PLCY_CD` CHAR(2)       NULL     COMMENT '작업중_정책_코드', -- 작업중_정책_코드
	`DLY_S`       INT           NULL     COMMENT '지연_시간(S)', -- 지연_시간(S)
	`REG_DTTM`    DATETIME      NULL     COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`  VARCHAR(20)   NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`  VARCHAR(20)   NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`    DATETIME      NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID`  VARCHAR(20)   NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP`  VARCHAR(20)   NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '배치_작업';

-- 배치_작업
ALTER TABLE `dbo`.`VECTORX_BAT_TASK`
	ADD CONSTRAINT `PK_VECTORX_BAT_TASK` -- 배치_작업 기본키
		PRIMARY KEY (
			`TASK_ID` -- 작업_아이디
		);

-- 권한_그룹_사용자_요청_대상_그룹
CREATE TABLE `dbo`.`VECTORX_AUTH_GRP_USR_REQ_TGT_GRP` (
	`AUTH_GRP_ID`     NUMERIC     NOT NULL COMMENT '권한_그룹_아이디', -- 권한_그룹_아이디
	`REQ_AUTH_GRP_ID` NUMERIC     NOT NULL COMMENT '요청_권한_그룹_아이디', -- 요청_권한_그룹_아이디
	`REG_DTTM`        DATETIME    NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`      VARCHAR(20) NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`      VARCHAR(20) NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`        DATETIME    NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID`      VARCHAR(20) NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP`      VARCHAR(20) NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '권한_그룹_사용자_요청_대상_그룹';

-- 권한_그룹_사용자_요청_대상_그룹
ALTER TABLE `dbo`.`VECTORX_AUTH_GRP_USR_REQ_TGT_GRP`
	ADD CONSTRAINT `PK_VECTORX_AUTH_GRP_USR_REQ_TGT_GRP` -- 권한_그룹_사용자_요청_대상_그룹 Primary key
		PRIMARY KEY (
			`AUTH_GRP_ID`,     -- 권한_그룹_아이디
			`REQ_AUTH_GRP_ID`  -- 요청_권한_그룹_아이디
		);

-- 권한_그룹_승인_사용자_요청_대상_그룹
CREATE TABLE `dbo`.`VECTORX_AUTH_GRP_APV_USR_REQ_TGT_GRP` (
	`USR_APV_ID`      NUMERIC     NOT NULL COMMENT '사용자_승인_아이디', -- 사용자_승인_아이디
	`AUTH_GRP_ID`     NUMERIC     NOT NULL COMMENT '권한_그룹_아이디', -- 권한_그룹_아이디
	`REQ_AUTH_GRP_ID` NUMERIC     NOT NULL COMMENT '요청_권한_그룹_아이디', -- 요청_권한_그룹_아이디
	`REG_DTTM`        DATETIME    NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`      VARCHAR(20) NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`      VARCHAR(20) NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`        DATETIME    NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID`      VARCHAR(20) NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP`      VARCHAR(20) NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '권한_그룹_승인_사용자_요청_대상_그룹';

-- 권한_그룹_승인_사용자_요청_대상_그룹
ALTER TABLE `dbo`.`VECTORX_AUTH_GRP_APV_USR_REQ_TGT_GRP`
	ADD CONSTRAINT `PK_VECTORX_AUTH_GRP_APV_USR_REQ_TGT_GRP` -- 권한_그룹_승인_사용자_요청_대상_그룹 Primary key
		PRIMARY KEY (
			`USR_APV_ID`,      -- 사용자_승인_아이디
			`AUTH_GRP_ID`,     -- 권한_그룹_아이디
			`REQ_AUTH_GRP_ID`  -- 요청_권한_그룹_아이디
		);

-- 개인정보_접근_이력
CREATE TABLE `dbo`.`VECTORX_PRV_ACC_HIST` (
	`PRV_ACC_ID`      NUMERIC       NOT NULL COMMENT '개인정보_접근_아이디', -- 개인정보_접근_아이디
	`MNU_ID`          NUMERIC       NULL     COMMENT '메뉴_아이디', -- 메뉴_아이디
	`FNC_ID`          VARCHAR(50)   NULL     COMMENT '기능_아이디', -- 기능_아이디
	`MNU_NM`          VARCHAR(50)   NULL     COMMENT '메뉴_명', -- 메뉴_명
	`FNC_NM`          VARCHAR(50)   NULL     COMMENT '기능_명', -- 기능_명
	`ACC_RSN_DV_CD`   CHAR(2)       NOT NULL COMMENT '접근_사유_구분_코드', -- 접근_사유_구분_코드
	`ACC_RSN_CONT`    VARCHAR(4000) NOT NULL COMMENT '접근_사유_내용', -- 접근_사유_내용
	`ACC_USR_ID`      VARCHAR(20)   NULL     COMMENT '접근_사용자_아이디', -- 접근_사용자_아이디
	`ACC_USR_NM`      VARCHAR(50)   NULL     COMMENT '접근_사용자_명', -- 접근_사용자_명
	`ACC_USR_DEPT_NM` VARCHAR(50)   NULL     COMMENT '접근_사용자_부서_명', -- 접근_사용자_부서_명
	`PROC_ID`         VARCHAR(50)   NULL     COMMENT '프로세스_아이디', -- 프로세스_아이디
	`REQ_ID`          VARCHAR(50)   NULL     COMMENT '요청_아이디', -- 요청_아이디
	`REG_DTTM`        DATETIME      NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`      VARCHAR(20)   NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`      VARCHAR(20)   NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`        DATETIME      NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID`      VARCHAR(20)   NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP`      VARCHAR(20)   NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '개인정보_접근_이력';

-- 개인정보_접근_이력
ALTER TABLE `dbo`.`VECTORX_PRV_ACC_HIST`
	ADD CONSTRAINT `PK_VECTORX_PRV_ACC_HIST` -- 개인정보_접근_이력 기본키
		PRIMARY KEY (
			`PRV_ACC_ID` -- 개인정보_접근_아이디
		);

-- 인터페이스_요청_제어
CREATE TABLE `dbo`.`VECTORX_IFS_REQ_CTRL` (
	`REQ_CTRL_ID`  NUMERIC       NOT NULL COMMENT '요청_제어_아이디', -- 요청_제어_아이디
	`SYS_CD`       VARCHAR(20)   NOT NULL COMMENT '시스템_코드', -- 시스템_코드
	`TITLE`        VARCHAR(100)  NOT NULL COMMENT '제목', -- 제목
	`RMK`          VARCHAR(1000) NULL     COMMENT '비고', -- 비고
	`URL_PTRN_VAL` VARCHAR(1000) NOT NULL COMMENT 'URL_패턴_값', -- URL_패턴_값
	`USE_YN`       CHAR(1)       NOT NULL COMMENT '사용_여부', -- 사용_여부
	`REG_DTTM`     DATETIME      NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`   VARCHAR(20)   NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`   VARCHAR(20)   NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`     DATETIME      NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID`   VARCHAR(20)   NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP`   VARCHAR(20)   NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '인터페이스_요청_제어';

-- 인터페이스_요청_제어
ALTER TABLE `dbo`.`VECTORX_IFS_REQ_CTRL`
	ADD CONSTRAINT `PK_VECTORX_IFS_REQ_CTRL` -- 인터페이스_요청_제어 Primary key
		PRIMARY KEY (
			`REQ_CTRL_ID` -- 요청_제어_아이디
		);

-- 인터페이스_요청_제어_채널
CREATE TABLE `dbo`.`VECTORX_IFS_REQ_CTRL_CHNL` (
	`REQ_CTRL_ID` NUMERIC     NOT NULL COMMENT '요청_제어_아이디', -- 요청_제어_아이디
	`CHNL_CD`     VARCHAR(20) NOT NULL COMMENT '채널_코드', -- 채널_코드
	`CTRL_MIN`    NUMERIC     NOT NULL COMMENT '제어_분', -- 제어_분
	`MAX_REQ_NUM` NUMERIC     NOT NULL COMMENT '최대_요청_수', -- 최대_요청_수
	`REG_DTTM`    DATETIME    NOT NULL COMMENT '등록_일시', -- 등록_일시
	`REG_USR_ID`  VARCHAR(20) NULL     COMMENT '등록_사용자_아이디', -- 등록_사용자_아이디
	`REG_USR_IP`  VARCHAR(20) NULL     COMMENT '등록_사용자_아이피', -- 등록_사용자_아이피
	`UPD_DTTM`    DATETIME    NULL     COMMENT '수정_일시', -- 수정_일시
	`UPD_USR_ID`  VARCHAR(20) NULL     COMMENT '수정_사용자_아이디', -- 수정_사용자_아이디
	`UPD_USR_IP`  VARCHAR(20) NULL     COMMENT '수정_사용자_아이피' -- 수정_사용자_아이피
)
COMMENT '인터페이스_요청_제어_채널';

-- 인터페이스_요청_제어_채널
ALTER TABLE `dbo`.`VECTORX_IFS_REQ_CTRL_CHNL`
	ADD CONSTRAINT `PK_VECTORX_IFS_REQ_CTRL_CHNL` -- 인터페이스_요청_제어_채널 Primary key
		PRIMARY KEY (
			`REQ_CTRL_ID`, -- 요청_제어_아이디
			`CHNL_CD`      -- 채널_코드
		);