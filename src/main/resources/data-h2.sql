-- 샘플 메뉴
INSERT INTO VECTORX_MNU (
	MNU_ID
	, UPR_MNU_ID
	, PRO_ID_VAL
	, SYS_CD
	, MNU_NM
	, MNU_SRT_NO
	, MNU_URL
	, MNU_DESC
	, MNU_TY_CD
	, USE_YN
	, DEL_YN
	, MNU_STEP_NO
	, IP_LMT_YN
	, IP_LIST
	, PRV_VIEW_YN
	, DP_YN
	, AUTH_SCOP_CD
	, ICON_FILE_ID
	, MNU_GUIDE_CONT
	, MNU_DVC_SCOP_CD
	, REG_DTTM
	, REG_USR_ID
	, REG_USR_IP
	, UPD_DTTM
	, UPD_USR_ID
	, UPD_USR_IP
) 
SELECT (SELECT NEXTVAL('SQ_VECTORX_MNU_01'))
   , NULL
   , 'VX-SAMPLE'
   , 'BO'
   , '샘플'
   , 2
   , NULL
   , NULL
   , '03'
   , 'Y'
   , 'N'
   , 1
   , 'N'
   , NULL
   , 'Y'
   , 'Y'
   , '99'
   , NULL
   , NULL
   , 'A'
   , CURRENT_TIMESTAMP() 
   , 'admin'
   , '127.0.0.1'
   , CURRENT_TIMESTAMP()
   , 'admin'
   , '127.0.0.1'
WHERE NOT EXISTS (SELECT 1
				    FROM VECTORX_MNU
				   WHERE PRO_ID_VAL = 'VX-SAMPLE');



-- 샘플 게시판
INSERT INTO VECTORX_MNU (
	MNU_ID
	, UPR_MNU_ID
	, PRO_ID_VAL
	, SYS_CD
	, MNU_NM
	, MNU_SRT_NO
	, MNU_URL
	, MNU_DESC
	, MNU_TY_CD
	, USE_YN
	, DEL_YN
	, MNU_STEP_NO
	, IP_LMT_YN
	, IP_LIST
	, PRV_VIEW_YN
	, DP_YN
	, AUTH_SCOP_CD
	, ICON_FILE_ID
	, MNU_GUIDE_CONT
	, MNU_DVC_SCOP_CD
	, REG_DTTM
	, REG_USR_ID
	, REG_USR_IP
	, UPD_DTTM
	, UPD_USR_ID
	, UPD_USR_IP
) 
SELECT (SELECT NEXTVAL('SQ_VECTORX_MNU_01'))
   , (SELECT MNU_ID
	    FROM VECTORX_MNU
	   WHERE PRO_ID_VAL = 'VX-SAMPLE'
	 ) 
   , 'VX-SAMPLE-POSTS'
   , 'BO'
   , '게시판'
   , 1
   , '/samples/post'
   , NULL
   , '03'
   , 'Y'
   , 'N'
   , 2
   , 'N'
   , NULL
   , 'N'
   , 'Y'
   , '99'
   , NULL
   , NULL
   , 'A'
   , CURRENT_TIMESTAMP() 
   , 'admin'
   , '127.0.0.1'
   , CURRENT_TIMESTAMP()
   , 'admin'
   , '127.0.0.1'
WHERE NOT EXISTS (SELECT 1
				    FROM VECTORX_MNU
				   WHERE PRO_ID_VAL = 'VX-SAMPLE-POSTS');
