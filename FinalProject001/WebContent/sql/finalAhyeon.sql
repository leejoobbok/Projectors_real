select user from dual;
--==>>LJB_PROJECTORS

select table_name from all_tables
where owner ='LJB_PROJECTORS';
--==>>
/*
SPACE_NOTICE
SUB_REGION
TOOL
USERS
USER_PIN
PROFILE
PROJECT
PROJECT_RATE
PROJECT_STOP
PRJ_STOP_REASON
PROJECT_STOP_RATE
QUESTION
QUIT_ADMIN
RATE_SELECT
RECRUIT
RECRUIT_POS
RECRUIT_TOOL
REGION
REGULATION
REGULATION_PERIOD
REPORT_APPLY
REPORT_COMM
REPORT_NOTE
REPORT_PRJ
REPORT_REASON
REPORT_RESULT
REP_APPLY_RESULT
REP_COMM_RESULT
REP_NOTE_RESULT
REP_PRJ_REASON
REP_RECRUIT
REP_RECRUIT_RESULT
USER_TOOL
WITHDRAW_TYPE
WITHDRAW_USER
WORKSPACE
WORKSPACE_COMM
ADMIN
ADMIN_NOTICE
ANSWER
APPLY
COMMENTS
DEL_APPLY
DEL_COMM
DEL_NOTE
DEL_RECRUIT
DEL_REP_PRJ
DO_TYPE
FAQ
FEED
FINAL
FIRST_CK
LOGIN_REC
LOGOUT_REC
MEETING
MEMBER_OUT
MEM_OUT_RATE
MEM_OUT_REASON
NOTE
POSITION
PRJ_PRESULT
*/

select * from users;

select * from recruit
where title='우리동네 먹짱';

update recruit
SET PRJ_START =TO_DATE('2023-09-15')
where title = '우리동네 먹짱';

--------------------------------------------------------------------------------
-- 23.08.30 _ 공지글 등록 후 해당 아티클 조회를 위해 최근 글 번호 찾는 쿼리 추가


SELECT TO_CHAR(MAX(SPACE_NOTICE_NO)) AS spaceNoticeNo
FROM SPACE_NOTICE;
--==>> SN85

select * from space_notice
ORDER BY space_notice_no desc;
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--23.09.04 _ 회의록 게시판 글 목록 불러오는 쿼리문
-- 회의날짜를 기준으로 최신순 정렬하는 ORDER BY 구문 추가 

SELECT SUBSTR(M.MEETING_NO,3) meetingNo
  , U.NICKNAME nickName
  , M.TITLE title
  , M.CREATED_DATE createdDate
  , M.MEETING_DATE meetingDate
FROM MEETING M JOIN FINAL F
ON M.FINAL_NO = F.FINAL_NO              
    JOIN FIRST_CK FC 
    ON F.FIRST_CK_NO = FC.FIRST_CK_NO 
        JOIN APPLY A 
        ON FC.APPLY_NO = A.APPLY_NO 
            JOIN USERS U 
            ON A.PIN_NO = U.PIN_NO  
WHERE M.FINAL_NO IN('FN1','FN2','FN3')
ORDER BY MEETINGDATE DESC;

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
------★★★[ 팀스페이스 >  내 작업실  관련 쿼리문 ]★★★

select * from FINAL; -- 최종합류번호들 조회 

select * from all_sequences
where sequence_owner = 'LJB_PROJECTORS'; -- 모든 시퀀스 조회 

--★ 작업글 댓글 시퀀스 생성
CREATE SEQUENCE WORKSPACECOMMNOSEQ NOCACHE;
--==>> Sequence WORKSPACECOMMNOSEQ이(가) 생성되었습니다.

SELECT * FROM WORKSPACE; -- 작업글 테이블 데이터조회 

DESC WORKSPACE;
--==>>
/*
이름           널?       유형             
------------ -------- -------------- 
WORKSPACE_NO NOT NULL VARCHAR2(16)   
FINAL_NO     NOT NULL VARCHAR2(16)   
TITLE        NOT NULL VARCHAR2(100)  
CONTENT      NOT NULL VARCHAR2(2000) 
CREATED_DATE NOT NULL DATE           
WORK_DATE             DATE 
*/

SELECT * -- 작업글 테이블 제약조건 조회
FROM user_constraints
WHERE table_name = 'WORKSPACE';

--★ 작업글 테이블에 작업일이 없어서 컬럼 추가하고 NN 제약조건 추가 (변경됨)
--ALTER TABLE WORKSPACE MODIFY WORK_DATE DATE NOT NULL;

--◈  09.14 수정
ALTER TABLE WORKSPACE MODIFY WORK_DATE;   
--==>> 대신 NN 제약조건 제거 (어차피 기본값으로 들어가니까) 


SELECT * FROM WORKSPACE_COMM;  -- 작업글의 댓글 테이블 조회
-- WORKSPACE_COMM_NO , WORKSPACE_NO,  FINAL_NO, CONTENT, CREATED_DATE 
--------------------------------------------------------------------------------
--● 내 작업실에 글 등록
INSERT INTO WORKSPACE(WORKSPACE_NO, FINAL_NO, TITLE, CONTENT, WORK_DATE, CREATED_DATE)
VALUES('WS'||TO_CHAR(WORKSPACENOSEQ.NEXTVAL) -- 작업글 번호
     , 'FN1'  -- 작성자의 최종합류번호
     , 'N일차 작업일지'
     , '작업일 NULL값 테스트.'
     , NVL(NULL,SYSDATE) -- 작업일 선택 안하면 등록일로 저장됨 
     , SYSDATE)
;
--==>> 1 행 이(가) 삽입되었습니다.
--------------------------------------------------------------------------------
--● 내 작업실 게시판 목록 불러오기 (글 번호, 제목, 작업일,작성일) 
SELECT SUBSTR(WORKSPACE_NO,3), TITLE, WORK_DATE, CREATED_DATE 
FROM WORKSPACE
WHERE FINAL_NO = 'FN1'
ORDER BY WORK_DATE DESC
;
--==>> 
/*
WS29	테스트	             23/09/04	23/09/04
WS23	기획안 작성	        23/09/02	23/09/04
WS22	첫 미팅: 기획회의	23/09/01	23/09/04
*/
--------------------------------------------------------------------------------
--● 내 작업실 아티클 본문 가져오기 (글 번호, 제목, 작업일, 작성일, 내용)
SELECT WORKSPACE_NO, TITLE, WORK_DATE, CREATED_DATE, CONTENT
FROM WORKSPACE 
WHERE WORKSPACE_NO = 'WS23'
;
--==>> WS23	2일차 작업일지!	23/09/04	오늘도 기획회의를 했다!
--------------------------------------------------------------------------------
--● 아티클 수정 (제목, 내용, 작업일)
UPDATE WORKSPACE
SET TITLE = '기획안 작성',
    CONTENT = '회의 결과 바탕으로 기획안을 썼습니다.',
    WORK_DATE = '23/09/02'
WHERE WORKSPACE_NO ='WS23'
;
--==>> 1 행 이(가) 업데이트되었습니다.
--------------------------------------------------------------------------------
--● 아티클 삭제
DELETE FROM WORKSPACE
WHERE WORKSPACE_NO ='WS31'
;
--==>> 1 행 이(가) 삭제되었습니다.
--------------------------------------------------------------------------------
--● 내 작업실 아티클에 달린 댓글 가져오기(댓글번호, 작성자 닉네임, 내용, 작성일)
SELECT WORKSPACE_COMM_NO, FINAL_NO, CONTENT, CREATED_DATE 
FROM WORKSPACE_COMM
WHERE WORKSPACE_NO = 'WS22'
ORDER BY CREATED_DATE DESC;
;
--==>> 2	FN2	너무 짧게 쓰신거 아닌가요!	23/09/04
--------------------------------------------------------------------------------
--● 특정 작업글에 댓글 작성하기 (정적구성)
INSERT INTO WORKSPACE_COMM(WORKSPACE_COMM_NO , WORKSPACE_NO,  FINAL_NO, CONTENT, CREATED_DATE)
VALUES(WORKSPACECOMMNOSEQ.NEXTVAL
     , 'WS22'
     , 'FN2'
     , '너무 짧게 쓰신거 아닌가요!'
     , SYSDATE)
;
--==>> 1 행 이(가) 삽입되었습니다.
--------------------------------------------------------------------------------
--● 댓글 수정하기
UPDATE WORKSPACE_COMM 
SET CONTENT = '너무 짧게 쓰신거 아닌가요~!! 다음엔 더 자세히 써주세요'
WHERE WORKSPACE_NO='WS22'
;
--==>> 1 행 이(가) 업데이트되었습니다.
--------------------------------------------------------------------------------
--● 댓글 삭제하기
DELETE FROM WORKSPACE_COMM
WHERE WORKSPACE_COMM_NO = 3;
--==>> 1 행 이(가) 삭제되었습니다.
--------------------------------------------------------------------------------
COMMIT;
--==>> 커밋 완료.
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- 23.09.14 _

-- 다른 사람 작업실 입장 시, 누구의 작업실인지 띄워주기 위해 닉네임 가져오기
-- (팀 스페이스 메인에서 미리보는 영역 + 이동 후에도 띄워줌) => 일단 보류

-- 히스토리 관련 쿼리문 

-- 회의록, 팀원 전체의 작업실 데이터 조회
SELECT * FROM MEETING;
SELECT * FROM WORKSPACE;

-- 회의록,작업실 테이블 구조 조회 => 필요한 컬럼 
DESC MEETING; -- MEETING_NO, TITLE, MEETING_DATE (회의글번호, 제목, 회의일)
DESC WORKSPACE; -- WORKSPACE_NO, FINAL_NO, TITLE, WORK_DATE (작업글번호, 작업자, 제목, 작업일)

-- 회의록 부분 히스토리 (제목, 회의일) 
SELECT TITLE, MEETING_DATE FROM MEETING WHERE FINAL_NO IN('FN1','FN2','FN3');

-- 작업실 부분 히스토리(작업자, 제목, 작업일)
SELECT FINAL_NO, TITLE, WORK_DATE FROM WORKSPACE WHERE FINAL_NO IN('FN1','FN2','FN3');


commit;
