-- SQ_VECTORX_AUTH_GRP_HIST_01
CREATE SEQUENCE IF NOT EXISTS SQ_VECTORX_AUTH_GRP_HIST_01 START WITH 1 INCREMENT BY 1;

-- SQ_VECTORX_AUTH_HIST_01
CREATE SEQUENCE IF NOT EXISTS SQ_VECTORX_AUTH_HIST_01 START WITH 1 INCREMENT BY 1;

-- SQ_VECTORX_AUTH_01
CREATE SEQUENCE IF NOT EXISTS SQ_VECTORX_AUTH_01 START WITH 1 INCREMENT BY 1;

-- SQ_VECTORX_IFS_HIST_01
CREATE SEQUENCE IF NOT EXISTS SQ_VECTORX_IFS_HIST_01 START WITH 1 INCREMENT BY 1;

-- SQ_VECTORX_MNU_01
CREATE SEQUENCE IF NOT EXISTS SQ_VECTORX_MNU_01 START WITH 1 INCREMENT BY 1;

-- SQ_VECTORX_POSTS_01
CREATE SEQUENCE IF NOT EXISTS SQ_VECTORX_POSTS_01 START WITH 1 INCREMENT BY 1;

-- SQ_VECTORX_DBMS_QRY_HIST_01
CREATE SEQUENCE IF NOT EXISTS SQ_VECTORX_DBMS_QRY_HIST_01 START WITH 1 INCREMENT BY 1;

-- SQ_VECTORX_USR_APV_01
CREATE SEQUENCE IF NOT EXISTS SQ_VECTORX_USR_APV_01 START WITH 1 INCREMENT BY 1;

-- SQ_VECTORX_MNU_ACC_HIST_01
CREATE SEQUENCE IF NOT EXISTS SQ_VECTORX_MNU_ACC_HIST_01 START WITH 1 INCREMENT BY 1;

-- SQ_VECTORX_LOGIN_HIST_01
CREATE SEQUENCE IF NOT EXISTS SQ_VECTORX_LOGIN_HIST_01 START WITH 1 INCREMENT BY 1;

-- SQ_VECTORX_APP_STT_01
CREATE SEQUENCE IF NOT EXISTS SQ_VECTORX_APP_STT_01 START WITH 1 INCREMENT BY 1;

-- SQ_VECTORX_PRV_ACC_HIST_01
CREATE SEQUENCE IF NOT EXISTS SQ_VECTORX_PRV_ACC_HIST_01 START WITH 1 INCREMENT BY 1;



-- 어플리케이션_상태
CREATE TABLE IF NOT EXISTS VECTORX_APP_STT
(
    APP_STT_ID      INTEGER       NOT NULL, -- 어플리케이션_상태_아이디
    APLY_SRT_DTTM   TIMESTAMP     NULL,     -- 적용_시작_일시
    APLY_END_DTTM   TIMESTAMP     NULL,     -- 적용_종료_일시
    STT_TY_CD       VARCHAR(20)   NULL,     -- 상태_유형_코드
    ACC_ALW_IP_LIST VARCHAR(1000) NULL,     -- 접속_허용_아이피_목록
    USE_YN          CHARACTER(1)       NULL,     -- 사용_여부
    TITLE           VARCHAR(50)   NULL,     -- 제목
    REDT_URL        VARCHAR(1000) NULL,     -- 리다이렉트_URL
    CTRL_SCOP_TY_CD CHARACTER(3)       NULL,     -- 제어_범위_유형_코드
    SCOP_URL        VARCHAR(1000) NULL,     -- 범위_URL
    EXPS_MSG        VARCHAR(1000) NULL,     -- 노출_메시지
    SYS_CD          CHARACTER(2)       NULL,     -- 시스템_코드
    REG_DTTM        TIMESTAMP     NOT NULL, -- 등록_일시
    REG_USR_ID      VARCHAR(20)   NULL,     -- 등록_사용자_아이디
    REG_USR_IP      VARCHAR(20)   NULL,     -- 등록_사용자_아이피
    UPD_DTTM        TIMESTAMP     NULL,     -- 수정_일시
    UPD_USR_ID      VARCHAR(20)   NULL,     -- 수정_사용자_아이디
    UPD_USR_IP      VARCHAR(20)   NULL      -- 수정_사용자_아이피
    );

-- 어플리케이션_상태
COMMENT ON TABLE VECTORX_APP_STT IS '어플리케이션_상태';

-- 어플리케이션_상태_아이디
COMMENT ON COLUMN VECTORX_APP_STT.APP_STT_ID IS '어플리케이션_상태_아이디';

-- 적용_시작_일시
COMMENT ON COLUMN VECTORX_APP_STT.APLY_SRT_DTTM IS '적용_시작_일시';

-- 적용_종료_일시
COMMENT ON COLUMN VECTORX_APP_STT.APLY_END_DTTM IS '적용_종료_일시';

-- 상태_유형_코드
COMMENT ON COLUMN VECTORX_APP_STT.STT_TY_CD IS '상태_유형_코드';

-- 접속_허용_아이피_목록
COMMENT ON COLUMN VECTORX_APP_STT.ACC_ALW_IP_LIST IS '접속_허용_아이피_목록';

-- 사용_여부
COMMENT ON COLUMN VECTORX_APP_STT.USE_YN IS '사용_여부';

-- 제목
COMMENT ON COLUMN VECTORX_APP_STT.TITLE IS '제목';

-- 리다이렉트_URL
COMMENT ON COLUMN VECTORX_APP_STT.REDT_URL IS '리다이렉트_URL';

-- 제어_범위_유형_코드
COMMENT ON COLUMN VECTORX_APP_STT.CTRL_SCOP_TY_CD IS '제어_범위_유형_코드';

-- 범위_URL
COMMENT ON COLUMN VECTORX_APP_STT.SCOP_URL IS '범위_URL';

-- 노출_메시지
COMMENT ON COLUMN VECTORX_APP_STT.EXPS_MSG IS '노출_메시지';

-- 시스템_코드
COMMENT ON COLUMN VECTORX_APP_STT.SYS_CD IS '시스템_코드';

-- 등록_일시
COMMENT ON COLUMN VECTORX_APP_STT.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_APP_STT.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_APP_STT.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_APP_STT.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_APP_STT.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_APP_STT.UPD_USR_IP IS '수정_사용자_아이피';


-- 어플리케이션_상태 기본키
ALTER TABLE VECTORX_APP_STT ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_APP_STT PRIMARY KEY(APP_STT_ID);






-- 어플리케이션_상태_메뉴
CREATE TABLE IF NOT EXISTS VECTORX_APP_STT_MNU
(
    MNU_ID     INTEGER            NOT NULL, -- 메뉴_아이디
    APP_STT_ID INTEGER            NOT NULL, -- 어플리케이션_상태_아이디
    REG_DTTM   TIMESTAMP          NOT NULL, -- 등록_일시
    REG_USR_ID VARCHAR(20)        NULL,     -- 등록_사용자_아이디
    REG_USR_IP VARCHAR(20)        NULL,     -- 등록_사용자_아이피
    UPD_DTTM   TIMESTAMP          NULL,     -- 수정_일시
    UPD_USR_ID VARCHAR(20)        NULL,     -- 수정_사용자_아이디
    UPD_USR_IP VARCHAR(20)        NULL      -- 수정_사용자_아이피
    );

-- 어플리케이션_상태_메뉴
COMMENT ON TABLE VECTORX_APP_STT_MNU IS '어플리케이션_상태_메뉴';

-- 메뉴_아이디
COMMENT ON COLUMN VECTORX_APP_STT_MNU.MNU_ID IS '메뉴_아이디';

-- 어플리케이션_상태_아이디
COMMENT ON COLUMN VECTORX_APP_STT_MNU.APP_STT_ID IS '어플리케이션_상태_아이디';

-- 등록_일시
COMMENT ON COLUMN VECTORX_APP_STT_MNU.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_APP_STT_MNU.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_APP_STT_MNU.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_APP_STT_MNU.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_APP_STT_MNU.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_APP_STT_MNU.UPD_USR_IP IS '수정_사용자_아이피';

-- 어플리케이션_상태_메뉴 기본키
ALTER TABLE VECTORX_APP_STT_MNU ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_APP_STT_MNU PRIMARY KEY(MNU_ID, APP_STT_ID);




-- 권한
CREATE TABLE IF NOT EXISTS VECTORX_AUTH
(
    AUTH_ID          INTEGER       NOT NULL, -- 권한_아이디
    AUTH_GRP_ID      INTEGER       NULL,     -- 권한_그룹_아이디
    USR_ID           VARCHAR(20)   NULL,     -- 사용자_아이디
    AUTH_TY_CD       VARCHAR(20)   NULL,     -- 권한_유형_코드
    ADD_ROL_LIST_VAL VARCHAR(1000) NULL,     -- 추가_역할_목록_값
    USE_SRT_DT       VARCHAR(8)    NULL,     -- 사용_시작_일자
    USE_END_DT       VARCHAR(8)    NULL,     -- 사용_종료_일자
    REG_DTTM         TIMESTAMP     NOT NULL, -- 등록_일시
    REG_USR_ID       VARCHAR(20)   NULL,     -- 등록_사용자_아이디
    REG_USR_IP       VARCHAR(20)   NULL,     -- 등록_사용자_아이피
    UPD_DTTM         TIMESTAMP     NULL,     -- 수정_일시
    UPD_USR_ID       VARCHAR(20)   NULL,     -- 수정_사용자_아이디
    UPD_USR_IP       VARCHAR(20)   NULL      -- 수정_사용자_아이피
    );

-- 권한
COMMENT ON TABLE VECTORX_AUTH IS '권한';

-- 권한_아이디
COMMENT ON COLUMN VECTORX_AUTH.AUTH_ID IS '권한_아이디';

-- 권한_그룹_아이디
COMMENT ON COLUMN VECTORX_AUTH.AUTH_GRP_ID IS '권한_그룹_아이디';

-- 사용자_아이디
COMMENT ON COLUMN VECTORX_AUTH.USR_ID IS '사용자_아이디';

-- 권한_유형_코드
COMMENT ON COLUMN VECTORX_AUTH.AUTH_TY_CD IS '권한_유형_코드';

-- 추가_역할_목록_값
COMMENT ON COLUMN VECTORX_AUTH.ADD_ROL_LIST_VAL IS '추가_역할_목록_값';

-- 사용_시작_일자
COMMENT ON COLUMN VECTORX_AUTH.USE_SRT_DT IS '사용_시작_일자';

-- 사용_종료_일자
COMMENT ON COLUMN VECTORX_AUTH.USE_END_DT IS '사용_종료_일자';

-- 등록_일시
COMMENT ON COLUMN VECTORX_AUTH.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_AUTH.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_AUTH.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_AUTH.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_AUTH.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_AUTH.UPD_USR_IP IS '수정_사용자_아이피';

-- 권한 인덱스
CREATE INDEX IF NOT EXISTS IX_VECTORX_AUTH
    ON VECTORX_AUTH
    ( -- 권한
    USE_SRT_DT ASC -- 사용_시작_일자
    );


-- 권한 인덱스2
CREATE INDEX IF NOT EXISTS IX_VECTORX_AUTH2
    ON VECTORX_AUTH
    ( -- 권한
    USE_END_DT ASC -- 사용_종료_일자
    );


-- 권한 기본키
ALTER TABLE VECTORX_AUTH ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_AUTH PRIMARY KEY(AUTH_ID);


-- 권한_승인
CREATE TABLE IF NOT EXISTS VECTORX_AUTH_APV
(
    USR_APV_ID          INTEGER       NOT NULL, -- 사용자_승인_아이디
    AUTH_ID             INTEGER       NOT NULL, -- 권한_아이디
    USE_SRT_DT          VARCHAR(8)    NULL,     -- 사용_시작_일자
    USE_END_DT          VARCHAR(8)    NULL,     -- 사용_종료_일자
    USR_AUTH_GRP_DEL_YN CHARACTER(1)       NULL     DEFAULT 'N', -- 사용자_권한_그룹_삭제_여부
    ADD_ROL_LIST_VAL    VARCHAR(1000) NULL,     -- 추가_역할_목록_값
    REG_DTTM            TIMESTAMP     NOT NULL, -- 등록_일시
    REG_USR_ID          VARCHAR(20)   NULL,     -- 등록_사용자_아이디
    REG_USR_IP          VARCHAR(20)   NULL,     -- 등록_사용자_아이피
    UPD_DTTM            TIMESTAMP     NULL,     -- 수정_일시
    UPD_USR_ID          VARCHAR(20)   NULL,     -- 수정_사용자_아이디
    UPD_USR_IP          VARCHAR(20)   NULL      -- 수정_사용자_아이피
    );

-- 권한_승인
COMMENT ON TABLE VECTORX_AUTH_APV IS '권한_승인';

-- 사용자_승인_아이디
COMMENT ON COLUMN VECTORX_AUTH_APV.USR_APV_ID IS '사용자_승인_아이디';

-- 권한_아이디
COMMENT ON COLUMN VECTORX_AUTH_APV.AUTH_ID IS '권한_아이디';

-- 사용_시작_일자
COMMENT ON COLUMN VECTORX_AUTH_APV.USE_SRT_DT IS '사용_시작_일자';

-- 사용_종료_일자
COMMENT ON COLUMN VECTORX_AUTH_APV.USE_END_DT IS '사용_종료_일자';

-- 사용자_권한_그룹_삭제_여부
COMMENT ON COLUMN VECTORX_AUTH_APV.USR_AUTH_GRP_DEL_YN IS '사용자_권한_그룹_삭제_여부';

-- 추가_역할_목록_값
COMMENT ON COLUMN VECTORX_AUTH_APV.ADD_ROL_LIST_VAL IS '추가_역할_목록_값';

-- 등록_일시
COMMENT ON COLUMN VECTORX_AUTH_APV.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_AUTH_APV.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_AUTH_APV.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_AUTH_APV.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_AUTH_APV.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_AUTH_APV.UPD_USR_IP IS '수정_사용자_아이피';

-- 권한_승인 기본키
ALTER TABLE VECTORX_AUTH_APV ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_AUTH_APV PRIMARY KEY(USR_APV_ID);






-- 권한_그룹
CREATE TABLE IF NOT EXISTS VECTORX_AUTH_GRP
(
    AUTH_GRP_ID        INTEGER       NOT NULL, -- 권한_그룹_아이디
    UPR_AUTH_GRP_ID    INTEGER       NULL,     -- 상위_권한_그룹_아이디
    AUTH_GRP_DV_VAL    VARCHAR(10)   NULL,     -- 권한_그룹_구분_값
    AUTH_GRP_NM        VARCHAR(100)  NULL,     -- 권한_그룹_명
    SRT_NO             INTEGER       NULL,     -- 정렬_번호
    AUTH_GRP_DESC      VARCHAR(1000) NULL,     -- 권한_그룹_설명
    USE_YN             CHARACTER(1)       NULL,     -- 사용_여부
    DEL_YN             CHARACTER(1)       NULL     DEFAULT 'N', -- 삭제_여부
    PRV_TRT_YN         CHARACTER(1)       NULL     DEFAULT 'N', -- 개인정보_취급_여부
    SYS_CD             CHARACTER(2)       NULL,     -- 시스템_코드
    APV_GRP_YN         CHARACTER(1)       NULL     DEFAULT 'N', -- 승인_그룹_여부
    APV_NEC_YN         CHARACTER(1)       NULL,     -- 승인_필요_여부
    AUTH_GRP_STEP_NO   INTEGER       NULL,     -- 권한_그룹_단계_번호
    ADD_ROL_LIST_VAL   VARCHAR(1000) NULL,     -- 추가_역할_목록_값
    USE_DV_CD_LIST_VAL VARCHAR(500)  NULL,     -- 사용_구분_코드_목록_값
    REG_DTTM           TIMESTAMP     NOT NULL, -- 등록_일시
    REG_USR_ID         VARCHAR(20)   NULL,     -- 등록_사용자_아이디
    REG_USR_IP         VARCHAR(20)   NULL,     -- 등록_사용자_아이피
    UPD_DTTM           TIMESTAMP     NULL,     -- 수정_일시
    UPD_USR_ID         VARCHAR(20)   NULL,     -- 수정_사용자_아이디
    UPD_USR_IP         VARCHAR(20)   NULL      -- 수정_사용자_아이피
    );

-- 권한_그룹
COMMENT ON TABLE VECTORX_AUTH_GRP IS '권한_그룹';

-- 권한_그룹_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP.AUTH_GRP_ID IS '권한_그룹_아이디';

-- 상위_권한_그룹_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP.UPR_AUTH_GRP_ID IS '상위_권한_그룹_아이디';

-- 권한_그룹_구분_값
COMMENT ON COLUMN VECTORX_AUTH_GRP.AUTH_GRP_DV_VAL IS '권한_그룹_구분_값';

-- 권한_그룹_명
COMMENT ON COLUMN VECTORX_AUTH_GRP.AUTH_GRP_NM IS '권한_그룹_명';

-- 정렬_번호
COMMENT ON COLUMN VECTORX_AUTH_GRP.SRT_NO IS '정렬_번호';

-- 권한_그룹_설명
COMMENT ON COLUMN VECTORX_AUTH_GRP.AUTH_GRP_DESC IS '권한_그룹_설명';

-- 사용_여부
COMMENT ON COLUMN VECTORX_AUTH_GRP.USE_YN IS '사용_여부';

-- 삭제_여부
COMMENT ON COLUMN VECTORX_AUTH_GRP.DEL_YN IS '삭제_여부';

-- 개인정보_취급_여부
COMMENT ON COLUMN VECTORX_AUTH_GRP.PRV_TRT_YN IS '개인정보_취급_여부';

-- 시스템_코드
COMMENT ON COLUMN VECTORX_AUTH_GRP.SYS_CD IS '시스템_코드';

-- 승인_그룹_여부
COMMENT ON COLUMN VECTORX_AUTH_GRP.APV_GRP_YN IS '승인_그룹_여부';

-- 승인_필요_여부
COMMENT ON COLUMN VECTORX_AUTH_GRP.APV_NEC_YN IS '승인_필요_여부';

-- 권한_그룹_단계_번호
COMMENT ON COLUMN VECTORX_AUTH_GRP.AUTH_GRP_STEP_NO IS '권한_그룹_단계_번호';

-- 추가_역할_목록_값
COMMENT ON COLUMN VECTORX_AUTH_GRP.ADD_ROL_LIST_VAL IS '추가_역할_목록_값';

-- 사용_구분_코드_목록_값
COMMENT ON COLUMN VECTORX_AUTH_GRP.USE_DV_CD_LIST_VAL IS '사용_구분_코드_목록_값';

-- 등록_일시
COMMENT ON COLUMN VECTORX_AUTH_GRP.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_AUTH_GRP.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_AUTH_GRP.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_AUTH_GRP.UPD_USR_IP IS '수정_사용자_아이피';

-- 권한_그룹 기본키
ALTER TABLE VECTORX_AUTH_APV ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_AUTH_APV PRIMARY KEY(AUTH_GRP_ID);









-- 권한_그룹_승인
CREATE TABLE IF NOT EXISTS VECTORX_AUTH_GRP_APV
(
    USR_APV_ID         INTEGER            NOT NULL, -- 사용자_승인_아이디
    AUTH_GRP_ID        INTEGER            NOT NULL, -- 권한_그룹_아이디
    UPR_AUTH_GRP_ID    INTEGER            NULL,     -- 상위_권한_그룹_아이디
    AUTH_GRP_NM        VARCHAR(100)       NULL,     -- 권한_그룹_명
    SRT_NO             INTEGER            NULL,     -- 정렬_번호
    AUTH_GRP_DESC      VARCHAR(1000)      NULL,     -- 권한_그룹_설명
    USE_YN             CHARACTER(1)            NULL,     -- 사용_여부
    DEL_YN             CHARACTER(1)            NULL     DEFAULT 'N', -- 삭제_여부
    PRV_TRT_YN         CHARACTER(1)            NULL     DEFAULT 'N', -- 개인정보_취급_여부
    SYS_CD             CHARACTER(2)            NULL,     -- 시스템_코드
    APV_GRP_YN         CHARACTER(1)            NULL     DEFAULT 'N', -- 승인_그룹_여부
    APV_NEC_YN         CHARACTER(1)            NULL,     -- 승인_필요_여부
    AUTH_GRP_STEP_NO   INTEGER            NULL,     -- 권한_그룹_단계_번호
    ADD_ROL_LIST_VAL   VARCHAR(1000)      NULL,     -- 추가_역할_목록_값
    USE_DV_CD_LIST_VAL VARCHAR(500)       NULL,     -- 사용_구분_코드_목록_값
    REG_DTTM           TIMESTAMP          NOT NULL, -- 등록_일시
    REG_USR_ID         VARCHAR(20)        NULL,     -- 등록_사용자_아이디
    REG_USR_IP         VARCHAR(20)        NULL,     -- 등록_사용자_아이피
    UPD_DTTM           TIMESTAMP          NULL,     -- 수정_일시
    UPD_USR_ID         VARCHAR(20)        NULL,     -- 수정_사용자_아이디
    UPD_USR_IP         VARCHAR(20)        NULL      -- 수정_사용자_아이피
    );

-- 권한_그룹_승인
COMMENT ON TABLE VECTORX_AUTH_GRP_APV IS '권한_그룹_승인';

-- 사용자_승인_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV.USR_APV_ID IS '사용자_승인_아이디';

-- 권한_그룹_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV.AUTH_GRP_ID IS '권한_그룹_아이디';

-- 상위_권한_그룹_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV.UPR_AUTH_GRP_ID IS '상위_권한_그룹_아이디';

-- 권한_그룹_명
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV.AUTH_GRP_NM IS '권한_그룹_명';

-- 정렬_번호
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV.SRT_NO IS '정렬_번호';

-- 권한_그룹_설명
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV.AUTH_GRP_DESC IS '권한_그룹_설명';

-- 사용_여부
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV.USE_YN IS '사용_여부';

-- 삭제_여부
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV.DEL_YN IS '삭제_여부';

-- 개인정보_취급_여부
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV.PRV_TRT_YN IS '개인정보_취급_여부';

-- 시스템_코드
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV.SYS_CD IS '시스템_코드';

-- 승인_그룹_여부
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV.APV_GRP_YN IS '승인_그룹_여부';

-- 승인_필요_여부
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV.APV_NEC_YN IS '승인_필요_여부';

-- 권한_그룹_단계_번호
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV.AUTH_GRP_STEP_NO IS '권한_그룹_단계_번호';

-- 추가_역할_목록_값
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV.ADD_ROL_LIST_VAL IS '추가_역할_목록_값';

-- 사용_구분_코드_목록_값
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV.USE_DV_CD_LIST_VAL IS '사용_구분_코드_목록_값';

-- 등록_일시
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV.UPD_USR_IP IS '수정_사용자_아이피';

-- 권한_그룹_승인 기본키
ALTER TABLE VECTORX_AUTH_GRP_APV ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_AUTH_GRP_APV PRIMARY KEY(USR_APV_ID, AUTH_GRP_ID);







-- 권한_그룹_승인_단계
CREATE TABLE IF NOT EXISTS VECTORX_AUTH_GRP_APV_STEP
(
    AUTH_GRP_ID     INTEGER     NOT NULL, -- 권한_그룹_아이디
    STEP_NO         INTEGER     NOT NULL, -- 단계_번호
    STEP_DV_CD      CHARACTER(2)     NULL,     -- 단계_구분_코드
    APV_AUTH_GRP_ID INTEGER     NULL,     -- 승인_권한_그룹_아이디
    APV_USR_ID      INTEGER     NULL,     -- 승인_사용자_아이디
    APV_PRC_DV_CD   CHARACTER(2)     NULL,     -- 승인_처리_구분_코드
    REG_DTTM        TIMESTAMP   NOT NULL, -- 등록_일시
    REG_USR_ID      INTEGER     NULL,     -- 등록_사용자_아이디
    REG_USR_IP      VARCHAR(20) NULL,     -- 등록_사용자_아이피
    UPD_DTTM        TIMESTAMP   NULL,     -- 수정_일시
    UPD_USR_ID      INTEGER     NULL,     -- 수정_사용자_아이디
    UPD_USR_IP      VARCHAR(20) NULL      -- 수정_사용자_아이피
    );

-- 권한_그룹_승인_단계
COMMENT ON TABLE VECTORX_AUTH_GRP_APV_STEP IS '권한_그룹_승인_단계';

-- 권한_그룹_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV_STEP.AUTH_GRP_ID IS '권한_그룹_아이디';

-- 단계_번호
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV_STEP.STEP_NO IS '단계_번호';

-- 단계_구분_코드
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV_STEP.STEP_DV_CD IS '단계_구분_코드';

-- 승인_권한_그룹_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV_STEP.APV_AUTH_GRP_ID IS '승인_권한_그룹_아이디';

-- 승인_사용자_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV_STEP.APV_USR_ID IS '승인_사용자_아이디';

-- 승인_처리_구분_코드
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV_STEP.APV_PRC_DV_CD IS '승인_처리_구분_코드';

-- 등록_일시
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV_STEP.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV_STEP.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV_STEP.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV_STEP.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV_STEP.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV_STEP.UPD_USR_IP IS '수정_사용자_아이피';

-- 권한_그룹_승인_단계 기본키
ALTER TABLE VECTORX_AUTH_GRP_APV_STEP ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_AUTH_GRP_APV_STEP PRIMARY KEY(AUTH_GRP_ID, STEP_NO);





-- 권한_그룹_승인_사용자
CREATE TABLE IF NOT EXISTS VECTORX_AUTH_GRP_APV_USR
(
    USR_APV_ID  INTEGER            NOT NULL, -- 사용자_승인_아이디
    USR_ID      VARCHAR(20)        NOT NULL, -- 사용자_아이디
    AUTH_GRP_ID INTEGER            NOT NULL, -- 권한_그룹_아이디
    REG_DTTM    TIMESTAMP          NOT NULL, -- 등록_일시
    REG_USR_ID  VARCHAR(20)        NULL,     -- 등록_사용자_아이디
    REG_USR_IP  VARCHAR(20)        NULL,     -- 등록_사용자_아이피
    UPD_DTTM    TIMESTAMP          NULL,     -- 수정_일시
    UPD_USR_ID  VARCHAR(20)        NULL,     -- 수정_사용자_아이디
    UPD_USR_IP  VARCHAR(20)        NULL      -- 수정_사용자_아이피
    );

-- 권한_그룹_승인_사용자
COMMENT ON TABLE VECTORX_AUTH_GRP_APV_USR IS '권한_그룹_승인_사용자';

-- 사용자_승인_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV_USR.USR_APV_ID IS '사용자_승인_아이디';

-- 사용자_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV_USR.USR_ID IS '사용자_아이디';

-- 권한_그룹_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV_USR.AUTH_GRP_ID IS '권한_그룹_아이디';

-- 등록_일시
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV_USR.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV_USR.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV_USR.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV_USR.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV_USR.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV_USR.UPD_USR_IP IS '수정_사용자_아이피';

-- 권한_그룹_승인_사용자 기본키
ALTER TABLE VECTORX_AUTH_GRP_APV_USR ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_AUTH_GRP_APV_USR PRIMARY KEY(USR_APV_ID, USR_ID, AUTH_GRP_ID);







-- 권한_그룹_승인_사용자_요청_대상_그룹
CREATE TABLE IF NOT EXISTS VECTORX_AUTH_GRP_APV_USR_REQ_TGT_GRP
(
    USR_APV_ID      INTEGER            NOT NULL, -- 사용자_승인_아이디
    AUTH_GRP_ID     INTEGER            NOT NULL, -- 권한_그룹_아이디
    REQ_AUTH_GRP_ID INTEGER            NOT NULL, -- 요청_권한_그룹_아이디
    REG_DTTM        TIMESTAMP          NOT NULL, -- 등록_일시
    REG_USR_ID      INTEGER            NULL,     -- 등록_사용자_아이디
    REG_USR_IP      VARCHAR(20)        NULL,     -- 등록_사용자_아이피
    UPD_DTTM        TIMESTAMP          NULL,     -- 수정_일시
    UPD_USR_ID      INTEGER            NULL,     -- 수정_사용자_아이디
    UPD_USR_IP      VARCHAR(20)        NULL      -- 수정_사용자_아이피
    );

-- 권한_그룹_승인_사용자_요청_대상_그룹
COMMENT ON TABLE VECTORX_AUTH_GRP_APV_USR_REQ_TGT_GRP IS '권한_그룹_승인_사용자_요청_대상_그룹';

-- 사용자_승인_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV_USR_REQ_TGT_GRP.USR_APV_ID IS '사용자_승인_아이디';

-- 권한_그룹_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV_USR_REQ_TGT_GRP.AUTH_GRP_ID IS '권한_그룹_아이디';

-- 요청_권한_그룹_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV_USR_REQ_TGT_GRP.REQ_AUTH_GRP_ID IS '요청_권한_그룹_아이디';

-- 등록_일시
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV_USR_REQ_TGT_GRP.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV_USR_REQ_TGT_GRP.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV_USR_REQ_TGT_GRP.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV_USR_REQ_TGT_GRP.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV_USR_REQ_TGT_GRP.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_AUTH_GRP_APV_USR_REQ_TGT_GRP.UPD_USR_IP IS '수정_사용자_아이피';

-- 권한_그룹_승인_사용자_요청_대상_그룹 Primary key
ALTER TABLE VECTORX_AUTH_GRP_APV_USR_REQ_TGT_GRP ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_AUTH_GRP_APV_USR_REQ_TGT_GRP PRIMARY KEY(USR_APV_ID, AUTH_GRP_ID, REQ_AUTH_GRP_ID);







-- 권한_그룹_이력
CREATE TABLE IF NOT EXISTS VECTORX_AUTH_GRP_HIST
(
    AUTH_GRP_HIST_ID   BIGINT        NOT NULL, -- 권한_그룹_이력_아이디
    AUTH_GRP_ID        INTEGER       NOT NULL, -- 권한_그룹_아이디
    AUTH_GRP_DV_VAL    VARCHAR(10)   NULL,     -- 권한_그룹_구분_값
    INP_DTTM           TIMESTAMP     NOT NULL, -- 입력_일시
    UPR_AUTH_GRP_ID    INTEGER       NULL,     -- 상위_권한_그룹_아이디
    AUTH_GRP_NM        VARCHAR(100)  NULL,     -- 권한_그룹_명
    SRT_NO             INTEGER       NULL,     -- 정렬_번호
    AUTH_GRP_DESC      VARCHAR(1000) NULL,     -- 권한_그룹_설명
    USE_YN             CHARACTER(1)       NULL,     -- 사용_여부
    DEL_YN             CHARACTER(1)       NULL     DEFAULT 'N', -- 삭제_여부
    PRV_TRT_YN         CHARACTER(1)       NULL     DEFAULT 'N', -- 개인정보_취급_여부
    SYS_CD             VARCHAR(20)   NULL,     -- 시스템_코드
    APV_GRP_YN         CHARACTER(1)       NULL     DEFAULT 'N', -- 승인_그룹_여부
    APV_NEC_YN         CHARACTER(1)       NULL,     -- 승인_필요_여부
    AUTH_GRP_STEP_NO   INTEGER       NULL,     -- 권한_그룹_단계_번호
    WORK_DV_CD         CHARACTER(1)       NULL,     -- 업무_구분_코드
    ADD_ROL_LIST_VAL   VARCHAR(1000) NULL,     -- 추가_역할_목록_값
    USE_DV_CD_LIST_VAL VARCHAR(500)  NULL,     -- 사용_구분_코드_목록_값
    REG_DTTM           TIMESTAMP     NOT NULL, -- 등록_일시
    REG_USR_ID         VARCHAR(20)   NULL,     -- 등록_사용자_아이디
    REG_USR_IP         VARCHAR(20)   NULL,     -- 등록_사용자_아이피
    UPD_DTTM           TIMESTAMP     NULL,     -- 수정_일시
    UPD_USR_ID         VARCHAR(20)   NULL,     -- 수정_사용자_아이디
    UPD_USR_IP         VARCHAR(20)   NULL      -- 수정_사용자_아이피
    );

-- 권한_그룹_이력
COMMENT ON TABLE VECTORX_AUTH_GRP_HIST IS '권한_그룹_이력';

-- 권한_그룹_이력_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_HIST.AUTH_GRP_HIST_ID IS '권한_그룹_이력_아이디';

-- 권한_그룹_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_HIST.AUTH_GRP_ID IS '권한_그룹_아이디';

-- 권한_그룹_구분_값
COMMENT ON COLUMN VECTORX_AUTH_GRP_HIST.AUTH_GRP_DV_VAL IS '권한_그룹_구분_값';

-- 입력_일시
COMMENT ON COLUMN VECTORX_AUTH_GRP_HIST.INP_DTTM IS '입력_일시';

-- 상위_권한_그룹_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_HIST.UPR_AUTH_GRP_ID IS '상위_권한_그룹_아이디';

-- 권한_그룹_명
COMMENT ON COLUMN VECTORX_AUTH_GRP_HIST.AUTH_GRP_NM IS '권한_그룹_명';

-- 정렬_번호
COMMENT ON COLUMN VECTORX_AUTH_GRP_HIST.SRT_NO IS '정렬_번호';

-- 권한_그룹_설명
COMMENT ON COLUMN VECTORX_AUTH_GRP_HIST.AUTH_GRP_DESC IS '권한_그룹_설명';

-- 사용_여부
COMMENT ON COLUMN VECTORX_AUTH_GRP_HIST.USE_YN IS '사용_여부';

-- 삭제_여부
COMMENT ON COLUMN VECTORX_AUTH_GRP_HIST.DEL_YN IS '삭제_여부';

-- 개인정보_취급_여부
COMMENT ON COLUMN VECTORX_AUTH_GRP_HIST.PRV_TRT_YN IS '개인정보_취급_여부';

-- 시스템_코드
COMMENT ON COLUMN VECTORX_AUTH_GRP_HIST.SYS_CD IS '시스템_코드';

-- 승인_그룹_여부
COMMENT ON COLUMN VECTORX_AUTH_GRP_HIST.APV_GRP_YN IS '승인_그룹_여부';

-- 승인_필요_여부
COMMENT ON COLUMN VECTORX_AUTH_GRP_HIST.APV_NEC_YN IS '승인_필요_여부';

-- 권한_그룹_단계_번호
COMMENT ON COLUMN VECTORX_AUTH_GRP_HIST.AUTH_GRP_STEP_NO IS '권한_그룹_단계_번호';

-- 업무_구분_코드
COMMENT ON COLUMN VECTORX_AUTH_GRP_HIST.WORK_DV_CD IS '업무_구분_코드';

-- 추가_역할_목록_값
COMMENT ON COLUMN VECTORX_AUTH_GRP_HIST.ADD_ROL_LIST_VAL IS '추가_역할_목록_값';

-- 사용_구분_코드_목록_값
COMMENT ON COLUMN VECTORX_AUTH_GRP_HIST.USE_DV_CD_LIST_VAL IS '사용_구분_코드_목록_값';

-- 등록_일시
COMMENT ON COLUMN VECTORX_AUTH_GRP_HIST.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_HIST.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_AUTH_GRP_HIST.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_AUTH_GRP_HIST.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_HIST.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_AUTH_GRP_HIST.UPD_USR_IP IS '수정_사용자_아이피';

-- 권한_그룹_이력 인덱스
CREATE INDEX IF NOT EXISTS IX_VECTORX_AUTH_GRP_HIST
    ON VECTORX_AUTH_GRP_HIST
    ( -- 권한_그룹_이력
    INP_DTTM ASC -- 입력_일시
    );

-- 권한_그룹_이력 인덱스
COMMENT ON INDEX IX_VECTORX_AUTH_GRP_HIST IS '권한_그룹_이력 인덱스';

-- 권한_그룹_이력 인덱스2
CREATE INDEX IF NOT EXISTS IX_VECTORX_AUTH_GRP_HIST2
    ON VECTORX_AUTH_GRP_HIST
    ( -- 권한_그룹_이력
    AUTH_GRP_ID ASC -- 권한_그룹_아이디
    );

-- 권한_그룹_이력 인덱스2
COMMENT ON INDEX IX_VECTORX_AUTH_GRP_HIST2 IS '권한_그룹_이력 인덱스2';

-- 권한_그룹_이력 Primary key
ALTER TABLE VECTORX_AUTH_GRP_HIST ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_AUTH_GRP_HIST PRIMARY KEY(AUTH_GRP_HIST_ID);








-- 권한_그룹_사용자
CREATE TABLE IF NOT EXISTS VECTORX_AUTH_GRP_USR
(
    USR_ID      VARCHAR(20) NOT NULL, -- 사용자_아이디
    AUTH_GRP_ID INTEGER     NOT NULL, -- 권한_그룹_아이디
    REG_DTTM    TIMESTAMP   NOT NULL, -- 등록_일시
    REG_USR_ID  VARCHAR(20) NULL,     -- 등록_사용자_아이디
    REG_USR_IP  VARCHAR(20) NULL,     -- 등록_사용자_아이피
    UPD_DTTM    TIMESTAMP   NULL,     -- 수정_일시
    UPD_USR_ID  VARCHAR(20) NULL,     -- 수정_사용자_아이디
    UPD_USR_IP  VARCHAR(20) NULL      -- 수정_사용자_아이피
    );

-- 권한_그룹_사용자
COMMENT ON TABLE VECTORX_AUTH_GRP_USR IS '권한_그룹_사용자';

-- 사용자_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_USR.USR_ID IS '사용자_아이디';

-- 권한_그룹_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_USR.AUTH_GRP_ID IS '권한_그룹_아이디';

-- 등록_일시
COMMENT ON COLUMN VECTORX_AUTH_GRP_USR.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_USR.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_AUTH_GRP_USR.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_AUTH_GRP_USR.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_USR.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_AUTH_GRP_USR.UPD_USR_IP IS '수정_사용자_아이피';

-- 권한_그룹_사용자 기본키
ALTER TABLE VECTORX_AUTH_GRP_USR ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_AUTH_GRP_USR PRIMARY KEY(USR_ID, AUTH_GRP_ID);









-- 권한_그룹_사용자_이력
CREATE TABLE IF NOT EXISTS VECTORX_AUTH_GRP_USR_HIST
(
    AUTH_GRP_HIST_ID BIGINT      NOT NULL, -- 권한_그룹_이력_아이디
    AUTH_GRP_ID      INTEGER     NOT NULL, -- 권한_그룹_아이디
    USR_ID           VARCHAR(20) NOT NULL, -- 사용자_아이디
    WORK_DV_CD       CHARACTER(1)     NOT NULL, -- 업무_구분_코드
    REG_DTTM         TIMESTAMP   NOT NULL, -- 등록_일시
    REG_USR_ID       VARCHAR(20) NULL,     -- 등록_사용자_아이디
    REG_USR_IP       VARCHAR(20) NULL,     -- 등록_사용자_아이피
    UPD_DTTM         TIMESTAMP   NULL,     -- 수정_일시
    UPD_USR_ID       VARCHAR(20) NULL,     -- 수정_사용자_아이디
    UPD_USR_IP       VARCHAR(20) NULL      -- 수정_사용자_아이피
    );

-- 권한_그룹_사용자_이력
COMMENT ON TABLE VECTORX_AUTH_GRP_USR_HIST IS '권한_그룹_사용자_이력';

-- 권한_그룹_이력_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_USR_HIST.AUTH_GRP_HIST_ID IS '권한_그룹_이력_아이디';

-- 권한_그룹_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_USR_HIST.AUTH_GRP_ID IS '권한_그룹_아이디';

-- 사용자_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_USR_HIST.USR_ID IS '사용자_아이디';

-- 업무_구분_코드
COMMENT ON COLUMN VECTORX_AUTH_GRP_USR_HIST.WORK_DV_CD IS '업무_구분_코드';

-- 등록_일시
COMMENT ON COLUMN VECTORX_AUTH_GRP_USR_HIST.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_USR_HIST.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_AUTH_GRP_USR_HIST.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_AUTH_GRP_USR_HIST.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_USR_HIST.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_AUTH_GRP_USR_HIST.UPD_USR_IP IS '수정_사용자_아이피';

-- 권한_그룹_사용자_이력 인덱스
CREATE INDEX IF NOT EXISTS IX_VECTORX_AUTH_GRP_USR_HIST
    ON VECTORX_AUTH_GRP_USR_HIST
    ( -- 권한_그룹_사용자_이력
    REG_DTTM ASC -- 등록_일시
    );

-- 권한_그룹_사용자_이력 인덱스
COMMENT ON INDEX IX_VECTORX_AUTH_GRP_USR_HIST IS '권한_그룹_사용자_이력 인덱스';

-- 권한_그룹_사용자_이력 Primary key
ALTER TABLE VECTORX_AUTH_GRP_USR_HIST ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_AUTH_GRP_USR_HIST PRIMARY KEY(AUTH_GRP_HIST_ID, AUTH_GRP_ID, USR_ID);









-- 권한_그룹_사용자_요청_대상_그룹
CREATE TABLE IF NOT EXISTS VECTORX_AUTH_GRP_USR_REQ_TGT_GRP
(
    AUTH_GRP_ID     INTEGER     NOT NULL, -- 권한_그룹_아이디
    REQ_AUTH_GRP_ID INTEGER     NOT NULL, -- 요청_권한_그룹_아이디
    REG_DTTM        TIMESTAMP   NOT NULL, -- 등록_일시
    REG_USR_ID      INTEGER     NULL,     -- 등록_사용자_아이디
    REG_USR_IP      VARCHAR(20) NULL,     -- 등록_사용자_아이피
    UPD_DTTM        TIMESTAMP   NULL,     -- 수정_일시
    UPD_USR_ID      INTEGER     NULL,     -- 수정_사용자_아이디
    UPD_USR_IP      VARCHAR(20) NULL      -- 수정_사용자_아이피
    );

-- 권한_그룹_사용자_요청_대상_그룹
COMMENT ON TABLE VECTORX_AUTH_GRP_USR_REQ_TGT_GRP IS '권한_그룹_사용자_요청_대상_그룹';

-- 권한_그룹_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_USR_REQ_TGT_GRP.AUTH_GRP_ID IS '권한_그룹_아이디';

-- 요청_권한_그룹_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_USR_REQ_TGT_GRP.REQ_AUTH_GRP_ID IS '요청_권한_그룹_아이디';

-- 등록_일시
COMMENT ON COLUMN VECTORX_AUTH_GRP_USR_REQ_TGT_GRP.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_USR_REQ_TGT_GRP.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_AUTH_GRP_USR_REQ_TGT_GRP.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_AUTH_GRP_USR_REQ_TGT_GRP.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_AUTH_GRP_USR_REQ_TGT_GRP.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_AUTH_GRP_USR_REQ_TGT_GRP.UPD_USR_IP IS '수정_사용자_아이피';

-- 권한_그룹_사용자_요청_대상_그룹 Primary key
ALTER TABLE VECTORX_AUTH_GRP_USR_REQ_TGT_GRP ADD CONSTRAINT IF NOT EXISTS PK_USTR_ATH_GRP_RQ_TGT_GRP PRIMARY KEY(AUTH_GRP_ID, AUTH_GRP_ID, REQ_AUTH_GRP_ID);









-- 권한_이력
CREATE TABLE IF NOT EXISTS VECTORX_AUTH_HIST
(
    AUTH_HIST_ID     BIGINT        NOT NULL, -- 권한_이력_아이디
    AUTH_ID          INTEGER       NOT NULL, -- 권한_아이디
    INP_DTTM         TIMESTAMP     NOT NULL, -- 입력_일시
    AUTH_GRP_ID      INTEGER       NULL,     -- 권한_그룹_아이디
    USR_ID           VARCHAR(50)   NULL,     -- 사용자_아이디
    AUTH_TY_CD       VARCHAR(20)   NULL,     -- 권한_유형_코드
    USE_SRT_DT       VARCHAR(8)    NULL,     -- 사용_시작_일자
    USE_END_DT       VARCHAR(8)    NULL,     -- 사용_종료_일자
    WORK_DV_CD       CHARACTER(1)       NULL,     -- 업무_구분_코드
    ADD_ROL_LIST_VAL VARCHAR(1000) NULL,     -- 추가_역할_목록_값
    REG_DTTM         TIMESTAMP     NOT NULL, -- 등록_일시
    REG_USR_ID       VARCHAR(20)   NULL,     -- 등록_사용자_아이디
    REG_USR_IP       VARCHAR(20)   NULL,     -- 등록_사용자_아이피
    UPD_DTTM         TIMESTAMP     NULL,     -- 수정_일시
    UPD_USR_ID       VARCHAR(20)   NULL,     -- 수정_사용자_아이디
    UPD_USR_IP       VARCHAR(20)   NULL      -- 수정_사용자_아이피
    );

-- 권한_이력
COMMENT ON TABLE VECTORX_AUTH_HIST IS '권한_이력';

-- 권한_이력_아이디
COMMENT ON COLUMN VECTORX_AUTH_HIST.AUTH_HIST_ID IS '권한_이력_아이디';

-- 권한_아이디
COMMENT ON COLUMN VECTORX_AUTH_HIST.AUTH_ID IS '권한_아이디';

-- 입력_일시
COMMENT ON COLUMN VECTORX_AUTH_HIST.INP_DTTM IS '입력_일시';

-- 권한_그룹_아이디
COMMENT ON COLUMN VECTORX_AUTH_HIST.AUTH_GRP_ID IS '권한_그룹_아이디';

-- 사용자_아이디
COMMENT ON COLUMN VECTORX_AUTH_HIST.USR_ID IS '사용자_아이디';

-- 권한_유형_코드
COMMENT ON COLUMN VECTORX_AUTH_HIST.AUTH_TY_CD IS '권한_유형_코드';

-- 사용_시작_일자
COMMENT ON COLUMN VECTORX_AUTH_HIST.USE_SRT_DT IS '사용_시작_일자';

-- 사용_종료_일자
COMMENT ON COLUMN VECTORX_AUTH_HIST.USE_END_DT IS '사용_종료_일자';

-- 업무_구분_코드
COMMENT ON COLUMN VECTORX_AUTH_HIST.WORK_DV_CD IS '업무_구분_코드';

-- 추가_역할_목록_값
COMMENT ON COLUMN VECTORX_AUTH_HIST.ADD_ROL_LIST_VAL IS '추가_역할_목록_값';

-- 등록_일시
COMMENT ON COLUMN VECTORX_AUTH_HIST.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_AUTH_HIST.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_AUTH_HIST.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_AUTH_HIST.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_AUTH_HIST.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_AUTH_HIST.UPD_USR_IP IS '수정_사용자_아이피';

-- 권한_이력 인덱스
CREATE INDEX IF NOT EXISTS IX_VECTORX_AUTH_HIST
    ON VECTORX_AUTH_HIST
    ( -- 권한_이력
    INP_DTTM ASC -- 입력_일시
    );

-- 권한_이력 인덱스
COMMENT ON INDEX IX_VECTORX_AUTH_HIST IS '권한_이력 인덱스';

-- 권한_이력 인덱스2
CREATE INDEX IF NOT EXISTS IX_VECTORX_AUTH_HIST2
    ON VECTORX_AUTH_HIST
    ( -- 권한_이력
    AUTH_ID ASC -- 권한_아이디
    );

-- 권한_이력 인덱스2
COMMENT ON INDEX IX_VECTORX_AUTH_HIST2 IS '권한_이력 인덱스2';

-- 권한_이력 Primary key
ALTER TABLE VECTORX_AUTH_HIST ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_AUTH_HIST PRIMARY KEY(AUTH_HIST_ID);









-- 배치_매니저
CREATE TABLE IF NOT EXISTS VECTORX_BAT_MNGR
(
    MNGR_ID    INTEGER       NOT NULL, -- 매니저_아이디
    URL        VARCHAR(1000) NULL,     -- URL
    MSTR_YN    CHARACTER(1)       NOT NULL, -- 마스터_여부
    USE_YN     CHARACTER(1)       NOT NULL, -- 사용_여부
    REG_DTTM   TIMESTAMP     NULL,     -- 등록_일시
    REG_USR_ID INTEGER       NULL,     -- 등록_사용자_아이디
    REG_USR_IP VARCHAR(20)   NULL,     -- 등록_사용자_아이피
    UPD_DTTM   TIMESTAMP     NULL,     -- 수정_일시
    UPD_USR_ID INTEGER       NULL,     -- 수정_사용자_아이디
    UPD_USR_IP VARCHAR(20)   NULL      -- 수정_사용자_아이피
    );

-- 배치_매니저
COMMENT ON TABLE VECTORX_BAT_MNGR IS '배치_매니저';

-- 매니저_아이디
COMMENT ON COLUMN VECTORX_BAT_MNGR.MNGR_ID IS '매니저_아이디';

-- URL
COMMENT ON COLUMN VECTORX_BAT_MNGR.URL IS 'URL';

-- 마스터_여부
COMMENT ON COLUMN VECTORX_BAT_MNGR.MSTR_YN IS '마스터_여부';

-- 사용_여부
COMMENT ON COLUMN VECTORX_BAT_MNGR.USE_YN IS '사용_여부';

-- 등록_일시
COMMENT ON COLUMN VECTORX_BAT_MNGR.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_BAT_MNGR.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_BAT_MNGR.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_BAT_MNGR.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_BAT_MNGR.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_BAT_MNGR.UPD_USR_IP IS '수정_사용자_아이피';

-- 배치_매니저 기본키
ALTER TABLE VECTORX_BAT_MNGR ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_BAT_MNGR PRIMARY KEY(MNGR_ID);






-- 배치_작업
CREATE TABLE IF NOT EXISTS VECTORX_BAT_TASK
(
    TASK_ID     INTEGER       NOT NULL, -- 작업_아이디
    TASK_NM     VARCHAR(50)   NOT NULL, -- 작업_명
    TASK_DESC   VARCHAR(1000) NULL,     -- 작업_설명
    USE_YN      CHARACTER(1)       NULL,     -- 사용_여부
    WIP_PLCY_CD CHARACTER(2)       NULL,     -- 작업중_정책_코드
    DLY_S       INTEGER       NULL,     -- 지연_시간(S)
    REG_DTTM    TIMESTAMP     NULL,     -- 등록_일시
    REG_USR_ID  INTEGER       NULL,     -- 등록_사용자_아이디
    REG_USR_IP  VARCHAR(20)   NULL,     -- 등록_사용자_아이피
    UPD_DTTM    TIMESTAMP     NULL,     -- 수정_일시
    UPD_USR_ID  INTEGER       NULL,     -- 수정_사용자_아이디
    UPD_USR_IP  VARCHAR(20)   NULL      -- 수정_사용자_아이피
    );

-- 배치_작업
COMMENT ON TABLE VECTORX_BAT_TASK IS '배치_작업';

-- 작업_아이디
COMMENT ON COLUMN VECTORX_BAT_TASK.TASK_ID IS '작업_아이디';

-- 작업_명
COMMENT ON COLUMN VECTORX_BAT_TASK.TASK_NM IS '작업_명';

-- 작업_설명
COMMENT ON COLUMN VECTORX_BAT_TASK.TASK_DESC IS '작업_설명';

-- 사용_여부
COMMENT ON COLUMN VECTORX_BAT_TASK.USE_YN IS '사용_여부';

-- 작업중_정책_코드
COMMENT ON COLUMN VECTORX_BAT_TASK.WIP_PLCY_CD IS '작업중_정책_코드';

-- 지연_시간(S)
COMMENT ON COLUMN VECTORX_BAT_TASK.DLY_S IS '지연_시간(S)';

-- 등록_일시
COMMENT ON COLUMN VECTORX_BAT_TASK.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_BAT_TASK.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_BAT_TASK.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_BAT_TASK.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_BAT_TASK.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_BAT_TASK.UPD_USR_IP IS '수정_사용자_아이피';

-- 배치_작업 기본키
ALTER TABLE VECTORX_BAT_TASK ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_BAT_TASK PRIMARY KEY(TASK_ID);





-- 배치_작업_실행
CREATE TABLE IF NOT EXISTS VECTORX_BAT_TASK_EXEC
(
    TASK_EXEC_ID       CHARACTER(36)     NOT NULL, -- 작업_실행_아이디
    WRKR_ID            INTEGER      NULL,     -- 워커_아이디
    MNGR_ID            INTEGER      NOT NULL, -- 매니저_아이디
    TASK_ID            INTEGER      NOT NULL, -- 작업_아이디
    TASK_SCHDL_TYPE_CD CHARACTER(2)      NOT NULL, -- 작업_스케줄_유형_코드
    TASK_SCHDL_EXPR    VARCHAR(100) NOT NULL, -- 작업_스케줄_표현식
    SRT_DTTM           TIMESTAMP    NULL,     -- 시작_일시
    END_DTTM           TIMESTAMP    NULL,     -- 종료_일시
    STT_CD             CHARACTER(2)      NOT NULL, -- 상태_코드
    RSLT_CD            CHARACTER(2)      NULL,     -- 결과_코드
    REG_DTTM           TIMESTAMP    NOT NULL, -- 등록_일시
    REG_USR_ID         INTEGER      NOT NULL, -- 등록_사용자_아이디
    REG_USR_IP         VARCHAR(20)  NOT NULL, -- 등록_사용자_아이피
    UPD_DTTM           TIMESTAMP    NOT NULL, -- 수정_일시
    UPD_USR_ID         INTEGER      NOT NULL, -- 수정_사용자_아이디
    UPD_USR_IP         VARCHAR(20)  NOT NULL  -- 수정_사용자_아이피
    );

-- 배치_작업_실행
COMMENT ON TABLE VECTORX_BAT_TASK_EXEC IS '배치_작업_실행';

-- 작업_실행_아이디
COMMENT ON COLUMN VECTORX_BAT_TASK_EXEC.TASK_EXEC_ID IS '작업_실행_아이디';

-- 워커_아이디
COMMENT ON COLUMN VECTORX_BAT_TASK_EXEC.WRKR_ID IS '워커_아이디';

-- 매니저_아이디
COMMENT ON COLUMN VECTORX_BAT_TASK_EXEC.MNGR_ID IS '매니저_아이디';

-- 작업_아이디
COMMENT ON COLUMN VECTORX_BAT_TASK_EXEC.TASK_ID IS '작업_아이디';

-- 작업_스케줄_유형_코드
COMMENT ON COLUMN VECTORX_BAT_TASK_EXEC.TASK_SCHDL_TYPE_CD IS '작업_스케줄_유형_코드';

-- 작업_스케줄_표현식
COMMENT ON COLUMN VECTORX_BAT_TASK_EXEC.TASK_SCHDL_EXPR IS '작업_스케줄_표현식';

-- 시작_일시
COMMENT ON COLUMN VECTORX_BAT_TASK_EXEC.SRT_DTTM IS '시작_일시';

-- 종료_일시
COMMENT ON COLUMN VECTORX_BAT_TASK_EXEC.END_DTTM IS '종료_일시';

-- 상태_코드
COMMENT ON COLUMN VECTORX_BAT_TASK_EXEC.STT_CD IS '상태_코드';

-- 결과_코드
COMMENT ON COLUMN VECTORX_BAT_TASK_EXEC.RSLT_CD IS '결과_코드';

-- 등록_일시
COMMENT ON COLUMN VECTORX_BAT_TASK_EXEC.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_BAT_TASK_EXEC.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_BAT_TASK_EXEC.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_BAT_TASK_EXEC.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_BAT_TASK_EXEC.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_BAT_TASK_EXEC.UPD_USR_IP IS '수정_사용자_아이피';

-- 배치_작업_실행 기본키
ALTER TABLE VECTORX_BAT_TASK_EXEC ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_BAT_TASK_EXEC PRIMARY KEY(TASK_EXEC_ID);







-- 배치_작업_스케줄
CREATE TABLE IF NOT EXISTS VECTORX_BAT_TASK_SCHDL
(
    TASK_ID            INTEGER           NOT NULL, -- 작업_아이디
    TASK_SCHDL_NO      INTEGER           NOT NULL, -- 작업_스케줄_번호
    TASK_SCHDL_TYPE_CD CHARACTER(2)           NOT NULL, -- 작업_스케줄_유형_코드
    TASK_SCHDL_EXPR    VARCHAR(100) NOT NULL, -- 작업_스케줄_표현식
    USE_YN             CHARACTER(1)           NOT NULL  -- 사용_여부
    );

-- 배치_작업_스케줄
COMMENT ON TABLE VECTORX_BAT_TASK_SCHDL IS '배치_작업_스케줄';

-- 작업_아이디
COMMENT ON COLUMN VECTORX_BAT_TASK_SCHDL.TASK_ID IS '작업_아이디';

-- 작업_스케줄_번호
COMMENT ON COLUMN VECTORX_BAT_TASK_SCHDL.TASK_SCHDL_NO IS '작업_스케줄_번호';

-- 작업_스케줄_유형_코드
COMMENT ON COLUMN VECTORX_BAT_TASK_SCHDL.TASK_SCHDL_TYPE_CD IS '작업_스케줄_유형_코드';

-- 작업_스케줄_표현식
COMMENT ON COLUMN VECTORX_BAT_TASK_SCHDL.TASK_SCHDL_EXPR IS '작업_스케줄_표현식';

-- 사용_여부
COMMENT ON COLUMN VECTORX_BAT_TASK_SCHDL.USE_YN IS '사용_여부';


-- 배치_작업_실행 기본키
ALTER TABLE VECTORX_BAT_TASK_SCHDL ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_BAT_TASK_SCHDL PRIMARY KEY(TASK_ID, TASK_SCHDL_NO);






-- 배치_작업_워커
CREATE TABLE IF NOT EXISTS VECTORX_BAT_TASK_WRKR
(
    TASK_ID    INTEGER     NOT NULL, --  작업_아이디
    WRKR_ID    INTEGER     NOT NULL, -- 워커_아이디
    REG_DTTM   TIMESTAMP   NULL,     -- 등록_일시
    REG_USR_ID INTEGER     NULL,     -- 등록_사용자_아이디
    REG_USR_IP VARCHAR(20) NULL,     -- 등록_사용자_아이피
    UPD_DTTM   TIMESTAMP   NULL,     -- 수정_일시
    UPD_USR_ID INTEGER     NULL,     -- 수정_사용자_아이디
    UPD_USR_IP VARCHAR(20) NULL      -- 수정_사용자_아이피
    );

-- 배치_작업_워커
COMMENT ON TABLE VECTORX_BAT_TASK_WRKR IS '배치_작업_워커';

--  작업_아이디
COMMENT ON COLUMN VECTORX_BAT_TASK_WRKR.TASK_ID IS ' 작업_아이디';

-- 워커_아이디
COMMENT ON COLUMN VECTORX_BAT_TASK_WRKR.WRKR_ID IS '워커_아이디';

-- 등록_일시
COMMENT ON COLUMN VECTORX_BAT_TASK_WRKR.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_BAT_TASK_WRKR.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_BAT_TASK_WRKR.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_BAT_TASK_WRKR.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_BAT_TASK_WRKR.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_BAT_TASK_WRKR.UPD_USR_IP IS '수정_사용자_아이피';


-- 배치_작업_실행 기본키
ALTER TABLE VECTORX_BAT_TASK_WRKR ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_BAT_TASK_WRKR PRIMARY KEY(TASK_ID, WRKR_ID);





-- 배치_워커
CREATE TABLE IF NOT EXISTS VECTORX_BAT_WRKR
(
    WRKR_ID    INTEGER       NOT NULL, -- 워커_아이디
    URL        VARCHAR(1000) NULL,     -- URL
    CPCT       INTEGER       NULL,     -- 수용량
    USE_YN     CHARACTER(1)       NULL,     -- 사용_여부
    REG_DTTM   TIMESTAMP     NULL,     -- 등록_일시
    REG_USR_ID INTEGER       NULL,     -- 등록_사용자_아이디
    REG_USR_IP VARCHAR(20)   NULL,     -- 등록_사용자_아이피
    UPD_DTTM   TIMESTAMP     NULL,     -- 수정_일시
    UPD_USR_ID INTEGER       NULL,     -- 수정_사용자_아이디
    UPD_USR_IP VARCHAR(20)   NULL      -- 수정_사용자_아이피
    );

-- 배치_워커
COMMENT ON TABLE VECTORX_BAT_WRKR IS '배치_워커';

-- 워커_아이디
COMMENT ON COLUMN VECTORX_BAT_WRKR.WRKR_ID IS '워커_아이디';

-- URL
COMMENT ON COLUMN VECTORX_BAT_WRKR.URL IS 'URL';

-- 수용량
COMMENT ON COLUMN VECTORX_BAT_WRKR.CPCT IS '수용량';

-- 사용_여부
COMMENT ON COLUMN VECTORX_BAT_WRKR.USE_YN IS '사용_여부';

-- 등록_일시
COMMENT ON COLUMN VECTORX_BAT_WRKR.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_BAT_WRKR.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_BAT_WRKR.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_BAT_WRKR.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_BAT_WRKR.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_BAT_WRKR.UPD_USR_IP IS '수정_사용자_아이피';

-- 배치_워커 기본키
ALTER TABLE VECTORX_BAT_WRKR ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_BAT_WRKR PRIMARY KEY(WRKR_ID);








-- 공통_코드
CREATE TABLE IF NOT EXISTS VECTORX_CMM_CD
(
    GRP_CD     VARCHAR(20)   NOT NULL, -- 그룹_코드
    DTL_CD     VARCHAR(20)   NOT NULL, -- 상세_코드
    CD_NM      VARCHAR(50)   NULL,     -- 코드_명
    CD_DESC    VARCHAR(1000) NULL,     -- 코드_설명
    UPR_GRP_CD VARCHAR(20)   NULL,     -- 상위_그룹_코드
    UPR_DTL_CD VARCHAR(20)   NULL,     -- 상위_상세_코드
    SRT_NO     INTEGER       NULL     DEFAULT 0, -- 정렬_번호
    USE_YN     CHARACTER(1)       NULL,     -- 사용_여부
    RMK        VARCHAR(1000) NULL,     -- 비고
    ETC1       VARCHAR(50)   NULL,     -- 기타1
    ETC2       VARCHAR(50)   NULL,     -- 기타2
    ETC3       VARCHAR(50)   NULL,     -- 기타3
    ETC4       VARCHAR(50)   NULL,     -- 기타4
    ETC5       VARCHAR(50)   NULL,     -- 기타5
    LCLS_CD    VARCHAR(10)   NULL,     -- 대분류_코드
    LCLS_NM    VARCHAR(100)  NULL,     -- 대분류_명
    MCLS_CD    VARCHAR(10)   NULL,     -- 중분류_코드
    MCLS_NM    VARCHAR(100)  NULL,     -- 중분류_명
    GRP_NM     VARCHAR(100)  NULL,     -- 그룹_명
    CD_LEN     INTEGER       NULL,     -- 코드_길이
    REG_DTTM   TIMESTAMP     NOT NULL, -- 등록_일시
    REG_USR_ID VARCHAR(20)   NULL,     -- 등록_사용자_아이디
    REG_USR_IP VARCHAR(20)   NULL,     -- 등록_사용자_아이피
    UPD_DTTM   TIMESTAMP     NULL,     -- 수정_일시
    UPD_USR_ID VARCHAR(20)   NULL,     -- 수정_사용자_아이디
    UPD_USR_IP VARCHAR(20)   NULL      -- 수정_사용자_아이피
    );

-- 공통_코드
COMMENT ON TABLE VECTORX_CMM_CD IS '공통_코드';

-- 그룹_코드
COMMENT ON COLUMN VECTORX_CMM_CD.GRP_CD IS '코드를 관리하는 코드 그룹 문자';

-- 상세_코드
COMMENT ON COLUMN VECTORX_CMM_CD.DTL_CD IS '그룹코드 값에 따른 코드 정보';

-- 코드_명
COMMENT ON COLUMN VECTORX_CMM_CD.CD_NM IS '코드_명';

-- 코드_설명
COMMENT ON COLUMN VECTORX_CMM_CD.CD_DESC IS '코드_설명';

-- 상위_그룹_코드
COMMENT ON COLUMN VECTORX_CMM_CD.UPR_GRP_CD IS '상위_그룹_코드';

-- 상위_상세_코드
COMMENT ON COLUMN VECTORX_CMM_CD.UPR_DTL_CD IS '상위_상세_코드';

-- 정렬_번호
COMMENT ON COLUMN VECTORX_CMM_CD.SRT_NO IS '정렬_번호';

-- 사용_여부
COMMENT ON COLUMN VECTORX_CMM_CD.USE_YN IS '사용_여부';

-- 비고
COMMENT ON COLUMN VECTORX_CMM_CD.RMK IS '비고';

-- 기타1
COMMENT ON COLUMN VECTORX_CMM_CD.ETC1 IS '기타1';

-- 기타2
COMMENT ON COLUMN VECTORX_CMM_CD.ETC2 IS '기타2';

-- 기타3
COMMENT ON COLUMN VECTORX_CMM_CD.ETC3 IS '기타3';

-- 기타4
COMMENT ON COLUMN VECTORX_CMM_CD.ETC4 IS '기타4';

-- 기타5
COMMENT ON COLUMN VECTORX_CMM_CD.ETC5 IS '기타5';

-- 대분류_코드
COMMENT ON COLUMN VECTORX_CMM_CD.LCLS_CD IS '대분류_코드';

-- 대분류_명
COMMENT ON COLUMN VECTORX_CMM_CD.LCLS_NM IS '대분류_명';

-- 중분류_코드
COMMENT ON COLUMN VECTORX_CMM_CD.MCLS_CD IS '중분류_코드';

-- 중분류_명
COMMENT ON COLUMN VECTORX_CMM_CD.MCLS_NM IS '중분류_명';

-- 그룹_명
COMMENT ON COLUMN VECTORX_CMM_CD.GRP_NM IS '그룹_명';

-- 코드_길이
COMMENT ON COLUMN VECTORX_CMM_CD.CD_LEN IS '코드_길이';

-- 등록_일시
COMMENT ON COLUMN VECTORX_CMM_CD.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_CMM_CD.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_CMM_CD.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_CMM_CD.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_CMM_CD.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_CMM_CD.UPD_USR_IP IS '수정_사용자_아이피';

-- 공통_코드 기본키
ALTER TABLE VECTORX_CMM_CD ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_CMM_CD PRIMARY KEY(GRP_CD, DTL_CD);








-- DBMS_쿼리_이력
CREATE TABLE IF NOT EXISTS VECTORX_DBMS_QRY_HIST
(
    DBMS_QRY_HIST_ID BIGINT      NOT NULL, -- DBMS_쿼리_이력_아이디
    PROC_ID          VARCHAR(50) NULL,     -- 프로세스_아이디
    REQ_ID           VARCHAR(50) NULL,     -- 요청_아이디
    ORG_QRY_CONT     TEXT        NULL,     -- 원_쿼리_내용
    EXEC_QRY_CONT    TEXT        NULL,     -- 실행_쿼리_내용
    PROC_MS          BIGINT      NULL,     -- 프로세스_시간(MS)
    REG_DTTM         TIMESTAMP   NOT NULL, -- 등록_일시
    REG_USR_ID       VARCHAR(20) NULL,     -- 등록_사용자_아이디
    REG_USR_IP       VARCHAR(20) NULL,     -- 등록_사용자_아이피
    UPD_DTTM         TIMESTAMP   NULL,     -- 수정_일시
    UPD_USR_ID       VARCHAR(20) NULL,     -- 수정_사용자_아이디
    UPD_USR_IP       VARCHAR(20) NULL      -- 수정_사용자_아이피
    );

-- DBMS_쿼리_이력
COMMENT ON TABLE VECTORX_DBMS_QRY_HIST IS 'DBMS_쿼리_이력';

-- DBMS_쿼리_이력_아이디
COMMENT ON COLUMN VECTORX_DBMS_QRY_HIST.DBMS_QRY_HIST_ID IS 'DBMS_쿼리_이력_아이디';

-- 프로세스_아이디
COMMENT ON COLUMN VECTORX_DBMS_QRY_HIST.PROC_ID IS '프로세스_아이디';

-- 요청_아이디
COMMENT ON COLUMN VECTORX_DBMS_QRY_HIST.REQ_ID IS '요청_아이디';

-- 원_쿼리_내용
COMMENT ON COLUMN VECTORX_DBMS_QRY_HIST.ORG_QRY_CONT IS '원_쿼리_내용';

-- 실행_쿼리_내용
COMMENT ON COLUMN VECTORX_DBMS_QRY_HIST.EXEC_QRY_CONT IS '실행_쿼리_내용';

-- 프로세스_시간(MS)
COMMENT ON COLUMN VECTORX_DBMS_QRY_HIST.PROC_MS IS '프로세스_시간(MS)';

-- 등록_일시
COMMENT ON COLUMN VECTORX_DBMS_QRY_HIST.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_DBMS_QRY_HIST.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_DBMS_QRY_HIST.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_DBMS_QRY_HIST.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_DBMS_QRY_HIST.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_DBMS_QRY_HIST.UPD_USR_IP IS '수정_사용자_아이피';

-- DBMS_쿼리_이력 인덱스
CREATE INDEX IF NOT EXISTS IX_VECTORX_DBMS_QRY_HIST
    ON VECTORX_DBMS_QRY_HIST
    ( -- DBMS_쿼리_이력
    PROC_ID ASC -- 프로세스_아이디
    );

-- DBMS_쿼리_이력 인덱스
COMMENT ON INDEX IX_VECTORX_DBMS_QRY_HIST IS 'DBMS_쿼리_이력 인덱스';

-- DBMS_쿼리_이력 인덱스2
CREATE INDEX IF NOT EXISTS IX_VECTORX_DBMS_QRY_HIST2
    ON VECTORX_DBMS_QRY_HIST
    ( -- DBMS_쿼리_이력
    REQ_ID ASC -- 요청_아이디
    );

-- DBMS_쿼리_이력 인덱스2
COMMENT ON INDEX IX_VECTORX_DBMS_QRY_HIST2 IS 'DBMS_쿼리_이력 인덱스2';


-- DBMS_쿼리_이력
ALTER TABLE VECTORX_DBMS_QRY_HIST ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_DBMS_QRY_HIST PRIMARY KEY(DBMS_QRY_HIST_ID);



-- 파일
CREATE TABLE IF NOT EXISTS VECTORX_FILES
(
    FILE_ID           VARCHAR(50)        NOT NULL, -- 파일_아이디
    FILE_NO           INTEGER            NOT NULL, -- 파일_번호
    MNU_ID            INTEGER            NULL,     -- 메뉴_아이디
    FILE_GRP_ID       VARCHAR(50)        NOT NULL, -- 파일_그룹_아이디
    FILE_NM           VARCHAR(500)       NULL,     -- 파일_명
    ORG_FILE_NM       VARCHAR(500)       NULL,     -- 기존_파일_명
    FILE_DESC         VARCHAR(1000)      NULL,     -- 파일_설명
    FILE_FMT_CONT     VARCHAR(1000)      NULL,     -- 파일_형식_내용
    SV_PATH           VARCHAR(1000)      NULL,     -- 저장_경로
    FILE_SZ           BIGINT             NULL,     -- 파일_크기
    FILE_CRYT_METH_CD CHARACTER(2)            NOT NULL DEFAULT '00', -- 파일_암호화_방식_코드
    FILE_CRYT_KEY_VAL VARCHAR(1000)      NULL,     -- 파일_암호화_키_값
    FILE_ACC_URL      VARCHAR(1000)      NULL,     -- 파일_접근_URL
    REG_DTTM          TIMESTAMP          NOT NULL, -- 등록_일시
    REG_USR_ID        VARCHAR(20)        NULL,     -- 등록_사용자_아이디
    REG_USR_IP        VARCHAR(20)        NULL,     -- 등록_사용자_아이피
    UPD_DTTM          TIMESTAMP          NULL,     -- 수정_일시
    UPD_USR_ID        VARCHAR(20)        NULL,     -- 수정_사용자_아이디
    UPD_USR_IP        VARCHAR(20)        NULL      -- 수정_사용자_아이피
    );

-- 파일
COMMENT ON TABLE VECTORX_FILES IS '파일';

-- 파일_아이디
COMMENT ON COLUMN VECTORX_FILES.FILE_ID IS '파일_아이디';

-- 파일_번호
COMMENT ON COLUMN VECTORX_FILES.FILE_NO IS '파일_번호';

-- 메뉴_아이디
COMMENT ON COLUMN VECTORX_FILES.MNU_ID IS '메뉴_아이디';

-- 파일_그룹_아이디
COMMENT ON COLUMN VECTORX_FILES.FILE_GRP_ID IS '파일_그룹_아이디';

-- 파일_명
COMMENT ON COLUMN VECTORX_FILES.FILE_NM IS '파일_명';

-- 기존_파일_명
COMMENT ON COLUMN VECTORX_FILES.ORG_FILE_NM IS '기존_파일_명';

-- 파일_설명
COMMENT ON COLUMN VECTORX_FILES.FILE_DESC IS '파일_설명';

-- 파일_형식_내용
COMMENT ON COLUMN VECTORX_FILES.FILE_FMT_CONT IS '파일_형식_내용';

-- 저장_경로
COMMENT ON COLUMN VECTORX_FILES.SV_PATH IS '저장_경로';

-- 파일_크기
COMMENT ON COLUMN VECTORX_FILES.FILE_SZ IS '파일_크기';

-- 파일_암호화_방식_코드
COMMENT ON COLUMN VECTORX_FILES.FILE_CRYT_METH_CD IS '파일_암호화_방식_코드';

-- 파일_암호화_키_값
COMMENT ON COLUMN VECTORX_FILES.FILE_CRYT_KEY_VAL IS '파일_암호화_키_값';

-- 파일_접근_URL
COMMENT ON COLUMN VECTORX_FILES.FILE_ACC_URL IS '파일_접근_URL';

-- 등록_일시
COMMENT ON COLUMN VECTORX_FILES.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_FILES.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_FILES.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_FILES.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_FILES.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_FILES.UPD_USR_IP IS '수정_사용자_아이피';

-- 파일 기본키
ALTER TABLE VECTORX_FILES ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_FILES PRIMARY KEY(FILE_ID, FILE_NO);







-- 파일_그룹
CREATE TABLE IF NOT EXISTS VECTORX_FILE_GRP
(
    FILE_GRP_ID        VARCHAR(50)   NOT NULL, -- 파일_그룹_아이디
    FILE_GRP_NM        VARCHAR(50)   NULL,     -- 파일_그룹_명
    SV_PATH            VARCHAR(1000) NULL,     -- 저장_경로
    MAX_SZ             BIGINT        NULL,     -- 최대_크기
    EXTEN_LMT          VARCHAR(100)  NULL,     -- 확장자_제한
    DIR_STRUCT_CD      VARCHAR(20)   NOT NULL DEFAULT 'RT_DIR', -- 디렉토리_구조_코드
    FILE_NM_SV_METH_CD VARCHAR(20)   NOT NULL DEFAULT '01', -- 파일_명_저장_방식_코드
    WEB_DEF_URL        VARCHAR(1000) NULL,     -- 웹_기본_URL
    USE_YN             CHARACTER(1)       NULL,     -- 사용_여부
    DEL_YN             CHARACTER(1)       NULL     DEFAULT 'N', -- 삭제_여부
    FILE_CRYT_METH_CD  CHARACTER(2)       NOT NULL DEFAULT '00', -- 파일_암호화_방식_코드
    TMP_UPL_USE_YN     CHARACTER(1)       NOT NULL DEFAULT 'N', -- 임시_업로드_사용_여부
    REG_DTTM           TIMESTAMP     NOT NULL, -- 등록_일시
    REG_USR_ID         VARCHAR(20)   NULL,     -- 등록_사용자_아이디
    REG_USR_IP         VARCHAR(20)   NULL,     -- 등록_사용자_아이피
    UPD_DTTM           TIMESTAMP     NULL,     -- 수정_일시
    UPD_USR_ID         VARCHAR(20)   NULL,     -- 수정_사용자_아이디
    UPD_USR_IP         VARCHAR(20)   NULL      -- 수정_사용자_아이피
    );

-- 파일_그룹
COMMENT ON TABLE VECTORX_FILE_GRP IS '파일_그룹';

-- 파일_그룹_아이디
COMMENT ON COLUMN VECTORX_FILE_GRP.FILE_GRP_ID IS '파일_그룹_아이디';

-- 파일_그룹_명
COMMENT ON COLUMN VECTORX_FILE_GRP.FILE_GRP_NM IS '파일_그룹_명';

-- 저장_경로
COMMENT ON COLUMN VECTORX_FILE_GRP.SV_PATH IS '저장_경로';

-- 최대_크기
COMMENT ON COLUMN VECTORX_FILE_GRP.MAX_SZ IS '최대_크기';

-- 확장자_제한
COMMENT ON COLUMN VECTORX_FILE_GRP.EXTEN_LMT IS '확장자_제한';

-- 디렉토리_구조_코드
COMMENT ON COLUMN VECTORX_FILE_GRP.DIR_STRUCT_CD IS '디렉토리_구조_코드';

-- 파일_명_저장_방식_코드
COMMENT ON COLUMN VECTORX_FILE_GRP.FILE_NM_SV_METH_CD IS '파일_명_저장_방식_코드';

-- 웹_기본_URL
COMMENT ON COLUMN VECTORX_FILE_GRP.WEB_DEF_URL IS '웹_기본_URL';

-- 사용_여부
COMMENT ON COLUMN VECTORX_FILE_GRP.USE_YN IS '사용_여부';

-- 삭제_여부
COMMENT ON COLUMN VECTORX_FILE_GRP.DEL_YN IS '삭제_여부';

-- 파일_암호화_방식_코드
COMMENT ON COLUMN VECTORX_FILE_GRP.FILE_CRYT_METH_CD IS '파일_암호화_방식_코드';

-- 임시_업로드_사용_여부
COMMENT ON COLUMN VECTORX_FILE_GRP.TMP_UPL_USE_YN IS '임시_업로드_사용_여부';

-- 등록_일시
COMMENT ON COLUMN VECTORX_FILE_GRP.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_FILE_GRP.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_FILE_GRP.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_FILE_GRP.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_FILE_GRP.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_FILE_GRP.UPD_USR_IP IS '수정_사용자_아이피';

-- 파일_그룹 기본키
ALTER TABLE VECTORX_FILE_GRP ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_FILE_GRP PRIMARY KEY(FILE_GRP_ID);




-- 인터페이스
CREATE TABLE IF NOT EXISTS VECTORX_IFS
(
    IF_ID        VARCHAR(50)   NOT NULL, -- 인터페이스_아이디
    IF_VER       VARCHAR(10)   NOT NULL, -- 인터페이스_버전
    IF_NM        VARCHAR(50)   NULL,     -- 인터페이스_명
    SYS_CD       VARCHAR(20)   NULL,     -- 시스템_코드
    USE_YN       CHARACTER(1)       NULL,     -- 사용_여부
    RMK          VARCHAR(1000) NULL,     -- 비고
    IP_LMT_YN    CHARACTER(1)       NULL     DEFAULT 'N', -- 아이피_제한_여부
    IP_LIST      VARCHAR(1000) NULL,     -- 아이피_목록
    URL          VARCHAR(1000) NULL,     -- URL
    HTTP_METH_CD VARCHAR(20)   NULL,     -- HTTP_메소드_코드
    AUTH_CTRL_YN CHARACTER(1)       NOT NULL DEFAULT 'N', -- 권한_제어_여부
    IF_TY_CD     VARCHAR(20)   NULL,     -- 인터페이스_유형_코드
    IF_LOG_TY_CD VARCHAR(20)   NULL,     -- 인터페이스_로깅_유형_코드
    IF_DIR_CD    VARCHAR(20)   NULL,     -- 인터페이스_방향_코드
    CHNL_LMT_YN  CHARACTER(1)       NOT NULL DEFAULT 'N', -- 채널_제한_여부
    CERT_NEC_YN  CHARACTER(1)       NOT NULL DEFAULT 'N', -- 인증_필요_여부
    REG_DTTM     TIMESTAMP     NOT NULL, -- 등록_일시
    REG_USR_ID   VARCHAR(20)   NULL,     -- 등록_사용자_아이디
    REG_USR_IP   VARCHAR(20)   NULL,     -- 등록_사용자_아이피
    UPD_DTTM     TIMESTAMP     NULL,     -- 수정_일시
    UPD_USR_ID   VARCHAR(20)   NULL,     -- 수정_사용자_아이디
    UPD_USR_IP   VARCHAR(20)   NULL      -- 수정_사용자_아이피
    );

-- 인터페이스
COMMENT ON TABLE VECTORX_IFS IS '인터페이스';

-- 인터페이스_아이디
COMMENT ON COLUMN VECTORX_IFS.IF_ID IS '인터페이스_아이디';

-- 인터페이스_버전
COMMENT ON COLUMN VECTORX_IFS.IF_VER IS '인터페이스_버전';

-- 인터페이스_명
COMMENT ON COLUMN VECTORX_IFS.IF_NM IS '인터페이스_명';

-- 시스템_코드
COMMENT ON COLUMN VECTORX_IFS.SYS_CD IS '시스템_코드';

-- 사용_여부
COMMENT ON COLUMN VECTORX_IFS.USE_YN IS '사용_여부';

-- 비고
COMMENT ON COLUMN VECTORX_IFS.RMK IS '비고';

-- 아이피_제한_여부
COMMENT ON COLUMN VECTORX_IFS.IP_LMT_YN IS '아이피_제한_여부';

-- 아이피_목록
COMMENT ON COLUMN VECTORX_IFS.IP_LIST IS '아이피_목록';

-- URL
COMMENT ON COLUMN VECTORX_IFS.URL IS 'URL';

-- HTTP_메소드_코드
COMMENT ON COLUMN VECTORX_IFS.HTTP_METH_CD IS 'HTTP_메소드_코드';

-- 권한_제어_여부
COMMENT ON COLUMN VECTORX_IFS.AUTH_CTRL_YN IS '권한_제어_여부';

-- 인터페이스_유형_코드
COMMENT ON COLUMN VECTORX_IFS.IF_TY_CD IS '인터페이스_유형_코드';

-- 인터페이스_로깅_유형_코드
COMMENT ON COLUMN VECTORX_IFS.IF_LOG_TY_CD IS '인터페이스_로깅_유형_코드';

-- 인터페이스_방향_코드
COMMENT ON COLUMN VECTORX_IFS.IF_DIR_CD IS '인터페이스_방향_코드';

-- 채널_제한_여부
COMMENT ON COLUMN VECTORX_IFS.CHNL_LMT_YN IS '채널_제한_여부';

-- 인증_필요_여부
COMMENT ON COLUMN VECTORX_IFS.CERT_NEC_YN IS '인증_필요_여부';

-- 등록_일시
COMMENT ON COLUMN VECTORX_IFS.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_IFS.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_IFS.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_IFS.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_IFS.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_IFS.UPD_USR_IP IS '수정_사용자_아이피';

-- 인터페이스 기본키
ALTER TABLE VECTORX_IFS ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_IFS PRIMARY KEY(IF_ID, IF_VER);





-- 인터페이스_이력
CREATE TABLE IF NOT EXISTS VECTORX_IFS_HIST
(
    IF_HIST_ID      BIGINT             NOT NULL, -- 인터페이스_이력_아이디
    PROC_ID         VARCHAR(50)        NULL,     -- 프로세스_아이디
    REQ_ID          VARCHAR(50)        NULL,     -- 요청_아이디
    REQ_NO          INTEGER            NULL,     -- 요청_번호
    IF_ID           VARCHAR(50)        NULL,     -- 인터페이스_아이디
    IF_VER          VARCHAR(10)        NULL,     -- 인터페이스_버전
    IF_NM           VARCHAR(50)        NULL,     -- 인터페이스_명
    SYS_CD          VARCHAR(20)        NULL,     -- 시스템_코드
    CHNL_CD         VARCHAR(20)        NULL,     -- 채널_코드
    RMK             VARCHAR(1000)      NULL,     -- 비고
    URL             VARCHAR(1000)      NULL,     -- URL
    HTTP_METH_CD    VARCHAR(20)        NULL,     -- HTTP_메소드_코드
    SUCC_YN         CHARACTER(1)            NULL,     -- 성공_여부
    RES_CD_VAL      VARCHAR(10)        NULL,     -- 응답_코드_값
    HTTP_STT_CD_VAL VARCHAR(4)         NULL,     -- HTTP_상태_코드_값
    REQ_MSG_CONT    TEXT               NULL,     -- 요청_메시지_내용
    RES_MSG_CONT    TEXT               NULL,     -- 응답_메시지_내용
    REQ_HED_CONT    TEXT               NULL,     -- 요청_헤더_내용
    REQ_PRM_CONT    TEXT               NULL,     -- 요청_파라메터_내용
    RES_HED_CONT    TEXT               NULL,     -- 응답_헤더_내용
    USR_ID          VARCHAR(50)        NULL,     -- 사용자_아이디
    USR_KEY         VARCHAR(50)        NULL,     -- 사용자_키
    MNU_ID          INTEGER            NULL,     -- 메뉴_아이디
    PROC_MS         BIGINT             NULL,     -- 프로세스_시간(MS)
    REG_DTTM        TIMESTAMP          NOT NULL, -- 등록_일시
    REG_USR_ID      VARCHAR(20)        NULL,     -- 등록_사용자_아이디
    REG_USR_IP      VARCHAR(20)        NULL,     -- 등록_사용자_아이피
    UPD_DTTM        TIMESTAMP          NULL,     -- 수정_일시
    UPD_USR_ID      VARCHAR(20)        NULL,     -- 수정_사용자_아이디
    UPD_USR_IP      VARCHAR(20)        NULL      -- 수정_사용자_아이피
    );

-- 인터페이스_이력
COMMENT ON TABLE VECTORX_IFS_HIST IS '인터페이스_이력';

-- 인터페이스_이력_아이디
COMMENT ON COLUMN VECTORX_IFS_HIST.IF_HIST_ID IS '인터페이스_이력_아이디';

-- 프로세스_아이디
COMMENT ON COLUMN VECTORX_IFS_HIST.PROC_ID IS '프로세스_아이디';

-- 요청_아이디
COMMENT ON COLUMN VECTORX_IFS_HIST.REQ_ID IS '요청_아이디';

-- 요청_번호
COMMENT ON COLUMN VECTORX_IFS_HIST.REQ_NO IS '요청_번호';

-- 인터페이스_아이디
COMMENT ON COLUMN VECTORX_IFS_HIST.IF_ID IS '인터페이스_아이디';

-- 인터페이스_버전
COMMENT ON COLUMN VECTORX_IFS_HIST.IF_VER IS '인터페이스_버전';

-- 인터페이스_명
COMMENT ON COLUMN VECTORX_IFS_HIST.IF_NM IS '인터페이스_명';

-- 시스템_코드
COMMENT ON COLUMN VECTORX_IFS_HIST.SYS_CD IS '시스템_코드';

-- 채널_코드
COMMENT ON COLUMN VECTORX_IFS_HIST.CHNL_CD IS '채널_코드';

-- 비고
COMMENT ON COLUMN VECTORX_IFS_HIST.RMK IS '비고';

-- URL
COMMENT ON COLUMN VECTORX_IFS_HIST.URL IS 'URL';

-- HTTP_메소드_코드
COMMENT ON COLUMN VECTORX_IFS_HIST.HTTP_METH_CD IS 'HTTP_메소드_코드';

-- 성공_여부
COMMENT ON COLUMN VECTORX_IFS_HIST.SUCC_YN IS '성공_여부';

-- 응답_코드_값
COMMENT ON COLUMN VECTORX_IFS_HIST.RES_CD_VAL IS '응답_코드_값';

-- HTTP_상태_코드_값
COMMENT ON COLUMN VECTORX_IFS_HIST.HTTP_STT_CD_VAL IS 'HTTP_상태_코드_값';

-- 요청_메시지_내용
COMMENT ON COLUMN VECTORX_IFS_HIST.REQ_MSG_CONT IS '요청_메시지_내용';

-- 응답_메시지_내용
COMMENT ON COLUMN VECTORX_IFS_HIST.RES_MSG_CONT IS '응답_메시지_내용';

-- 요청_헤더_내용
COMMENT ON COLUMN VECTORX_IFS_HIST.REQ_HED_CONT IS '요청_헤더_내용';

-- 요청_파라메터_내용
COMMENT ON COLUMN VECTORX_IFS_HIST.REQ_PRM_CONT IS '요청_파라메터_내용';

-- 응답_헤더_내용
COMMENT ON COLUMN VECTORX_IFS_HIST.RES_HED_CONT IS '응답_헤더_내용';

-- 사용자_아이디
COMMENT ON COLUMN VECTORX_IFS_HIST.USR_ID IS '사용자_아이디';

-- 사용자_키
COMMENT ON COLUMN VECTORX_IFS_HIST.USR_KEY IS '사용자_키';

-- 메뉴_아이디
COMMENT ON COLUMN VECTORX_IFS_HIST.MNU_ID IS '메뉴_아이디';

-- 프로세스_시간(MS)
COMMENT ON COLUMN VECTORX_IFS_HIST.PROC_MS IS '프로세스_시간(MS)';

-- 등록_일시
COMMENT ON COLUMN VECTORX_IFS_HIST.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_IFS_HIST.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_IFS_HIST.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_IFS_HIST.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_IFS_HIST.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_IFS_HIST.UPD_USR_IP IS '수정_사용자_아이피';

-- 인터페이스_이력 프로세스아이
CREATE INDEX IF NOT EXISTS IX_VECTORX_IFS_HIST_01
    ON VECTORX_IFS_HIST
    ( -- 인터페이스_이력
    PROC_ID ASC -- 프로세스_아이디
    );

-- 인터페이스_이력 프로세스아이
COMMENT ON INDEX IX_VECTORX_IFS_HIST_01 IS '인터페이스_이력 프로세스아이';

-- 인터페이스_이력 요청아이디
CREATE INDEX IF NOT EXISTS IX_VECTORX_IFS_HIST_02
    ON VECTORX_IFS_HIST
    ( -- 인터페이스_이력
    REQ_ID ASC -- 요청_아이디
    );

-- 인터페이스_이력 요청아이디
COMMENT ON INDEX IX_VECTORX_IFS_HIST_02 IS '인터페이스_이력 요청아이디';

-- 인터페이스_이력 인터페이스아이디, 버전
CREATE INDEX IF NOT EXISTS IX_VECTORX_IFS_HIST_03
    ON VECTORX_IFS_HIST
    ( -- 인터페이스_이력
    IF_ID ASC, -- 인터페이스_아이디
    IF_VER ASC -- 인터페이스_버전
    );

-- 인터페이스_이력 인터페이스아이디, 버전
COMMENT ON INDEX IX_VECTORX_IFS_HIST_03 IS '인터페이스_이력 인터페이스아이디, 버전';


-- 인터페이스_이력 기본키
ALTER TABLE VECTORX_IFS_HIST ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_IFS_HIST PRIMARY KEY(IF_HIST_ID);






-- 인터페이스_요청_제어
CREATE TABLE IF NOT EXISTS VECTORX_IFS_REQ_CTRL
(
    REQ_CTRL_ID  INTEGER       NOT NULL, -- 요청_제어_아이디
    SYS_CD       VARCHAR(20)   NOT NULL, -- 시스템_코드
    TITLE        VARCHAR(50)   NOT NULL, -- 제목
    RMK          VARCHAR(1000) NULL,     -- 비고
    URL_PTRN_VAL VARCHAR(1000) NOT NULL, -- URL_패턴_값
    USE_YN       CHARACTER(1)       NOT NULL, -- 사용_여부
    REG_DTTM     TIMESTAMP     NOT NULL, -- 등록_일시
    REG_USR_ID   INTEGER       NULL,     -- 등록_사용자_아이디
    REG_USR_IP   VARCHAR(20)   NULL,     -- 등록_사용자_아이피
    UPD_DTTM     TIMESTAMP     NULL,     -- 수정_일시
    UPD_USR_ID   INTEGER       NULL,     -- 수정_사용자_아이디
    UPD_USR_IP   VARCHAR(20)   NULL      -- 수정_사용자_아이피
    );

-- 인터페이스_요청_제어
COMMENT ON TABLE VECTORX_IFS_REQ_CTRL IS '인터페이스_요청_제어';

-- 요청_제어_아이디
COMMENT ON COLUMN VECTORX_IFS_REQ_CTRL.REQ_CTRL_ID IS '요청_제어_아이디';

-- 시스템_코드
COMMENT ON COLUMN VECTORX_IFS_REQ_CTRL.SYS_CD IS '시스템_코드';

-- 제목
COMMENT ON COLUMN VECTORX_IFS_REQ_CTRL.TITLE IS '제목';

-- 비고
COMMENT ON COLUMN VECTORX_IFS_REQ_CTRL.RMK IS '비고';

-- URL_패턴_값
COMMENT ON COLUMN VECTORX_IFS_REQ_CTRL.URL_PTRN_VAL IS 'URL_패턴_값';

-- 사용_여부
COMMENT ON COLUMN VECTORX_IFS_REQ_CTRL.USE_YN IS '사용_여부';

-- 등록_일시
COMMENT ON COLUMN VECTORX_IFS_REQ_CTRL.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_IFS_REQ_CTRL.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_IFS_REQ_CTRL.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_IFS_REQ_CTRL.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_IFS_REQ_CTRL.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_IFS_REQ_CTRL.UPD_USR_IP IS '수정_사용자_아이피';

-- 인터페이스_요청_제어 Primary key
ALTER TABLE VECTORX_IFS_REQ_CTRL ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_IFS_REQ_CTRL PRIMARY KEY(REQ_CTRL_ID);






-- 인터페이스_요청_제어_채널
CREATE TABLE IF NOT EXISTS VECTORX_IFS_REQ_CTRL_CHNL
(
    REQ_CTRL_ID INTEGER     NOT NULL, -- 요청_제어_아이디
    CHNL_CD     VARCHAR(20) NOT NULL, -- 채널_코드
    CTRL_MIN    INTEGER     NOT NULL, -- 제어_분
    MAX_REQ_NUM INTEGER     NOT NULL, -- 최대_요청_수
    REG_DTTM    TIMESTAMP   NOT NULL, -- 등록_일시
    REG_USR_ID  INTEGER     NULL,     -- 등록_사용자_아이디
    REG_USR_IP  VARCHAR(20) NULL,     -- 등록_사용자_아이피
    UPD_DTTM    TIMESTAMP   NULL,     -- 수정_일시
    UPD_USR_ID  INTEGER     NULL,     -- 수정_사용자_아이디
    UPD_USR_IP  VARCHAR(20) NULL      -- 수정_사용자_아이피
    );

-- 인터페이스_요청_제어_채널
COMMENT ON TABLE VECTORX_IFS_REQ_CTRL_CHNL IS '인터페이스_요청_제어_채널';

-- 요청_제어_아이디
COMMENT ON COLUMN VECTORX_IFS_REQ_CTRL_CHNL.REQ_CTRL_ID IS '요청_제어_아이디';

-- 채널_코드
COMMENT ON COLUMN VECTORX_IFS_REQ_CTRL_CHNL.CHNL_CD IS '채널_코드';

-- 제어_분
COMMENT ON COLUMN VECTORX_IFS_REQ_CTRL_CHNL.CTRL_MIN IS '제어_분';

-- 최대_요청_수
COMMENT ON COLUMN VECTORX_IFS_REQ_CTRL_CHNL.MAX_REQ_NUM IS '최대_요청_수';

-- 등록_일시
COMMENT ON COLUMN VECTORX_IFS_REQ_CTRL_CHNL.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_IFS_REQ_CTRL_CHNL.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_IFS_REQ_CTRL_CHNL.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_IFS_REQ_CTRL_CHNL.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_IFS_REQ_CTRL_CHNL.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_IFS_REQ_CTRL_CHNL.UPD_USR_IP IS '수정_사용자_아이피';

-- 인터페이스_요청_제어_채널 Primary key
ALTER TABLE VECTORX_IFS_REQ_CTRL_CHNL ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_IFS_REQ_CTRL_CHNL PRIMARY KEY(REQ_CTRL_ID, CHNL_CD);







-- 인터페이스_채널
CREATE TABLE IF NOT EXISTS VECTORX_IF_CHNL
(
    IF_ID      VARCHAR(50)       NOT NULL, -- 인터페이스_아이디
    IF_VER     VARCHAR(10)        NOT NULL, -- 인터페이스_버전
    CHNL_CD    VARCHAR(20)        NOT NULL, -- 채널_코드
    REG_DTTM   TIMESTAMP          NOT NULL, -- 등록_일시
    REG_USR_ID VARCHAR(20)        NULL,     -- 등록_사용자_아이디
    REG_USR_IP VARCHAR(20)        NULL,     -- 등록_사용자_아이피
    UPD_DTTM   TIMESTAMP          NULL,     -- 수정_일시
    UPD_USR_ID VARCHAR(20)        NULL,     -- 수정_사용자_아이디
    UPD_USR_IP VARCHAR(20)        NULL      -- 수정_사용자_아이피
    );

-- 인터페이스_채널
COMMENT ON TABLE VECTORX_IF_CHNL IS '인터페이스_채널';

-- 인터페이스_아이디
COMMENT ON COLUMN VECTORX_IF_CHNL.IF_ID IS '인터페이스_아이디';

-- 인터페이스_버전
COMMENT ON COLUMN VECTORX_IF_CHNL.IF_VER IS '인터페이스_버전';

-- 채널_코드
COMMENT ON COLUMN VECTORX_IF_CHNL.CHNL_CD IS '채널_코드';

-- 등록_일시
COMMENT ON COLUMN VECTORX_IF_CHNL.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_IF_CHNL.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_IF_CHNL.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_IF_CHNL.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_IF_CHNL.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_IF_CHNL.UPD_USR_IP IS '수정_사용자_아이피';

-- 인터페이스_채널 기본키
ALTER TABLE VECTORX_IF_CHNL ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_IF_CHNL PRIMARY KEY(IF_ID, IF_VER, CHNL_CD);







-- 인터페이스_키
CREATE TABLE IF NOT EXISTS VECTORX_IF_KEY
(
    IF_ID      VARCHAR(50)        NOT NULL, -- 인터페이스_아이디
    IF_VER     VARCHAR(10)        NOT NULL, -- 인터페이스_버전
    IF_KEY     VARCHAR(50)        NOT NULL, -- 인터페이스_키
    IF_VAL     VARCHAR(1000)      NULL,     -- 인터페이스_값
    RMK        VARCHAR(1000)      NULL,     -- 비고
    REG_DTTM   TIMESTAMP          NOT NULL, -- 등록_일시
    REG_USR_ID VARCHAR(20)        NULL,     -- 등록_사용자_아이디
    REG_USR_IP VARCHAR(20)        NULL,     -- 등록_사용자_아이피
    UPD_DTTM   TIMESTAMP          NULL,     -- 수정_일시
    UPD_USR_ID VARCHAR(20)        NULL,     -- 수정_사용자_아이디
    UPD_USR_IP VARCHAR(20)        NULL      -- 수정_사용자_아이피
    );

-- 인터페이스_키
COMMENT ON TABLE VECTORX_IF_KEY IS '인터페이스_키';

-- 인터페이스_아이디
COMMENT ON COLUMN VECTORX_IF_KEY.IF_ID IS '인터페이스_아이디';

-- 인터페이스_버전
COMMENT ON COLUMN VECTORX_IF_KEY.IF_VER IS '인터페이스_버전';

-- 인터페이스_키
COMMENT ON COLUMN VECTORX_IF_KEY.IF_KEY IS '인터페이스_키';

-- 인터페이스_값
COMMENT ON COLUMN VECTORX_IF_KEY.IF_VAL IS '인터페이스_값';

-- 비고
COMMENT ON COLUMN VECTORX_IF_KEY.RMK IS '비고';

-- 등록_일시
COMMENT ON COLUMN VECTORX_IF_KEY.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_IF_KEY.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_IF_KEY.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_IF_KEY.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_IF_KEY.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_IF_KEY.UPD_USR_IP IS '수정_사용자_아이피';

-- 인터페이스_키 Primary key
ALTER TABLE VECTORX_IF_KEY ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_IF_KEY PRIMARY KEY(IF_ID, IF_VER, IF_KEY);






-- 로그인_이력
CREATE TABLE IF NOT EXISTS VECTORX_LOGIN_HIST
(
    LOGIN_HIST_ID BIGINT      NOT NULL, -- 로그인_이력_아이디
    USR_ID        VARCHAR(20) NULL,     -- 사용자_아이디
    USR_KEY       VARCHAR(20) NULL,     -- 사용자_키
    SYS_CD        CHARACTER(2)     NULL,     -- 시스템_코드
    USR_NM        VARCHAR(50) NULL,     -- 사용자_명
    ACC_IP        VARCHAR(20) NULL,     -- 접근_아이피
    DEPT_NM       VARCHAR(50) NULL,     -- 부서_명
    LOGIN_DTTM    TIMESTAMP   NOT NULL, -- 로그인_일시
    LOGOT_DTTM    TIMESTAMP   NULL,     -- 로그아웃_일시
    RES_CD_VAL    VARCHAR(10) NULL,     -- 응답_코드_값
    PROC_ID       VARCHAR(50) NULL,     -- 프로세스_아이디
    REQ_ID        VARCHAR(50) NULL,     -- 요청_아이디
    REG_DTTM      TIMESTAMP   NOT NULL, -- 등록_일시
    REG_USR_ID    VARCHAR(20) NULL,     -- 등록_사용자_아이디
    REG_USR_IP    VARCHAR(20) NULL,     -- 등록_사용자_아이피
    UPD_DTTM      TIMESTAMP   NULL,     -- 수정_일시
    UPD_USR_ID    VARCHAR(20) NULL,     -- 수정_사용자_아이디
    UPD_USR_IP    VARCHAR(20) NULL      -- 수정_사용자_아이피
    );

-- 로그인_이력
COMMENT ON TABLE VECTORX_LOGIN_HIST IS '로그인_이력';

-- 로그인_이력_아이디
COMMENT ON COLUMN VECTORX_LOGIN_HIST.LOGIN_HIST_ID IS '로그인_이력_아이디';

-- 사용자_아이디
COMMENT ON COLUMN VECTORX_LOGIN_HIST.USR_ID IS '사용자_아이디';

-- 사용자_키
COMMENT ON COLUMN VECTORX_LOGIN_HIST.USR_KEY IS '사용자_키';

-- 시스템_코드
COMMENT ON COLUMN VECTORX_LOGIN_HIST.SYS_CD IS '시스템_코드';

-- 사용자_명
COMMENT ON COLUMN VECTORX_LOGIN_HIST.USR_NM IS '사용자_명';

-- 접근_아이피
COMMENT ON COLUMN VECTORX_LOGIN_HIST.ACC_IP IS '접근_아이피';

-- 부서_명
COMMENT ON COLUMN VECTORX_LOGIN_HIST.DEPT_NM IS '부서_명';

-- 로그인_일시
COMMENT ON COLUMN VECTORX_LOGIN_HIST.LOGIN_DTTM IS '로그인_일시';

-- 로그아웃_일시
COMMENT ON COLUMN VECTORX_LOGIN_HIST.LOGOT_DTTM IS '로그아웃_일시';

-- 응답_코드_값
COMMENT ON COLUMN VECTORX_LOGIN_HIST.RES_CD_VAL IS '응답_코드_값';

-- 프로세스_아이디
COMMENT ON COLUMN VECTORX_LOGIN_HIST.PROC_ID IS '프로세스_아이디';

-- 요청_아이디
COMMENT ON COLUMN VECTORX_LOGIN_HIST.REQ_ID IS '요청_아이디';

-- 등록_일시
COMMENT ON COLUMN VECTORX_LOGIN_HIST.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_LOGIN_HIST.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_LOGIN_HIST.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_LOGIN_HIST.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_LOGIN_HIST.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_LOGIN_HIST.UPD_USR_IP IS '수정_사용자_아이피';

-- 로그인_이력 인덱스
CREATE INDEX IF NOT EXISTS IX_VECTORX_LOGIN_HIST
    ON VECTORX_LOGIN_HIST
    ( -- 로그인_이력
    LOGIN_DTTM ASC -- 로그인_일시
    );

-- 로그인_이력 인덱스
COMMENT ON INDEX IX_VECTORX_LOGIN_HIST IS '로그인_이력 인덱스';

-- 로그인_이력 인덱스2
CREATE INDEX IF NOT EXISTS IX_VECTORX_LOGIN_HIST2
    ON VECTORX_LOGIN_HIST
    ( -- 로그인_이력
    LOGOT_DTTM ASC -- 로그아웃_일시
    );

-- 로그인_이력 인덱스2
COMMENT ON INDEX IX_VECTORX_LOGIN_HIST2 IS '로그인_이력 인덱스2';

-- 로그인_이력 인덱스3
CREATE INDEX IF NOT EXISTS IX_VECTORX_LOGIN_HIST3
    ON VECTORX_LOGIN_HIST
    ( -- 로그인_이력
    USR_ID ASC -- 사용자_아이디
    );

-- 로그인_이력 인덱스3
COMMENT ON INDEX IX_VECTORX_LOGIN_HIST3 IS '로그인_이력 인덱스3';

-- 로그인_이력 인덱스4
CREATE INDEX IF NOT EXISTS IX_VECTORX_LOGIN_HIST4
    ON VECTORX_LOGIN_HIST
    ( -- 로그인_이력
    USR_NM ASC -- 사용자_명
    );

-- 로그인_이력 인덱스4
COMMENT ON INDEX IX_VECTORX_LOGIN_HIST4 IS '로그인_이력 인덱스4';

-- 로그인_이력 기본키
ALTER TABLE VECTORX_LOGIN_HIST ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_LOGIN_HIST PRIMARY KEY(LOGIN_HIST_ID);







-- 메뉴
CREATE TABLE IF NOT EXISTS VECTORX_MNU
(
    MNU_ID          INTEGER       NOT NULL, -- 메뉴_아이디
    UPR_MNU_ID      INTEGER       NULL,     -- 상위_메뉴_아이디
    PRO_ID_VAL      VARCHAR(20)   NULL,     -- 프로그램_아이디_값
    SYS_CD          VARCHAR(20)   NULL,     -- 시스템_코드
    MNU_NM          VARCHAR(50)   NULL,     -- 메뉴_명
    MNU_SRT_NO      INTEGER       NOT NULL DEFAULT 0, -- 메뉴_정렬_번호
    MNU_URL         VARCHAR(1000) NULL,     -- 메뉴_URL
    MNU_DESC        VARCHAR(1000) NULL,     -- 메뉴_설명
    MNU_TY_CD       CHARACTER(2)       NULL,     -- 메뉴_유형_코드
    USE_YN          CHARACTER(1)       NOT NULL, -- 사용_여부
    DEL_YN          CHARACTER(1)       NULL     DEFAULT 'N', -- 삭제_여부
    MNU_STEP_NO     INTEGER       NOT NULL DEFAULT 1, -- 메뉴_단계_번호
    IP_LMT_YN       CHARACTER(1)       NULL     DEFAULT 'N', -- 아이피제한여부
    IP_LIST         VARCHAR(1000) NULL,     -- 아이피_목록
    PRV_VIEW_YN     CHARACTER(1)       NULL     DEFAULT 'N', -- 개인정보_조회_여부
    DP_YN           CHARACTER(1)       NULL,     -- 전시_여부
    AUTH_SCOP_CD    CHARACTER(2)       NULL,     -- 권한_범위_코드
    ICON_FILE_ID    VARCHAR(50)   NULL,     -- 아이콘_파일_아이디
    MNU_GUIDE_CONT  TEXT          NULL,     -- 메뉴_가이드_내용
    MNU_DVC_SCOP_CD CHARACTER(1)       NOT NULL DEFAULT 'A', -- 메뉴_디바이스_범위_코드
    REG_DTTM        TIMESTAMP     NOT NULL, -- 등록_일시
    REG_USR_ID      VARCHAR(20)   NULL,     -- 등록_사용자_아이디
    REG_USR_IP      VARCHAR(20)   NULL,     -- 등록_사용자_아이피
    UPD_DTTM        TIMESTAMP     NULL,     -- 수정_일시
    UPD_USR_ID      VARCHAR(20)   NULL,     -- 수정_사용자_아이디
    UPD_USR_IP      VARCHAR(20)   NULL      -- 수정_사용자_아이피
    );

-- 메뉴
COMMENT ON TABLE VECTORX_MNU IS '메뉴';

-- 메뉴_아이디
COMMENT ON COLUMN VECTORX_MNU.MNU_ID IS '메뉴_아이디';

-- 상위_메뉴_아이디
COMMENT ON COLUMN VECTORX_MNU.UPR_MNU_ID IS '상위_메뉴_아이디';

-- 프로그램_아이디_값
COMMENT ON COLUMN VECTORX_MNU.PRO_ID_VAL IS '프로그램_아이디_값';

-- 시스템_코드
COMMENT ON COLUMN VECTORX_MNU.SYS_CD IS '시스템_코드';

-- 메뉴_명
COMMENT ON COLUMN VECTORX_MNU.MNU_NM IS '메뉴_명';

-- 메뉴_정렬_번호
COMMENT ON COLUMN VECTORX_MNU.MNU_SRT_NO IS '메뉴_정렬_번호';

-- 메뉴_URL
COMMENT ON COLUMN VECTORX_MNU.MNU_URL IS '메뉴_URL';

-- 메뉴_설명
COMMENT ON COLUMN VECTORX_MNU.MNU_DESC IS '메뉴_설명';

-- 메뉴_유형_코드
COMMENT ON COLUMN VECTORX_MNU.MNU_TY_CD IS '메뉴_유형_코드';

-- 사용_여부
COMMENT ON COLUMN VECTORX_MNU.USE_YN IS '사용_여부';

-- 삭제_여부
COMMENT ON COLUMN VECTORX_MNU.DEL_YN IS '삭제_여부';

-- 메뉴_단계_번호
COMMENT ON COLUMN VECTORX_MNU.MNU_STEP_NO IS '메뉴_단계_번호';

-- 아이피제한여부
COMMENT ON COLUMN VECTORX_MNU.IP_LMT_YN IS '아이피제한여부';

-- 아이피_목록
COMMENT ON COLUMN VECTORX_MNU.IP_LIST IS '아이피_목록';

-- 개인정보_조회_여부
COMMENT ON COLUMN VECTORX_MNU.PRV_VIEW_YN IS '개인정보_조회_여부';

-- 전시_여부
COMMENT ON COLUMN VECTORX_MNU.DP_YN IS '전시_여부';

-- 권한_범위_코드
COMMENT ON COLUMN VECTORX_MNU.AUTH_SCOP_CD IS '권한_범위_코드';

-- 아이콘_파일_아이디
COMMENT ON COLUMN VECTORX_MNU.ICON_FILE_ID IS '아이콘_파일_아이디';

-- 메뉴_가이드_내용
COMMENT ON COLUMN VECTORX_MNU.MNU_GUIDE_CONT IS '메뉴_가이드_내용';

-- 메뉴_디바이스_범위_코드
COMMENT ON COLUMN VECTORX_MNU.MNU_DVC_SCOP_CD IS '메뉴_디바이스_범위_코드';

-- 등록_일시
COMMENT ON COLUMN VECTORX_MNU.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_MNU.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_MNU.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_MNU.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_MNU.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_MNU.UPD_USR_IP IS '수정_사용자_아이피';

-- 메뉴 기본키
ALTER TABLE VECTORX_MNU ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_MNU PRIMARY KEY(MNU_ID);






-- 메뉴_접근_이력
CREATE TABLE IF NOT EXISTS VECTORX_MNU_ACC_HIST
(
    MNU_ACC_ID BIGINT             NOT NULL, -- 메뉴_접근_아이디
    MNU_ID     INTEGER            NOT NULL, -- 메뉴_아이디
    USR_ID     VARCHAR(20)        NOT NULL, -- 사용자_아이디
    PROC_ID    VARCHAR(50)        NULL,     -- 프로세스_아이디
    REQ_ID     VARCHAR(50)        NULL,     -- 요청_아이디
    MNU_URL    VARCHAR(1000)      NULL,     -- 메뉴_URL
    REG_DTTM   TIMESTAMP          NOT NULL, -- 등록_일시
    REG_USR_ID VARCHAR(20)        NULL,     -- 등록_사용자_아이디
    REG_USR_IP VARCHAR(20)        NULL,     -- 등록_사용자_아이피
    UPD_DTTM   TIMESTAMP          NULL,     -- 수정_일시
    UPD_USR_ID VARCHAR(20)        NULL,     -- 수정_사용자_아이디
    UPD_USR_IP VARCHAR(20)        NULL      -- 수정_사용자_아이피
    );

-- 메뉴_접근_이력
COMMENT ON TABLE VECTORX_MNU_ACC_HIST IS '메뉴_접근_이력';

-- 메뉴_접근_아이디
COMMENT ON COLUMN VECTORX_MNU_ACC_HIST.MNU_ACC_ID IS '메뉴_접근_아이디';

-- 메뉴_아이디
COMMENT ON COLUMN VECTORX_MNU_ACC_HIST.MNU_ID IS '메뉴_아이디';

-- 사용자_아이디
COMMENT ON COLUMN VECTORX_MNU_ACC_HIST.USR_ID IS '사용자_아이디';

-- 프로세스_아이디
COMMENT ON COLUMN VECTORX_MNU_ACC_HIST.PROC_ID IS '프로세스_아이디';

-- 요청_아이디
COMMENT ON COLUMN VECTORX_MNU_ACC_HIST.REQ_ID IS '요청_아이디';

-- 메뉴_URL
COMMENT ON COLUMN VECTORX_MNU_ACC_HIST.MNU_URL IS '메뉴_URL';

-- 등록_일시
COMMENT ON COLUMN VECTORX_MNU_ACC_HIST.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_MNU_ACC_HIST.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_MNU_ACC_HIST.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_MNU_ACC_HIST.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_MNU_ACC_HIST.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_MNU_ACC_HIST.UPD_USR_IP IS '수정_사용자_아이피';

-- 메뉴_접근_이력 인덱스
CREATE INDEX IF NOT EXISTS IX_VECTORX_MNU_ACC_HIST
    ON VECTORX_MNU_ACC_HIST
    ( -- 메뉴_접근_이력
    MNU_ID ASC -- 메뉴_아이디
    );

-- 메뉴_접근_이력 인덱스
COMMENT ON INDEX IX_VECTORX_MNU_ACC_HIST IS '메뉴_접근_이력 인덱스';

-- 메뉴_접근_이력 인덱스2
CREATE INDEX IF NOT EXISTS IX_VECTORX_MNU_ACC_HIST2
    ON VECTORX_MNU_ACC_HIST
    ( -- 메뉴_접근_이력
    USR_ID ASC -- 사용자_아이디
    );

-- 메뉴_접근_이력 인덱스2
COMMENT ON INDEX IX_VECTORX_MNU_ACC_HIST2 IS '메뉴_접근_이력 인덱스2';

-- 메뉴_접근_이력 기본키
ALTER TABLE VECTORX_MNU_ACC_HIST ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_MNU_ACC_HIST PRIMARY KEY(MNU_ACC_ID);







-- 메뉴_권한
CREATE TABLE IF NOT EXISTS VECTORX_MNU_AUTH
(
    MNU_ID     INTEGER            NOT NULL, -- 메뉴_아이디
    AUTH_ID    INTEGER            NOT NULL, -- 권한_아이디
    REG_DTTM   TIMESTAMP          NOT NULL, -- 등록_일시
    REG_USR_ID VARCHAR(20)        NULL,     -- 등록_사용자_아이디
    REG_USR_IP VARCHAR(20)        NULL,     -- 등록_사용자_아이피
    UPD_DTTM   TIMESTAMP          NULL,     -- 수정_일시
    UPD_USR_ID VARCHAR(20)        NULL,     -- 수정_사용자_아이디
    UPD_USR_IP VARCHAR(20)        NULL      -- 수정_사용자_아이피
    );

-- 메뉴_권한
COMMENT ON TABLE VECTORX_MNU_AUTH IS '메뉴_권한';

-- 메뉴_아이디
COMMENT ON COLUMN VECTORX_MNU_AUTH.MNU_ID IS '메뉴_아이디';

-- 권한_아이디
COMMENT ON COLUMN VECTORX_MNU_AUTH.AUTH_ID IS '권한_아이디';

-- 등록_일시
COMMENT ON COLUMN VECTORX_MNU_AUTH.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_MNU_AUTH.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_MNU_AUTH.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_MNU_AUTH.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_MNU_AUTH.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_MNU_AUTH.UPD_USR_IP IS '수정_사용자_아이피';

-- 메뉴_권한 기본키
ALTER TABLE VECTORX_MNU_AUTH ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_MNU_AUTH PRIMARY KEY(MNU_ID, AUTH_ID);







-- 메뉴_권한_승인
CREATE TABLE IF NOT EXISTS VECTORX_MNU_AUTH_APV
(
    USR_APV_ID INTEGER            NOT NULL, -- 사용자_승인_아이디
    MNU_ID     INTEGER            NOT NULL, -- 메뉴_아이디
    REG_DTTM   TIMESTAMP          NOT NULL, -- 등록_일시
    REG_USR_ID VARCHAR(20)        NULL,     -- 등록_사용자_아이디
    REG_USR_IP VARCHAR(20)        NULL,     -- 등록_사용자_아이피
    UPD_DTTM   TIMESTAMP          NULL,     -- 수정_일시
    UPD_USR_ID VARCHAR(20)        NULL,     -- 수정_사용자_아이디
    UPD_USR_IP VARCHAR(20)        NULL      -- 수정_사용자_아이피
    );

-- 메뉴_권한_승인
COMMENT ON TABLE VECTORX_MNU_AUTH_APV IS '메뉴_권한_승인';

-- 사용자_승인_아이디
COMMENT ON COLUMN VECTORX_MNU_AUTH_APV.USR_APV_ID IS '사용자_승인_아이디';

-- 메뉴_아이디
COMMENT ON COLUMN VECTORX_MNU_AUTH_APV.MNU_ID IS '메뉴_아이디';

-- 등록_일시
COMMENT ON COLUMN VECTORX_MNU_AUTH_APV.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_MNU_AUTH_APV.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_MNU_AUTH_APV.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_MNU_AUTH_APV.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_MNU_AUTH_APV.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_MNU_AUTH_APV.UPD_USR_IP IS '수정_사용자_아이피';

-- 메뉴_권한_승인 기본키
ALTER TABLE VECTORX_MNU_AUTH_APV ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_MNU_AUTH_APV PRIMARY KEY(USR_APV_ID, MNU_ID);






-- 메뉴_권한_이력
CREATE TABLE IF NOT EXISTS VECTORX_MNU_AUTH_HIST
(
    AUTH_HIST_ID BIGINT             NOT NULL, -- 권한_이력_아이디
    MNU_ID       INTEGER            NOT NULL, -- 메뉴_아이디
    AUTH_ID      INTEGER            NOT NULL, -- 권한_아이디
    WORK_DV_CD   CHARACTER(1)            NULL,     -- 업무_구분_코드
    REG_DTTM     TIMESTAMP          NOT NULL, -- 등록_일시
    REG_USR_ID   VARCHAR(20)        NULL,     -- 등록_사용자_아이디
    REG_USR_IP   VARCHAR(20)        NULL,     -- 등록_사용자_아이피
    UPD_DTTM     TIMESTAMP          NULL,     -- 수정_일시
    UPD_USR_ID   VARCHAR(20)        NULL,     -- 수정_사용자_아이디
    UPD_USR_IP   VARCHAR(20)        NULL      -- 수정_사용자_아이피
    );

-- 메뉴_권한_이력
COMMENT ON TABLE VECTORX_MNU_AUTH_HIST IS '메뉴_권한_이력';

-- 권한_이력_아이디
COMMENT ON COLUMN VECTORX_MNU_AUTH_HIST.AUTH_HIST_ID IS '권한_이력_아이디';

-- 메뉴_아이디
COMMENT ON COLUMN VECTORX_MNU_AUTH_HIST.MNU_ID IS '메뉴_아이디';

-- 권한_아이디
COMMENT ON COLUMN VECTORX_MNU_AUTH_HIST.AUTH_ID IS '권한_아이디';

-- 업무_구분_코드
COMMENT ON COLUMN VECTORX_MNU_AUTH_HIST.WORK_DV_CD IS '업무_구분_코드';

-- 등록_일시
COMMENT ON COLUMN VECTORX_MNU_AUTH_HIST.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_MNU_AUTH_HIST.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_MNU_AUTH_HIST.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_MNU_AUTH_HIST.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_MNU_AUTH_HIST.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_MNU_AUTH_HIST.UPD_USR_IP IS '수정_사용자_아이피';

-- 메뉴_권한_이력 인덱스
CREATE INDEX IF NOT EXISTS IX_VECTORX_MNU_AUTH_HIST
    ON VECTORX_MNU_AUTH_HIST
    ( -- 메뉴_권한_이력
    REG_DTTM ASC -- 등록_일시
    );

-- 메뉴_권한_이력 인덱스
COMMENT ON INDEX IX_VECTORX_MNU_AUTH_HIST IS '메뉴_권한_이력 인덱스';

-- 메뉴_권한_이력 기본키
ALTER TABLE VECTORX_MNU_AUTH_HIST ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_MNU_AUTH_HIST PRIMARY KEY(AUTH_HIST_ID, MNU_ID, AUTH_ID);






-- 메뉴_기능
CREATE TABLE IF NOT EXISTS VECTORX_MNU_FNC
(
    MNU_ID      INTEGER     NOT NULL, -- 메뉴_아이디
    FNC_ID      VARCHAR(50) NOT NULL, -- 기능_아이디
    FNC_NM      VARCHAR(50) NULL,     -- 기능_명
    PRV_VIEW_YN CHARACTER(1)     NULL     DEFAULT 'N', -- 개인정보_조회_여부
    REG_DTTM    TIMESTAMP   NOT NULL, -- 등록_일시
    REG_USR_ID  VARCHAR(20) NULL,     -- 등록_사용자_아이디
    REG_USR_IP  VARCHAR(20) NULL,     -- 등록_사용자_아이피
    UPD_DTTM    TIMESTAMP   NULL,     -- 수정_일시
    UPD_USR_ID  VARCHAR(20) NULL,     -- 수정_사용자_아이디
    UPD_USR_IP  VARCHAR(20) NULL      -- 수정_사용자_아이피
    );

-- 메뉴_기능
COMMENT ON TABLE VECTORX_MNU_FNC IS '메뉴_기능';

-- 메뉴_아이디
COMMENT ON COLUMN VECTORX_MNU_FNC.MNU_ID IS '메뉴_아이디';

-- 기능_아이디
COMMENT ON COLUMN VECTORX_MNU_FNC.FNC_ID IS '기능_아이디';

-- 기능_명
COMMENT ON COLUMN VECTORX_MNU_FNC.FNC_NM IS '기능_명';

-- 개인정보_조회_여부
COMMENT ON COLUMN VECTORX_MNU_FNC.PRV_VIEW_YN IS '개인정보_조회_여부';

-- 등록_일시
COMMENT ON COLUMN VECTORX_MNU_FNC.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_MNU_FNC.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_MNU_FNC.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_MNU_FNC.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_MNU_FNC.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_MNU_FNC.UPD_USR_IP IS '수정_사용자_아이피';

-- 메뉴_기능 기본키
ALTER TABLE VECTORX_MNU_FNC ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_MNU_FNC PRIMARY KEY(MNU_ID, FNC_ID);






-- 메뉴_기능_접근_이력
CREATE TABLE IF NOT EXISTS VECTORX_MNU_FNC_ACC_HIST
(
    MNU_FNC_ACC_ID INTEGER            NOT NULL, -- 메뉴_기능_접근_아이디
    MNU_ID         INTEGER            NOT NULL, -- 메뉴_아이디
    FNC_ID         VARCHAR(50)        NOT NULL, -- 기능_아이디
    USR_ID         VARCHAR(20)        NOT NULL, -- 사용자_아이디
    REQ_ID         VARCHAR(50)        NULL,     -- 요청_아이디
    PROC_ID        VARCHAR(50)        NULL,     -- 프로세스_아이디
    REG_DTTM       TIMESTAMP          NOT NULL, -- 등록_일시
    REG_USR_ID     VARCHAR(20)        NULL,     -- 등록_사용자_아이디
    REG_USR_IP     VARCHAR(20)        NULL,     -- 등록_사용자_아이피
    UPD_DTTM       TIMESTAMP          NULL,     -- 수정_일시
    UPD_USR_ID     VARCHAR(20)        NULL,     -- 수정_사용자_아이디
    UPD_USR_IP     VARCHAR(20)        NULL      -- 수정_사용자_아이피
    );

-- 메뉴_기능_접근_이력
COMMENT ON TABLE VECTORX_MNU_FNC_ACC_HIST IS '메뉴_기능_접근_이력';

-- 메뉴_기능_접근_아이디
COMMENT ON COLUMN VECTORX_MNU_FNC_ACC_HIST.MNU_FNC_ACC_ID IS '메뉴_기능_접근_아이디';

-- 메뉴_아이디
COMMENT ON COLUMN VECTORX_MNU_FNC_ACC_HIST.MNU_ID IS '메뉴_아이디';

-- 기능_아이디
COMMENT ON COLUMN VECTORX_MNU_FNC_ACC_HIST.FNC_ID IS '기능_아이디';

-- 사용자_아이디
COMMENT ON COLUMN VECTORX_MNU_FNC_ACC_HIST.USR_ID IS '사용자_아이디';

-- 요청_아이디
COMMENT ON COLUMN VECTORX_MNU_FNC_ACC_HIST.REQ_ID IS '요청_아이디';

-- 프로세스_아이디
COMMENT ON COLUMN VECTORX_MNU_FNC_ACC_HIST.PROC_ID IS '프로세스_아이디';

-- 등록_일시
COMMENT ON COLUMN VECTORX_MNU_FNC_ACC_HIST.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_MNU_FNC_ACC_HIST.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_MNU_FNC_ACC_HIST.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_MNU_FNC_ACC_HIST.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_MNU_FNC_ACC_HIST.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_MNU_FNC_ACC_HIST.UPD_USR_IP IS '수정_사용자_아이피';

-- 메뉴_기능_접근_이력 인덱스
CREATE INDEX IF NOT EXISTS IX_VECTORX_MNU_FNC_ACC_HIST
    ON VECTORX_MNU_FNC_ACC_HIST
    ( -- 메뉴_기능_접근_이력
    USR_ID ASC -- 사용자_아이디
    );

-- 메뉴_기능_접근_이력 인덱스
COMMENT ON INDEX IX_VECTORX_MNU_FNC_ACC_HIST IS '메뉴_기능_접근_이력 인덱스';

-- 메뉴_기능_접근_이력 인덱스2
CREATE INDEX IF NOT EXISTS IX_VECTORX_MNU_FNC_ACC_HIST2
    ON VECTORX_MNU_FNC_ACC_HIST
    ( -- 메뉴_기능_접근_이력
    MNU_ID ASC, -- 메뉴_아이디
    FNC_ID ASC -- 기능_아이디
    );

-- 메뉴_기능_접근_이력 인덱스2
COMMENT ON INDEX IX_VECTORX_MNU_FNC_ACC_HIST2 IS '메뉴_기능_접근_이력 인덱스2';


-- 메뉴_기능_접근_이력 기본키
ALTER TABLE VECTORX_MNU_FNC_ACC_HIST ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_MNU_FNC_ACC_HIST PRIMARY KEY(MNU_FNC_ACC_ID);






-- 메뉴_기능_권한
CREATE TABLE IF NOT EXISTS VECTORX_MNU_FNC_AUTH
(
    MNU_ID     INTEGER            NOT NULL, -- 메뉴_아이디
    FNC_ID     VARCHAR(50)        NOT NULL, -- 기능_아이디
    AUTH_ID    INTEGER            NOT NULL, -- 권한_아이디
    REG_DTTM   TIMESTAMP          NOT NULL, -- 등록_일시
    REG_USR_ID VARCHAR(20)        NULL,     -- 등록_사용자_아이디
    REG_USR_IP VARCHAR(20)        NULL,     -- 등록_사용자_아이피
    UPD_DTTM   TIMESTAMP          NULL,     -- 수정_일시
    UPD_USR_ID VARCHAR(20)        NULL,     -- 수정_사용자_아이디
    UPD_USR_IP VARCHAR(20)        NULL      -- 수정_사용자_아이피
    );

-- 메뉴_기능_권한
COMMENT ON TABLE VECTORX_MNU_FNC_AUTH IS '메뉴_기능_권한';

-- 메뉴_아이디
COMMENT ON COLUMN VECTORX_MNU_FNC_AUTH.MNU_ID IS '메뉴_아이디';

-- 기능_아이디
COMMENT ON COLUMN VECTORX_MNU_FNC_AUTH.FNC_ID IS '기능_아이디';

-- 권한_아이디
COMMENT ON COLUMN VECTORX_MNU_FNC_AUTH.AUTH_ID IS '권한_아이디';

-- 등록_일시
COMMENT ON COLUMN VECTORX_MNU_FNC_AUTH.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_MNU_FNC_AUTH.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_MNU_FNC_AUTH.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_MNU_FNC_AUTH.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_MNU_FNC_AUTH.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_MNU_FNC_AUTH.UPD_USR_IP IS '수정_사용자_아이피';


-- 메뉴_기능_권한 기본키
ALTER TABLE VECTORX_MNU_FNC_AUTH ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_MNU_FNC_AUTH PRIMARY KEY(MNU_ID, FNC_ID, AUTH_ID);







-- 메뉴_기능_권한_승인
CREATE TABLE IF NOT EXISTS VECTORX_MNU_FNC_AUTH_APV
(
    USR_APV_ID INTEGER            NOT NULL, -- 사용자_승인_아이디
    MNU_ID     INTEGER            NOT NULL, -- 메뉴_아이디
    FNC_ID     VARCHAR(50)        NOT NULL, -- 기능_아이디
    REG_DTTM   TIMESTAMP          NOT NULL, -- 등록_일시
    REG_USR_ID VARCHAR(20)        NULL,     -- 등록_사용자_아이디
    REG_USR_IP VARCHAR(20)        NULL,     -- 등록_사용자_아이피
    UPD_DTTM   TIMESTAMP          NULL,     -- 수정_일시
    UPD_USR_ID VARCHAR(20)        NULL,     -- 수정_사용자_아이디
    UPD_USR_IP VARCHAR(20)        NULL      -- 수정_사용자_아이피
    );

-- 메뉴_기능_권한_승인
COMMENT ON TABLE VECTORX_MNU_FNC_AUTH_APV IS '메뉴_기능_권한_승인';

-- 사용자_승인_아이디
COMMENT ON COLUMN VECTORX_MNU_FNC_AUTH_APV.USR_APV_ID IS '사용자_승인_아이디';

-- 메뉴_아이디
COMMENT ON COLUMN VECTORX_MNU_FNC_AUTH_APV.MNU_ID IS '메뉴_아이디';

-- 기능_아이디
COMMENT ON COLUMN VECTORX_MNU_FNC_AUTH_APV.FNC_ID IS '기능_아이디';

-- 등록_일시
COMMENT ON COLUMN VECTORX_MNU_FNC_AUTH_APV.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_MNU_FNC_AUTH_APV.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_MNU_FNC_AUTH_APV.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_MNU_FNC_AUTH_APV.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_MNU_FNC_AUTH_APV.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_MNU_FNC_AUTH_APV.UPD_USR_IP IS '수정_사용자_아이피';

-- 메뉴_기능_권한_승인 기본키
ALTER TABLE VECTORX_MNU_FNC_AUTH_APV ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_MNU_FNC_AUTH_APV PRIMARY KEY(USR_APV_ID, MNU_ID, FNC_ID);





-- 메뉴_기능_권한_이력
CREATE TABLE IF NOT EXISTS VECTORX_MNU_FNC_AUTH_HIST
(
    AUTH_HIST_ID BIGINT             NOT NULL, -- 권한_이력_아이디
    MNU_ID       INTEGER            NOT NULL, -- 메뉴_아이디
    FNC_ID       VARCHAR(50)        NOT NULL, -- 기능_아이디
    AUTH_ID      INTEGER            NOT NULL, -- 권한_아이디
    WORK_DV_CD   CHARACTER(1)            NULL,     -- 업무_구분_코드
    REG_DTTM     TIMESTAMP          NOT NULL, -- 등록_일시
    REG_USR_ID   VARCHAR(20)        NULL,     -- 등록_사용자_아이디
    REG_USR_IP   VARCHAR(20)        NULL,     -- 등록_사용자_아이피
    UPD_DTTM     TIMESTAMP          NULL,     -- 수정_일시
    UPD_USR_ID   VARCHAR(20)        NULL,     -- 수정_사용자_아이디
    UPD_USR_IP   VARCHAR(20)        NULL      -- 수정_사용자_아이피
    );

-- 메뉴_기능_권한_이력
COMMENT ON TABLE VECTORX_MNU_FNC_AUTH_HIST IS '메뉴_기능_권한_이력';

-- 권한_이력_아이디
COMMENT ON COLUMN VECTORX_MNU_FNC_AUTH_HIST.AUTH_HIST_ID IS '권한_이력_아이디';

-- 메뉴_아이디
COMMENT ON COLUMN VECTORX_MNU_FNC_AUTH_HIST.MNU_ID IS '메뉴_아이디';

-- 기능_아이디
COMMENT ON COLUMN VECTORX_MNU_FNC_AUTH_HIST.FNC_ID IS '기능_아이디';

-- 권한_아이디
COMMENT ON COLUMN VECTORX_MNU_FNC_AUTH_HIST.AUTH_ID IS '권한_아이디';

-- 업무_구분_코드
COMMENT ON COLUMN VECTORX_MNU_FNC_AUTH_HIST.WORK_DV_CD IS '업무_구분_코드';

-- 등록_일시
COMMENT ON COLUMN VECTORX_MNU_FNC_AUTH_HIST.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_MNU_FNC_AUTH_HIST.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_MNU_FNC_AUTH_HIST.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_MNU_FNC_AUTH_HIST.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_MNU_FNC_AUTH_HIST.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_MNU_FNC_AUTH_HIST.UPD_USR_IP IS '수정_사용자_아이피';

-- 메뉴_기능_권한_이력 기본키
ALTER TABLE VECTORX_MNU_FNC_AUTH_HIST ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_MNU_FNC_AUTH_HIST PRIMARY KEY(AUTH_HIST_ID, MNU_ID, FNC_ID, AUTH_ID);








-- 게시
CREATE TABLE IF NOT EXISTS VECTORX_POSTS
(
    POST_ID       INTEGER            NOT NULL, -- 게시_아이디
    UPR_POST_ID   INTEGER            NULL,     -- 상위_게시_아이디
    POST_GRP_ID   VARCHAR(10)        NULL,     -- 게시_그룹_아이디
    POST_DV_CD    VARCHAR(20)        NULL,     -- 게시_구분_코드
    TITLE         VARCHAR(100)       NULL,     -- 제목
    TOP_FIX_YN    CHARACTER(1)            NULL     DEFAULT 'N', -- 상단_고정_여부
    CONT          VARCHAR(1000)      NULL,     -- 내용
    USE_YN        CHARACTER(1)            NULL,     -- 사용_여부
    REG_USR_NM    VARCHAR(50)        NULL,     -- 등록_사용자_명
    POST_SRT_DTTM TIMESTAMP          NULL,     -- 게시_시작_일시
    POST_END_DTTM TIMESTAMP          NULL,     -- 게시_종료_일시
    VIEW_CNT      INTEGER            NULL,     -- 조회_건수
    POP_POST_YN   CHARACTER(1)            NULL     DEFAULT 'N', -- 팝업_게시_여부
    FILE_ID       VARCHAR(50)        NULL,     -- 파일_아이디
    DEL_YN        CHARACTER(1)            NULL     DEFAULT 'N', -- 삭제_여부
    REG_DTTM      TIMESTAMP          NOT NULL, -- 등록_일시
    REG_USR_ID    VARCHAR(20)        NULL,     -- 등록_사용자_아이디
    REG_USR_IP    VARCHAR(20)        NULL,     -- 등록_사용자_아이피
    UPD_DTTM      TIMESTAMP          NULL,     -- 수정_일시
    UPD_USR_ID    VARCHAR(20)        NULL,     -- 수정_사용자_아이디
    UPD_USR_IP    VARCHAR(20)        NULL      -- 수정_사용자_아이피
    );

-- 게시
COMMENT ON TABLE VECTORX_POSTS IS '게시';

-- 게시_아이디
COMMENT ON COLUMN VECTORX_POSTS.POST_ID IS '게시_아이디';

-- 상위_게시_아이디
COMMENT ON COLUMN VECTORX_POSTS.UPR_POST_ID IS '상위_게시_아이디';

-- 게시_그룹_아이디
COMMENT ON COLUMN VECTORX_POSTS.POST_GRP_ID IS '게시_그룹_아이디';

-- 게시_구분_코드
COMMENT ON COLUMN VECTORX_POSTS.POST_DV_CD IS '게시_구분_코드';

-- 제목
COMMENT ON COLUMN VECTORX_POSTS.TITLE IS '제목';

-- 상단_고정_여부
COMMENT ON COLUMN VECTORX_POSTS.TOP_FIX_YN IS '상단_고정_여부';

-- 내용
COMMENT ON COLUMN VECTORX_POSTS.CONT IS '내용';

-- 사용_여부
COMMENT ON COLUMN VECTORX_POSTS.USE_YN IS '사용_여부';

-- 등록_사용자_명
COMMENT ON COLUMN VECTORX_POSTS.REG_USR_NM IS '등록_사용자_명';

-- 게시_시작_일시
COMMENT ON COLUMN VECTORX_POSTS.POST_SRT_DTTM IS '게시_시작_일시';

-- 게시_종료_일시
COMMENT ON COLUMN VECTORX_POSTS.POST_END_DTTM IS '게시_종료_일시';

-- 조회_건수
COMMENT ON COLUMN VECTORX_POSTS.VIEW_CNT IS '조회_건수';

-- 팝업_게시_여부
COMMENT ON COLUMN VECTORX_POSTS.POP_POST_YN IS '팝업_게시_여부';

-- 파일_아이디
COMMENT ON COLUMN VECTORX_POSTS.FILE_ID IS '파일_아이디';

-- 삭제_여부
COMMENT ON COLUMN VECTORX_POSTS.DEL_YN IS '삭제_여부';

-- 등록_일시
COMMENT ON COLUMN VECTORX_POSTS.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_POSTS.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_POSTS.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_POSTS.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_POSTS.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_POSTS.UPD_USR_IP IS '수정_사용자_아이피';

-- 게시 기본키
ALTER TABLE VECTORX_POSTS ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_POSTS PRIMARY KEY(POST_ID);








-- 게시_그룹
CREATE TABLE IF NOT EXISTS VECTORX_POST_GRP
(
    POST_GRP_ID        VARCHAR(10) NOT NULL, -- 게시_그룹_아이디
    FILE_GRP_ID        VARCHAR(50) NULL,     -- 파일_그룹_아이디
    POST_GRP_NM        VARCHAR(50) NULL,     -- 게시_그룹_명
    ATTCH_FILE_USE_YN  CHARACTER(1)     NULL,     -- 첨부_파일_사용_여부
    HTML_EDITOR_USE_YN CHARACTER(1)     NULL,     -- HTML_에디터_사용_여부
    POST_TERM_USE_YN   CHARACTER(1)     NULL,     -- 게시_기간_사용_여부
    TOP_FIX_USE_YN     CHARACTER(1)     NULL     DEFAULT 'N', -- 상단_고정_사용_여부
    POP_USE_YN         CHARACTER(1)     NULL     DEFAULT 'N', -- 팝업_사용_여부
    POST_DV_USE_YN     CHARACTER(1)     NULL,     -- 게시_구분_사용_여부
    POST__USE_YN       CHARACTER(1)     NULL,     -- 게시_태그_사용_여부
    USE_YN             CHARACTER(1)     NULL,     -- 사용_여부
    DEL_YN             CHARACTER(1)     NULL     DEFAULT 'N', -- 삭제_여부
    REG_DTTM           TIMESTAMP   NOT NULL, -- 등록_일시
    REG_USR_ID         VARCHAR(20) NULL,     -- 등록_사용자_아이디
    REG_USR_IP         VARCHAR(20) NULL,     -- 등록_사용자_아이피
    UPD_DTTM           TIMESTAMP   NULL,     -- 수정_일시
    UPD_USR_ID         VARCHAR(20) NULL,     -- 수정_사용자_아이디
    UPD_USR_IP         VARCHAR(20) NULL      -- 수정_사용자_아이피
    );

-- 게시_그룹
COMMENT ON TABLE VECTORX_POST_GRP IS '게시_그룹';

-- 게시_그룹_아이디
COMMENT ON COLUMN VECTORX_POST_GRP.POST_GRP_ID IS '게시_그룹_아이디';

-- 파일_그룹_아이디
COMMENT ON COLUMN VECTORX_POST_GRP.FILE_GRP_ID IS '파일_그룹_아이디';

-- 게시_그룹_명
COMMENT ON COLUMN VECTORX_POST_GRP.POST_GRP_NM IS '게시_그룹_명';

-- 첨부_파일_사용_여부
COMMENT ON COLUMN VECTORX_POST_GRP.ATTCH_FILE_USE_YN IS '첨부_파일_사용_여부';

-- HTML_에디터_사용_여부
COMMENT ON COLUMN VECTORX_POST_GRP.HTML_EDITOR_USE_YN IS 'HTML_에디터_사용_여부';

-- 게시_기간_사용_여부
COMMENT ON COLUMN VECTORX_POST_GRP.POST_TERM_USE_YN IS '게시_기간_사용_여부';

-- 상단_고정_사용_여부
COMMENT ON COLUMN VECTORX_POST_GRP.TOP_FIX_USE_YN IS '상단_고정_사용_여부';

-- 팝업_사용_여부
COMMENT ON COLUMN VECTORX_POST_GRP.POP_USE_YN IS '팝업_사용_여부';

-- 게시_구분_사용_여부
COMMENT ON COLUMN VECTORX_POST_GRP.POST_DV_USE_YN IS '게시_구분_사용_여부';

-- 게시_태그_사용_여부
COMMENT ON COLUMN VECTORX_POST_GRP.POST__USE_YN IS '게시_태그_사용_여부';

-- 사용_여부
COMMENT ON COLUMN VECTORX_POST_GRP.USE_YN IS '사용_여부';

-- 삭제_여부
COMMENT ON COLUMN VECTORX_POST_GRP.DEL_YN IS '삭제_여부';

-- 등록_일시
COMMENT ON COLUMN VECTORX_POST_GRP.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_POST_GRP.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_POST_GRP.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_POST_GRP.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_POST_GRP.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_POST_GRP.UPD_USR_IP IS '수정_사용자_아이피';

-- 게시_그룹 기본키
ALTER TABLE VECTORX_POST_GRP ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_POST_GRP PRIMARY KEY(POST_GRP_ID);






-- 게시_의견
CREATE TABLE IF NOT EXISTS VECTORX_POST_OPN
(
    POST_OPN_ID   INTEGER            NOT NULL, -- 게시_의견_아이디
    POST_ID       INTEGER            NULL,     -- 게시_아이디
    POST_OPN_CONT VARCHAR(1000)      NULL,     -- 게시_의견_내용
    REG_USR_NM    VARCHAR(50)        NULL,     -- 등록_사용자_명
    DEL_YN        CHARACTER(1)            NULL     DEFAULT 'N', -- 삭제_여부
    REG_DTTM      TIMESTAMP          NOT NULL, -- 등록_일시
    REG_USR_ID    VARCHAR(20)        NULL,     -- 등록_사용자_아이디
    REG_USR_IP    VARCHAR(20)        NULL,     -- 등록_사용자_아이피
    UPD_DTTM      TIMESTAMP          NULL,     -- 수정_일시
    UPD_USR_ID    VARCHAR(20)        NULL,     -- 수정_사용자_아이디
    UPD_USR_IP    VARCHAR(20)        NULL      -- 수정_사용자_아이피
    );

-- 게시_의견
COMMENT ON TABLE VECTORX_POST_OPN IS '게시_의견';

-- 게시_의견_아이디
COMMENT ON COLUMN VECTORX_POST_OPN.POST_OPN_ID IS '게시_의견_아이디';

-- 게시_아이디
COMMENT ON COLUMN VECTORX_POST_OPN.POST_ID IS '게시_아이디';

-- 게시_의견_내용
COMMENT ON COLUMN VECTORX_POST_OPN.POST_OPN_CONT IS '게시_의견_내용';

-- 등록_사용자_명
COMMENT ON COLUMN VECTORX_POST_OPN.REG_USR_NM IS '등록_사용자_명';

-- 삭제_여부
COMMENT ON COLUMN VECTORX_POST_OPN.DEL_YN IS '삭제_여부';

-- 등록_일시
COMMENT ON COLUMN VECTORX_POST_OPN.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_POST_OPN.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_POST_OPN.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_POST_OPN.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_POST_OPN.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_POST_OPN.UPD_USR_IP IS '수정_사용자_아이피';

-- 게시_의견 기본키
ALTER TABLE VECTORX_POST_OPN ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_POST_OPN PRIMARY KEY(POST_OPN_ID);






-- 게시_태그
CREATE TABLE IF NOT EXISTS VECTORX_POST_TAG
(
    POST_ID    INTEGER     NOT NULL,     -- 게시_아이디
    TAG_NM     VARCHAR(50) NOT NULL,     -- 태그_명
    REG_DTTM   TIMESTAMP   NOT NULL, -- 등록_일시
    REG_USR_ID VARCHAR(20) NULL,     -- 등록_사용자_아이디
    REG_USR_IP VARCHAR(20) NULL,     -- 등록_사용자_아이피
    UPD_DTTM   TIMESTAMP   NULL,     -- 수정_일시
    UPD_USR_ID VARCHAR(20) NULL,     -- 수정_사용자_아이디
    UPD_USR_IP VARCHAR(20) NULL      -- 수정_사용자_아이피
    );

-- 게시_태그
COMMENT ON TABLE VECTORX_POST_TAG IS '게시_태그';

-- 게시_아이디
COMMENT ON COLUMN VECTORX_POST_TAG.POST_ID IS '게시_아이디';

-- 태그_명
COMMENT ON COLUMN VECTORX_POST_TAG.TAG_NM IS '태그_명';

-- 등록_일시
COMMENT ON COLUMN VECTORX_POST_TAG.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_POST_TAG.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_POST_TAG.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_POST_TAG.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_POST_TAG.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_POST_TAG.UPD_USR_IP IS '수정_사용자_아이피';


ALTER TABLE VECTORX_POST_TAG ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_POST_TAG PRIMARY KEY(POST_ID, TAG_NM);



-- 개인정보_접근_이력
CREATE TABLE IF NOT EXISTS VECTORX_PRV_ACC_HIST
(
    PRV_ACC_ID      INTEGER            NOT NULL, -- 개인정보_접근_아이디
    MNU_ID          INTEGER            NULL,     -- 메뉴_아이디
    FNC_ID          VARCHAR(50)        NULL,     -- 기능_아이디
    MNU_NM          VARCHAR(50)        NULL,     -- 메뉴_명
    FNC_NM          VARCHAR(50)        NULL,     -- 기능_명
    ACC_RSN_DV_CD   CHARACTER(2)            NOT NULL, -- 접근_사유_구분_코드
    ACC_RSN_CONT    VARCHAR(4000)      NOT NULL, -- 접근_사유_내용
    ACC_USR_ID      INTEGER            NULL,     -- 접근_사용자_아이디
    ACC_USR_NM      VARCHAR(50)        NULL,     -- 접근_사용자_명
    ACC_USR_DEPT_NM VARCHAR(50)        NULL,     -- 접근_사용자_부서_명
    PROC_ID         VARCHAR(50)        NULL,     -- 프로세스_아이디
    REQ_ID          VARCHAR(50)        NULL,     -- 요청_아이디
    REG_DTTM        TIMESTAMP          NOT NULL, -- 등록_일시
    REG_USR_ID      INTEGER            NULL,     -- 등록_사용자_아이디
    REG_USR_IP      VARCHAR(20)        NULL,     -- 등록_사용자_아이피
    UPD_DTTM        TIMESTAMP          NULL,     -- 수정_일시
    UPD_USR_ID      INTEGER            NULL,     -- 수정_사용자_아이디
    UPD_USR_IP      VARCHAR(20)        NULL      -- 수정_사용자_아이피
    );

-- 개인정보_접근_이력
COMMENT ON TABLE VECTORX_PRV_ACC_HIST IS '개인정보_접근_이력';

-- 개인정보_접근_아이디
COMMENT ON COLUMN VECTORX_PRV_ACC_HIST.PRV_ACC_ID IS '개인정보_접근_아이디';

-- 메뉴_아이디
COMMENT ON COLUMN VECTORX_PRV_ACC_HIST.MNU_ID IS '메뉴_아이디';

-- 기능_아이디
COMMENT ON COLUMN VECTORX_PRV_ACC_HIST.FNC_ID IS '기능_아이디';

-- 메뉴_명
COMMENT ON COLUMN VECTORX_PRV_ACC_HIST.MNU_NM IS '메뉴_명';

-- 기능_명
COMMENT ON COLUMN VECTORX_PRV_ACC_HIST.FNC_NM IS '기능_명';

-- 접근_사유_구분_코드
COMMENT ON COLUMN VECTORX_PRV_ACC_HIST.ACC_RSN_DV_CD IS '접근_사유_구분_코드';

-- 접근_사유_내용
COMMENT ON COLUMN VECTORX_PRV_ACC_HIST.ACC_RSN_CONT IS '접근_사유_내용';

-- 접근_사용자_아이디
COMMENT ON COLUMN VECTORX_PRV_ACC_HIST.ACC_USR_ID IS '접근_사용자_아이디';

-- 접근_사용자_명
COMMENT ON COLUMN VECTORX_PRV_ACC_HIST.ACC_USR_NM IS '접근_사용자_명';

-- 접근_사용자_부서_명
COMMENT ON COLUMN VECTORX_PRV_ACC_HIST.ACC_USR_DEPT_NM IS '접근_사용자_부서_명';

-- 프로세스_아이디
COMMENT ON COLUMN VECTORX_PRV_ACC_HIST.PROC_ID IS '프로세스_아이디';

-- 요청_아이디
COMMENT ON COLUMN VECTORX_PRV_ACC_HIST.REQ_ID IS '요청_아이디';

-- 등록_일시
COMMENT ON COLUMN VECTORX_PRV_ACC_HIST.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_PRV_ACC_HIST.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_PRV_ACC_HIST.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_PRV_ACC_HIST.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_PRV_ACC_HIST.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_PRV_ACC_HIST.UPD_USR_IP IS '수정_사용자_아이피';

-- 개인정보_접근_이력 기본키
ALTER TABLE VECTORX_PRV_ACC_HIST ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_PRV_ACC_HIST PRIMARY KEY(PRV_ACC_ID);







-- 토큰
CREATE TABLE IF NOT EXISTS VECTORX_TOKEN
(
    REFRESH_TOKEN VARCHAR(255)  NOT NULL, -- 리프레시_토큰
    EXP_DTTM      TIMESTAMP     NULL,     -- 만료_일시
    ACC_TOKEN     VARCHAR(2000) NULL,     -- 접근_토큰
    CHNL_CD       VARCHAR(20)   NULL,     -- 채널_코드
    USR_ID        VARCHAR(20)   NULL,     -- 사용자_아이디
    USE_CNT       INTEGER       NULL,     -- 사용_건수
    DVC_ID        VARCHAR(50)   NULL,     -- 디바이스_아이디
    REG_DTTM      TIMESTAMP     NOT NULL, -- 등록_일시
    REG_USR_ID    VARCHAR(20)   NULL,     -- 등록_사용자_아이디
    REG_USR_IP    VARCHAR(20)   NULL,     -- 등록_사용자_아이피
    UPD_DTTM      TIMESTAMP     NULL,     -- 수정_일시
    UPD_USR_ID    VARCHAR(20)   NULL,     -- 수정_사용자_아이디
    UPD_USR_IP    VARCHAR(20)   NULL      -- 수정_사용자_아이피
    );

-- 토큰
COMMENT ON TABLE VECTORX_TOKEN IS '토큰';

-- 리프레시_토큰
COMMENT ON COLUMN VECTORX_TOKEN.REFRESH_TOKEN IS '리프레시_토큰';

-- 만료_일시
COMMENT ON COLUMN VECTORX_TOKEN.EXP_DTTM IS '만료_일시';

-- 접근_토큰
COMMENT ON COLUMN VECTORX_TOKEN.ACC_TOKEN IS '접근_토큰';

-- 채널_코드
COMMENT ON COLUMN VECTORX_TOKEN.CHNL_CD IS '채널_코드';

-- 사용자_아이디
COMMENT ON COLUMN VECTORX_TOKEN.USR_ID IS '사용자_아이디';

-- 사용_건수
COMMENT ON COLUMN VECTORX_TOKEN.USE_CNT IS '사용_건수';

-- 디바이스_아이디
COMMENT ON COLUMN VECTORX_TOKEN.DVC_ID IS '디바이스_아이디';

-- 등록_일시
COMMENT ON COLUMN VECTORX_TOKEN.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_TOKEN.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_TOKEN.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_TOKEN.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_TOKEN.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_TOKEN.UPD_USR_IP IS '수정_사용자_아이피';

-- 토큰 인덱스
CREATE INDEX IF NOT EXISTS IX_VECTORX_TOKEN
    ON VECTORX_TOKEN
    ( -- 토큰
    USR_ID ASC -- 사용자_아이디
    );

-- 토큰 인덱스
COMMENT ON INDEX IX_VECTORX_TOKEN IS '토큰 인덱스';

-- 토큰 인덱스2
CREATE INDEX IF NOT EXISTS IX_VECTORX_TOKEN2
    ON VECTORX_TOKEN
    ( -- 토큰
    EXP_DTTM ASC -- 만료_일시
    );

-- 토큰 인덱스2
COMMENT ON INDEX IX_VECTORX_TOKEN2 IS '토큰 인덱스2';

-- 토큰 인덱스3
CREATE INDEX IF NOT EXISTS IX_VECTORX_TOKEN3
    ON VECTORX_TOKEN
    ( -- 토큰
    REG_USR_IP ASC -- 등록_사용자_아이피
    );

-- 토큰 인덱스3
COMMENT ON INDEX IX_VECTORX_TOKEN3 IS '토큰 인덱스3';

-- 토큰
ALTER TABLE VECTORX_TOKEN ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_TOKEN PRIMARY KEY(REFRESH_TOKEN);





-- 사용자
CREATE TABLE IF NOT EXISTS VECTORX_USR
(
    USR_ID           VARCHAR(20)        NOT NULL, -- 사용자_아이디
    USR_NM           VARCHAR(50)        NULL,     -- 사용자_명
    DEPT_CD          VARCHAR(20)        NULL,     -- 부서_코드
    DEPT_NM          VARCHAR(50)        NULL,     -- 부서_명
    PWD              VARCHAR(500)       NULL,     -- 비밀번호
    PWD_LST_UPD_DTTM TIMESTAMP          NULL,     -- 비밀번호_최종_수정_일시
    EMAIL            VARCHAR(40)        NULL,     -- 이메일
    PH_NO            VARCHAR(20)        NULL,     -- 전화_번호
    CPH_NO           VARCHAR(20)        NULL,     -- 핸드폰_번호
    FAX_NO           VARCHAR(20)        NULL,     -- 팩스_번호
    USR_STT_CD       CHARACTER(2)            NULL,     -- 사용자_상태_코드
    USE_SRT_DT       VARCHAR(8)         NULL,     -- 사용_시작_일자
    USE_END_DT       VARCHAR(8)         NULL,     -- 사용_종료_일자
    USE_DV_CD        VARCHAR(2)         NULL,     -- 사용_구분_코드
    LST_LOGIN_DTTM   TIMESTAMP          NULL,     -- 최종_로그인_일시
    LOGIN_FAIL_CNT   INTEGER            NULL     DEFAULT 0, -- 로그인_실패_건수
    PWD_RESET_YN     CHARACTER(1)            NULL     DEFAULT 'Y', -- 비밀번호_초기화_여부
    IP_LMT_YN        CHARACTER(1)            NULL     DEFAULT 'N', -- 아이피_제한_여부
    IP_LIST          VARCHAR(1000)      NULL,     -- 아이피_목록
    EMP_NO           VARCHAR(20)        NULL,     -- 사원_번호
    RMK              VARCHAR(1000)      NULL,     -- 비고
    ORG_CD           VARCHAR(20)        NULL,     -- 기관_코드
    APV_CMPL_YN      CHARACTER(1)            NULL     DEFAULT 'N', -- 승인_완료_여부
    USR_APV_ID       INTEGER            NULL,     -- 사용자_승인_아이디
    REG_DTTM         TIMESTAMP          NOT NULL, -- 등록_일시
    REG_USR_ID       VARCHAR(20)        NULL,     -- 등록_사용자_아이디
    REG_USR_IP       VARCHAR(20)        NULL,     -- 등록_사용자_아이피
    UPD_DTTM         TIMESTAMP          NULL,     -- 수정_일시
    UPD_USR_ID       VARCHAR(20)        NULL,     -- 수정_사용자_아이디
    UPD_USR_IP       VARCHAR(20)        NULL      -- 수정_사용자_아이피
    );

-- 사용자
COMMENT ON TABLE VECTORX_USR IS '사용자';

-- 사용자_아이디
COMMENT ON COLUMN VECTORX_USR.USR_ID IS '사용자_아이디';

-- 사용자_명
COMMENT ON COLUMN VECTORX_USR.USR_NM IS '사용자_명';

-- 부서_코드
COMMENT ON COLUMN VECTORX_USR.DEPT_CD IS '부서_코드';

-- 부서_명
COMMENT ON COLUMN VECTORX_USR.DEPT_NM IS '부서_명';

-- 비밀번호
COMMENT ON COLUMN VECTORX_USR.PWD IS '비밀번호';

-- 비밀번호_최종_수정_일시
COMMENT ON COLUMN VECTORX_USR.PWD_LST_UPD_DTTM IS '비밀번호_최종_수정_일시';

-- 이메일
COMMENT ON COLUMN VECTORX_USR.EMAIL IS '이메일';

-- 전화_번호
COMMENT ON COLUMN VECTORX_USR.PH_NO IS '전화_번호';

-- 핸드폰_번호
COMMENT ON COLUMN VECTORX_USR.CPH_NO IS '핸드폰_번호';

-- 팩스_번호
COMMENT ON COLUMN VECTORX_USR.FAX_NO IS '팩스_번호';

-- 사용자_상태_코드
COMMENT ON COLUMN VECTORX_USR.USR_STT_CD IS '사용자_상태_코드';

-- 사용_시작_일자
COMMENT ON COLUMN VECTORX_USR.USE_SRT_DT IS '사용_시작_일자';

-- 사용_종료_일자
COMMENT ON COLUMN VECTORX_USR.USE_END_DT IS '사용_종료_일자';

-- 사용_구분_코드
COMMENT ON COLUMN VECTORX_USR.USE_DV_CD IS '사용_구분_코드';

-- 최종_로그인_일시
COMMENT ON COLUMN VECTORX_USR.LST_LOGIN_DTTM IS '최종_로그인_일시';

-- 로그인_실패_건수
COMMENT ON COLUMN VECTORX_USR.LOGIN_FAIL_CNT IS '로그인_실패_건수';

-- 비밀번호_초기화_여부
COMMENT ON COLUMN VECTORX_USR.PWD_RESET_YN IS '비밀번호_초기화_여부';

-- 아이피_제한_여부
COMMENT ON COLUMN VECTORX_USR.IP_LMT_YN IS '아이피_제한_여부';

-- 아이피_목록
COMMENT ON COLUMN VECTORX_USR.IP_LIST IS '아이피_목록';

-- 사원_번호
COMMENT ON COLUMN VECTORX_USR.EMP_NO IS '사원_번호';

-- 비고
COMMENT ON COLUMN VECTORX_USR.RMK IS '비고';

-- 기관_코드
COMMENT ON COLUMN VECTORX_USR.ORG_CD IS '기관_코드';

-- 승인_완료_여부
COMMENT ON COLUMN VECTORX_USR.APV_CMPL_YN IS '승인_완료_여부';

-- 사용자_승인_아이디
COMMENT ON COLUMN VECTORX_USR.USR_APV_ID IS '사용자_승인_아이디';

-- 등록_일시
COMMENT ON COLUMN VECTORX_USR.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_USR.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_USR.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_USR.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_USR.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_USR.UPD_USR_IP IS '수정_사용자_아이피';

-- 사용자 기본키
ALTER TABLE VECTORX_USR ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_USR PRIMARY KEY(USR_ID);








-- 사용자_승인
CREATE TABLE IF NOT EXISTS VECTORX_USR_APV
(
    USR_APV_ID       INTEGER       NOT NULL, -- 사용자_승인_아이디
    REQ_USR_ID       VARCHAR(20)   NOT NULL, -- 요청_사용자_아이디
    APV_USR_ID       VARCHAR(20)   NULL,     -- 승인_사용자_아이디
    USR_APV_TY_CD    CHARACTER(2)       NULL,     -- 사용자_승인_유형_코드
    APV_STT_CD       CHARACTER(2)       NULL,     -- 승인_상태_코드
    APV_REQ_DTTM     TIMESTAMP     NULL,     -- 승인_요청_일시
    APV_PRC_DTTM     TIMESTAMP     NULL,     -- 승인_처리_일시
    APV_REQ_OPN_CONT VARCHAR(1000) NULL,     -- 승인_요청_의견_내용
    APV_OPN_CONT     VARCHAR(1000) NULL,     -- 승인_의견_내용
    REQ_USR_EMAIL    VARCHAR(40)   NULL,     -- 요청_사용자_이메일
    REQ_USR_DEPT_NM  VARCHAR(50)   NULL,     -- 요청_사용자_부서_명
    REQ_USR_NM       VARCHAR(50)   NULL,     -- 요청_사용자_명
    ADD_INF_VAL      VARCHAR(4000) NULL,     -- 추가_정보_값
    REG_DTTM         TIMESTAMP     NOT NULL, -- 등록_일시
    REG_USR_ID       VARCHAR(20)   NULL,     -- 등록_사용자_아이디
    REG_USR_IP       VARCHAR(20)   NULL,     -- 등록_사용자_아이피
    UPD_DTTM         TIMESTAMP     NULL,     -- 수정_일시
    UPD_USR_ID       VARCHAR(20)   NULL,     -- 수정_사용자_아이디
    UPD_USR_IP       VARCHAR(20)   NULL      -- 수정_사용자_아이피
    );

-- 사용자_승인
COMMENT ON TABLE VECTORX_USR_APV IS '사용자_승인';

-- 사용자_승인_아이디
COMMENT ON COLUMN VECTORX_USR_APV.USR_APV_ID IS '사용자_승인_아이디';

-- 요청_사용자_아이디
COMMENT ON COLUMN VECTORX_USR_APV.REQ_USR_ID IS '요청_사용자_아이디';

-- 승인_사용자_아이디
COMMENT ON COLUMN VECTORX_USR_APV.APV_USR_ID IS '승인_사용자_아이디';

-- 사용자_승인_유형_코드
COMMENT ON COLUMN VECTORX_USR_APV.USR_APV_TY_CD IS '사용자_승인_유형_코드';

-- 승인_상태_코드
COMMENT ON COLUMN VECTORX_USR_APV.APV_STT_CD IS '승인_상태_코드';

-- 승인_요청_일시
COMMENT ON COLUMN VECTORX_USR_APV.APV_REQ_DTTM IS '승인_요청_일시';

-- 승인_처리_일시
COMMENT ON COLUMN VECTORX_USR_APV.APV_PRC_DTTM IS '승인_처리_일시';

-- 승인_요청_의견_내용
COMMENT ON COLUMN VECTORX_USR_APV.APV_REQ_OPN_CONT IS '승인_요청_의견_내용';

-- 승인_의견_내용
COMMENT ON COLUMN VECTORX_USR_APV.APV_OPN_CONT IS '승인_의견_내용';

-- 요청_사용자_이메일
COMMENT ON COLUMN VECTORX_USR_APV.REQ_USR_EMAIL IS '요청_사용자_이메일';

-- 요청_사용자_부서_명
COMMENT ON COLUMN VECTORX_USR_APV.REQ_USR_DEPT_NM IS '요청_사용자_부서_명';

-- 요청_사용자_명
COMMENT ON COLUMN VECTORX_USR_APV.REQ_USR_NM IS '요청_사용자_명';

-- 추가_정보_값
COMMENT ON COLUMN VECTORX_USR_APV.ADD_INF_VAL IS '추가_정보_값';

-- 등록_일시
COMMENT ON COLUMN VECTORX_USR_APV.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_USR_APV.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_USR_APV.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_USR_APV.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_USR_APV.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_USR_APV.UPD_USR_IP IS '수정_사용자_아이피';

-- 사용자_승인 인덱스
CREATE INDEX IF NOT EXISTS IX_VECTORX_USR_APV
    ON VECTORX_USR_APV
    ( -- 사용자_승인
    APV_REQ_DTTM ASC -- 승인_요청_일시
    );

-- 사용자_승인 인덱스
COMMENT ON INDEX IX_VECTORX_USR_APV IS '사용자_승인 인덱스';

-- 사용자_승인 인덱스2
CREATE INDEX IF NOT EXISTS IX_VECTORX_USR_APV2
    ON VECTORX_USR_APV
    ( -- 사용자_승인
    USR_APV_TY_CD ASC -- 사용자_승인_유형_코드
    );

-- 사용자_승인 인덱스2
COMMENT ON INDEX IX_VECTORX_USR_APV2 IS '사용자_승인 인덱스2';

-- 사용자_승인 인덱스3
CREATE INDEX IF NOT EXISTS IX_VECTORX_USR_APV3
    ON VECTORX_USR_APV
    ( -- 사용자_승인
    APV_STT_CD ASC -- 승인_상태_코드
    );

-- 사용자_승인 인덱스3
COMMENT ON INDEX IX_VECTORX_USR_APV3 IS '사용자_승인 인덱스3';

-- 사용자_승인 기본키
ALTER TABLE VECTORX_USR_APV ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_USR_APV PRIMARY KEY(USR_APV_ID);








-- 사용자_승인_단계
CREATE TABLE IF NOT EXISTS VECTORX_USR_APV_STEP
(
    USR_APV_ID      INTEGER            NOT NULL, -- 사용자_승인_아이디
    STEP_NO         INTEGER            NOT NULL, -- 단계_번호
    STEP_DV_CD      CHARACTER(2)            NULL,     -- 단계_구분_코드
    APV_AUTH_GRP_ID INTEGER            NULL,     -- 승인_권한_그룹_아이디
    APV_USR_ID      INTEGER            NULL,     -- 승인_사용자_아이디
    APV_PRC_DV_CD   CHARACTER(2)            NULL,     -- 승인_처리_구분_코드
    APV_STT_CD      CHARACTER(2)            NULL,     -- 승인_상태_코드
    APV_OPN_CONT    VARCHAR(1000)      NULL,     -- 승인_의견_내용
    REG_DTTM        TIMESTAMP          NOT NULL, -- 등록_일시
    REG_USR_ID      INTEGER            NULL,     -- 등록_사용자_아이디
    REG_USR_IP      VARCHAR(20)        NULL,     -- 등록_사용자_아이피
    UPD_DTTM        TIMESTAMP          NULL,     -- 수정_일시
    UPD_USR_ID      INTEGER            NULL,     -- 수정_사용자_아이디
    UPD_USR_IP      VARCHAR(20)        NULL      -- 수정_사용자_아이피
    );

-- 사용자_승인_단계
COMMENT ON TABLE VECTORX_USR_APV_STEP IS '사용자_승인_단계';

-- 사용자_승인_아이디
COMMENT ON COLUMN VECTORX_USR_APV_STEP.USR_APV_ID IS '사용자_승인_아이디';

-- 단계_번호
COMMENT ON COLUMN VECTORX_USR_APV_STEP.STEP_NO IS '단계_번호';

-- 단계_구분_코드
COMMENT ON COLUMN VECTORX_USR_APV_STEP.STEP_DV_CD IS '단계_구분_코드';

-- 승인_권한_그룹_아이디
COMMENT ON COLUMN VECTORX_USR_APV_STEP.APV_AUTH_GRP_ID IS '승인_권한_그룹_아이디';

-- 승인_사용자_아이디
COMMENT ON COLUMN VECTORX_USR_APV_STEP.APV_USR_ID IS '승인_사용자_아이디';

-- 승인_처리_구분_코드
COMMENT ON COLUMN VECTORX_USR_APV_STEP.APV_PRC_DV_CD IS '승인_처리_구분_코드';

-- 승인_상태_코드
COMMENT ON COLUMN VECTORX_USR_APV_STEP.APV_STT_CD IS '승인_상태_코드';

-- 승인_의견_내용
COMMENT ON COLUMN VECTORX_USR_APV_STEP.APV_OPN_CONT IS '승인_의견_내용';

-- 등록_일시
COMMENT ON COLUMN VECTORX_USR_APV_STEP.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_USR_APV_STEP.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_USR_APV_STEP.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_USR_APV_STEP.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_USR_APV_STEP.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_USR_APV_STEP.UPD_USR_IP IS '수정_사용자_아이피';

-- 사용자_승인_단계 기본키
ALTER TABLE VECTORX_USR_APV_STEP ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_USR_APV_STEP PRIMARY KEY(USR_APV_ID, STEP_NO);








-- 사용자_이력
CREATE TABLE IF NOT EXISTS VECTORX_USR_HIST
(
    USR_ID           VARCHAR(20)   NOT NULL, -- 사용자_아이디
    INP_DTTM         TIMESTAMP     NOT NULL, -- 입력_일시
    USR_NM           VARCHAR(50)   NULL,     -- 사용자_명
    DEPT_CD          VARCHAR(20)   NULL,     -- 부서_코드
    DEPT_NM          VARCHAR(50)   NULL,     -- 부서_명
    PWD              VARCHAR(500)  NULL,     -- 비밀번호
    PWD_LST_UPD_DTTM TIMESTAMP     NULL,     -- 비밀번호_최종_수정_일시
    EMAIL            VARCHAR(50)   NULL,     -- 이메일
    PH_NO            VARCHAR(20)   NULL,     -- 전화_번호
    CPH_NO           VARCHAR(20)   NULL,     -- 핸드폰_번호
    FAX_NO           VARCHAR(20)   NULL,     -- 팩스_번호
    USR_STT_CD       CHARACTER(2)       NULL,     -- 사용자_상태_코드
    USE_SRT_DT       VARCHAR(8)    NULL,     -- 사용_시작_일자
    USE_END_DT       VARCHAR(8)    NULL,     -- 사용_종료_일자
    USE_DV_CD        CHARACTER(2)       NULL,     -- 사용_구분_코드
    LST_LOGIN_DTTM   TIMESTAMP     NULL,     -- 최종_로그인_일시
    LOGIN_FAIL_CNT   INTEGER       NULL     DEFAULT 0, -- 로그인_실패_건수
    PWD_RESET_YN     CHARACTER(1)       NULL     DEFAULT 'Y', -- 비밀번호_초기화_여부
    IP_LMT_YN        CHARACTER(1)       NULL     DEFAULT 'N', -- 아이피_제한_여부
    IP_LIST          VARCHAR(1000) NULL,     -- 아이피_목록
    EMP_NO           VARCHAR(20)   NULL,     -- 사원_번호
    RMK              VARCHAR(1000) NULL,     -- 비고
    ORG_CD           VARCHAR(10)   NULL,     -- 기관_코드
    WORK_DV_CD       CHARACTER(1)       NULL,     -- 업무_구분_코드
    REG_DTTM         TIMESTAMP     NOT NULL, -- 등록_일시
    REG_USR_ID       VARCHAR(20)   NULL,     -- 등록_사용자_아이디
    REG_USR_IP       VARCHAR(20)   NULL,     -- 등록_사용자_아이피
    UPD_DTTM         TIMESTAMP     NULL,     -- 수정_일시
    UPD_USR_ID       VARCHAR(20)   NULL,     -- 수정_사용자_아이디
    UPD_USR_IP       VARCHAR(20)   NULL      -- 수정_사용자_아이피
    );

-- 사용자_이력
COMMENT ON TABLE VECTORX_USR_HIST IS '사용자_이력';

-- 사용자_아이디
COMMENT ON COLUMN VECTORX_USR_HIST.USR_ID IS '사용자_아이디';

-- 입력_일시
COMMENT ON COLUMN VECTORX_USR_HIST.INP_DTTM IS '입력_일시';

-- 사용자_명
COMMENT ON COLUMN VECTORX_USR_HIST.USR_NM IS '사용자_명';

-- 부서_코드
COMMENT ON COLUMN VECTORX_USR_HIST.DEPT_CD IS '부서_코드';

-- 부서_명
COMMENT ON COLUMN VECTORX_USR_HIST.DEPT_NM IS '부서_명';

-- 비밀번호
COMMENT ON COLUMN VECTORX_USR_HIST.PWD IS '비밀번호';

-- 비밀번호_최종_수정_일시
COMMENT ON COLUMN VECTORX_USR_HIST.PWD_LST_UPD_DTTM IS '비밀번호_최종_수정_일시';

-- 이메일
COMMENT ON COLUMN VECTORX_USR_HIST.EMAIL IS '이메일';

-- 전화_번호
COMMENT ON COLUMN VECTORX_USR_HIST.PH_NO IS '전화_번호';

-- 핸드폰_번호
COMMENT ON COLUMN VECTORX_USR_HIST.CPH_NO IS '핸드폰_번호';

-- 팩스_번호
COMMENT ON COLUMN VECTORX_USR_HIST.FAX_NO IS '팩스_번호';

-- 사용자_상태_코드
COMMENT ON COLUMN VECTORX_USR_HIST.USR_STT_CD IS '사용자_상태_코드';

-- 사용_시작_일자
COMMENT ON COLUMN VECTORX_USR_HIST.USE_SRT_DT IS '사용_시작_일자';

-- 사용_종료_일자
COMMENT ON COLUMN VECTORX_USR_HIST.USE_END_DT IS '사용_종료_일자';

-- 사용_구분_코드
COMMENT ON COLUMN VECTORX_USR_HIST.USE_DV_CD IS '사용_구분_코드';

-- 최종_로그인_일시
COMMENT ON COLUMN VECTORX_USR_HIST.LST_LOGIN_DTTM IS '최종_로그인_일시';

-- 로그인_실패_건수
COMMENT ON COLUMN VECTORX_USR_HIST.LOGIN_FAIL_CNT IS '로그인_실패_건수';

-- 비밀번호_초기화_여부
COMMENT ON COLUMN VECTORX_USR_HIST.PWD_RESET_YN IS '비밀번호_초기화_여부';

-- 아이피_제한_여부
COMMENT ON COLUMN VECTORX_USR_HIST.IP_LMT_YN IS '아이피_제한_여부';

-- 아이피_목록
COMMENT ON COLUMN VECTORX_USR_HIST.IP_LIST IS '아이피_목록';

-- 사원_번호
COMMENT ON COLUMN VECTORX_USR_HIST.EMP_NO IS '사원_번호';

-- 비고
COMMENT ON COLUMN VECTORX_USR_HIST.RMK IS '비고';

-- 기관_코드
COMMENT ON COLUMN VECTORX_USR_HIST.ORG_CD IS '기관_코드';

-- 업무_구분_코드
COMMENT ON COLUMN VECTORX_USR_HIST.WORK_DV_CD IS '업무_구분_코드';

-- 등록_일시
COMMENT ON COLUMN VECTORX_USR_HIST.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_USR_HIST.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_USR_HIST.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_USR_HIST.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_USR_HIST.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_USR_HIST.UPD_USR_IP IS '수정_사용자_아이피';

-- 사용자_이력 인덱스
CREATE INDEX IF NOT EXISTS IX_VECTORX_USR_HIST
    ON VECTORX_USR_HIST
    ( -- 사용자_이력
    USR_NM ASC -- 사용자_명
    );

-- 사용자_이력 인덱스
COMMENT ON INDEX IX_VECTORX_USR_HIST IS '사용자_이력 인덱스';

-- 사용자_이력 기본키
ALTER TABLE VECTORX_USR_HIST ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_USR_HIST PRIMARY KEY(USR_ID, INP_DTTM);






-- 사용자_메뉴
CREATE TABLE IF NOT EXISTS VECTORX_USR_MNU
(
    USR_ID     VARCHAR(20)        NOT NULL, -- 사용자_아이디
    MNU_ID     INTEGER            NOT NULL, -- 메뉴_아이디
    DEF_MNU_YN CHARACTER(1)            NULL,     -- 기본_메뉴_여부
    SRT_NO     INTEGER            NULL,     -- 정렬_번호
    REG_DTTM   TIMESTAMP          NOT NULL, -- 등록_일시
    SYS_CD     VARCHAR(20)        NULL,     -- 시스템_코드
    REG_USR_ID VARCHAR(20)        NULL,     -- 등록_사용자_아이디
    REG_USR_IP VARCHAR(20)        NULL,     -- 등록_사용자_아이피
    UPD_DTTM   TIMESTAMP          NULL,     -- 수정_일시
    UPD_USR_ID VARCHAR(20)        NULL,     -- 수정_사용자_아이디
    UPD_USR_IP VARCHAR(20)        NULL      -- 수정_사용자_아이피
    );

-- 사용자_메뉴
COMMENT ON TABLE VECTORX_USR_MNU IS '사용자_메뉴';

-- 사용자_아이디
COMMENT ON COLUMN VECTORX_USR_MNU.USR_ID IS '사용자_아이디';

-- 메뉴_아이디
COMMENT ON COLUMN VECTORX_USR_MNU.MNU_ID IS '메뉴_아이디';

-- 기본_메뉴_여부
COMMENT ON COLUMN VECTORX_USR_MNU.DEF_MNU_YN IS '기본_메뉴_여부';

-- 정렬_번호
COMMENT ON COLUMN VECTORX_USR_MNU.SRT_NO IS '정렬_번호';

-- 등록_일시
COMMENT ON COLUMN VECTORX_USR_MNU.REG_DTTM IS '등록_일시';

-- 시스템_코드
COMMENT ON COLUMN VECTORX_USR_MNU.SYS_CD IS '시스템_코드';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_USR_MNU.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_USR_MNU.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_USR_MNU.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_USR_MNU.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_USR_MNU.UPD_USR_IP IS '수정_사용자_아이피';

-- 사용자_메뉴 Primary key
ALTER TABLE VECTORX_USR_MNU ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_USR_MNU PRIMARY KEY(USR_ID, MNU_ID);







-- 사용자_상태_승인
CREATE TABLE IF NOT EXISTS VECTORX_USR_STT_APV
(
    USR_APV_ID   INTEGER            NOT NULL, -- 사용자_승인_아이디
    USR_ID       VARCHAR(20)        NULL,     -- 사용자_아이디
    USR_STT_CD   VARCHAR(20)        NULL,     -- 사용자_상태_코드
    PWD_RESET_YN CHARACTER(1)            NULL     DEFAULT 'N', -- 비밀번호_초기화_여부
    REG_DTTM     TIMESTAMP          NOT NULL, -- 등록_일시
    REG_USR_ID   VARCHAR(20)        NULL,     -- 등록_사용자_아이디
    REG_USR_IP   VARCHAR(20)        NULL,     -- 등록_사용자_아이피
    UPD_DTTM     TIMESTAMP          NULL,     -- 수정_일시
    UPD_USR_ID   VARCHAR(20)        NULL,     -- 수정_사용자_아이디
    UPD_USR_IP   VARCHAR(20)        NULL      -- 수정_사용자_아이피
    );

-- 사용자_상태_승인
COMMENT ON TABLE VECTORX_USR_STT_APV IS '사용자_상태_승인';

-- 사용자_승인_아이디
COMMENT ON COLUMN VECTORX_USR_STT_APV.USR_APV_ID IS '사용자_승인_아이디';

-- 사용자_아이디
COMMENT ON COLUMN VECTORX_USR_STT_APV.USR_ID IS '사용자_아이디';

-- 사용자_상태_코드
COMMENT ON COLUMN VECTORX_USR_STT_APV.USR_STT_CD IS '사용자_상태_코드';

-- 비밀번호_초기화_여부
COMMENT ON COLUMN VECTORX_USR_STT_APV.PWD_RESET_YN IS '비밀번호_초기화_여부';

-- 등록_일시
COMMENT ON COLUMN VECTORX_USR_STT_APV.REG_DTTM IS '등록_일시';

-- 등록_사용자_아이디
COMMENT ON COLUMN VECTORX_USR_STT_APV.REG_USR_ID IS '등록_사용자_아이디';

-- 등록_사용자_아이피
COMMENT ON COLUMN VECTORX_USR_STT_APV.REG_USR_IP IS '등록_사용자_아이피';

-- 수정_일시
COMMENT ON COLUMN VECTORX_USR_STT_APV.UPD_DTTM IS '수정_일시';

-- 수정_사용자_아이디
COMMENT ON COLUMN VECTORX_USR_STT_APV.UPD_USR_ID IS '수정_사용자_아이디';

-- 수정_사용자_아이피
COMMENT ON COLUMN VECTORX_USR_STT_APV.UPD_USR_IP IS '수정_사용자_아이피';

-- 사용자_상태_승인 기본키
ALTER TABLE VECTORX_USR_STT_APV ADD CONSTRAINT IF NOT EXISTS PK_VECTORX_USR_STT_APV PRIMARY KEY(USR_APV_ID);
