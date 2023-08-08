SELECT USER
FROM DUAL;
--==>> PROJECTORS
/*
[시퀀스명]
관리자  ->          AD||SEQ
회원식별번호        UP||SEQ
유저    ->          US||SEQ
프로필  ->          PF||SEQ
유저 사용 도구  ->  UT||SEQ
공지    ->          NT||SEQ
공고    ->          RC||SEQ
지원서  ->          AP||SEQ
프로젝트->          PJ||SEQ
모집 포지션 번호 -> RP||SEQ
1차 합류 번호    -> FS||SEQ
최종 합류 번호   -> FN||SEQ

[날짜 폼 지정]
ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD HH24:MI:SS';


[시퀀스 생성 구문]
CREATE SEQUENCE USERPINSEQ
NOCACHE;

CREATE SEQUENCE USERNOSEQ
NOCACHE;

CREATE SEQUENCE PROFILENOSEQ
NOCACHE;

CREATE SEQUENCE UTOOLNOSEQ
NOCACHE;

CREATE SEQUENCE RECRUITNOSEQ
NOCACHE;

CREATE SEQUENCE APPLYNOSEQ
NOCACHE;

CREATE SEQUENCE RECRUITPOSSEQ
NOCACHE;

CREATE SEQUENCE FIRSTCKSEQ
NOCACHE;

CREATE SEQUENCE FINALNOSEQ
NOCACHE;

CREATE SEQUENCE PROJECTNOSEQ
NOCACHE;


CREATE SEQUENCE LOGINRECSEQ
NOCACHE;
--==>> Sequence LOGINRECSEQ이(가) 생성되었습니다.
CREATE SEQUENCE LOGOUTRECSEQ
NOCACHE;
--==>> Sequence LOGOUTRECSEQ이(가) 생성되었습니다.

*/

--○ 시퀀스 생성 및 INSERT 동작 쿼리문
/*
-- 회원 가입 시 식별 번호 발생
-- 회원 식별 번호 시퀀스 생성


-- 회원식별번호 테이블에 시퀀스 삽입
INSERT INTO USER_PIN VALUES(PINNOSEQ.NEXTVAL ,SYSDATE);

-- 회원 가입

--회원 정보 테이블(USERS)에 데이터 삽입
INSERT INTO USERS
( USER_NO
, PIN_NO
, ID
, PW
, NICKNAME
, PHOTOURL)
VALUES
( 'US''||TO_CHAR(USERNOSEQ.NEXTVAL)  
, (SELECT PIN_NO
   FEOM USER_PIN
   ORDER BY JOIN_DATE DESC
   FETCH FIRST 1 ROW ONLY)
, '아이디@naver.com'
, '비밀번호'
, '닉네임'
, 'c://WebStudy');

-- 회원 가입 후 프로필 생성

-- 프로필(PROFILE) 테이블에 데이터 삽입
INSERT INTO PROFILE
( PROFILE_NO
, PIN_NO
, POS_NO
, SUB_REGION_NO
, PROFILE_DATE)
VALUES
( 'PF'||TO_CHAR(PROFILENOSEQ.NEXTVAL)
, ★세션으로 넘겨받은 PIN_NO
, ★포지션 번호
, (SELECT ★지역번호 FROM SUB_REGION WHERE REGION_NO=★세부지역번호)
, SYSDATE);


-- 유저 사용도구 테이블(프로필 번호를 참조하는) 사용 도구에 따라서 하나의 PROFILE_NO에 
INSERT INTO USER_TOOL
( UTOOL_NO, PROFILE_NO, TOOL_NO)
VALUES
( 'UT'||TO_CHAR(UTOOLSEQ.NEXTVAL)
, (SELECT PROFILE_NO FROM PROFILE WHERE PIN_NO=?)
, TOOL_NO);

*/


-- 평가 출력에 사용될 FINAL_NO 구하는 메소드
/*
SELECT FINAL_NO
      FROM FINAL
       WHERE FIRST_CK_NO = (SELECT FIRST CK_NO
                            FROM FIRST_CK
                            WHERE APPLY_NO = (SELECT APPLY_NO
                                              FROM APPLY
                                              WHERE PIB_NO =? ))));
*/



--○ 보여줄 (정보를 출력하는데 사용될 쿼리문)================


DESC POSITION;
/*
-- 나의 프로필 클릭 시 보게 될 쿼리문
-- ① 프로필 파트(평가, 툴 제외)
-- ★뷰 생성
CREATE OR REPLACE VIEW PROFILE_SHOW
AS
SELECT U.ID, U.NICKNAME, POS.POS_NAME, R.REGION_NAME, SR.REGION_NAME, POS.POS_NAME, P.PROFILE_DATE
FROM PROFILE P LEFT JOIN USERS U ON P.PIN_NO = U.PIN_NO
LEFT JOIN POSITION POS ON P.POS_NO = POS.POS_NO
LEFT JOIN SUB_REGION SR ON SR.SUB_REGION_NO = P.SUB_REGION_NO; 
LEFT JOIN REGION R ON R.REGION_NO = SR.REGION_NO;

--★ 뷰 실행
SELECT * FROM PROFILE_SHOW
WHERE PIN_NO = ★; 


-- ②  툴 파트
--★ 뷰 생성
CREATE OR REPLACE VIEW PROFILE_TOOL_VIEW
AS
SELECT T.TOOL_NAME
FROM TOOL T
JOIN USER_TOOL UT ON T.TOOL_NO = UT.TOOL_NO
JOIN PROFILE P ON UT.PROFILE_NO = P.PROFILE_NO;

--★ 뷰 수행 구문
SELECT TOOL_NAME
FROM PROFILE_TOOL_VIEW
WHERE PIN_NO = ★;




-- ③ 평가 파트
--(1) 개인 이탈 총 평가 ( -> 평가 번호와 해당 평가가 몇 개인지)
SELECT RATE_NO, COUNT(RATE_NO) AS OUT_RATE_TOT
FROM MEM_OUT_RATE
WHERE MEM_OUT_NO = (SELECT MEM_OUT_NO
                    FROM MEMBER_OUT
                    WHERE FINAL_NO = (SELECT FINAL_NO
                                      FROM FINAL
                                      WHERE FIRST_CK_NO = (SELECT FIRST CK_NO
                                                          FROM FIRST_CK
                                                          WHERE APPLY_NO = (SELECT APPLY_NO
                                                                            FROM APPLY
                                                                            WHERE PIN_NO =? ))))
GROUP BY RATE_NO;
                                         
--(2) 팀 닫기 총 평가                                         
SELECT RATE_NO, COUNT AS COUNT(RATE_NO)
FROM PROJECT_STOP_RATE
WHERE RECEIVER_NO = (SELECT FINAL_NO
                    FROM FINAL
                    WHERE FIRST_CK_NO = (SELECT FIRST_CK_NO
                                         FROM FIRST_CK
                                         WHERE APPLY_NO = (SELECT APPLY_NO
                                                           FROM APPLY
                                                           WHERE PIN_NO=?)))
GROUP BY RATE_NO;

--(3) 팀 완료 총 평가
SELECT RATE_NO, COUNT(RATE_NO) AS DONE_RATE
FROM PROJECT_RATE
WHERE RECEIVER_NO = (SELECT FINAL_NO
                    FROM FINAL
                    WHERE FIRST_CK_NO = (SELECT FIRST_CK_NO
                                         FROM FIRST_CK
                                         WHERE APPLY_NO = (SELECT APPLY_NO
                                                           FROM APPLY
                                                           WHERE PIN_NO=?)))
GROUP BY RATE_NO;


-- 이 세 쿼리문에 나온 다 합쳐서 프로필에 보여주면됨 합쳐주는 뷰 생성 구문==========================================
-- ★ 뷰 생성
CREATE OR REPLACE VIEW RATE_SUMMARY
AS
SELECT RATE_NO, SUM(COUNT) AS TOTAL_COUNT
FROM (
    SELECT RATE_NO, COUNT(*) AS COUNT
    FROM MEM_OUT_RATE
    WHERE MEM_OUT_NO = (SELECT MEM_OUT_NO
                        FROM MEMBER_OUT
                        WHERE FINAL_NO = (SELECT FINAL_NO
                                          FROM FINAL
                                          WHERE FIRST_CK_NO = (SELECT FIRST CK_NO
                                                              FROM FIRST_CK
                                                              WHERE APPLY_NO = (SELECT APPLY_NO
                                                                                FROM APPLY
                                                                                WHERE PIN_NO =? ))))
    GROUP BY RATE_NO

    UNION ALL

    SELECT RATE_NO, COUNT(*) AS COUNT
    FROM PROJECT_STOP_RATE
    WHERE RECEIVER_NO = (SELECT FINAL_NO
                          FROM FINAL
                         WHERE FIRST_CK_NO = (SELECT FIRST_CK_NO
                                              FROM FIRST_CK
                                                WHERE APPLY_NO = (SELECT APPLY_NO
                                                                 FROM APPLY
                                                                 WHERE PIN_NO=?)))
    GROUP BY RATE_NO

    UNION ALL

    SELECT RATE_NO, COUNT(*) AS COUNT
    FROM PROJECT_RATE
    WHERE RECEIVER_NO = (SELECT FINAL_NO
                        FROM FINAL
                        WHERE FIRST_CK_NO = (SELECT FIRST_CK_NO
                                             FROM FIRST_CK
                                             WHERE APPLY_NO = (SELECT APPLY_NO
                                                               FROM APPLY
                                                               WHERE PIN_NO=?)))
    GROUP BY RATE_NO
) AS SUBQUERY
GROUP BY ROLLUP (RATE_NO);


--★ 뷰 수행
SELECT RATE_NO, TOTAL_COUNT
FROM RATE_SUMMARY
WHERE PIN_NO = ★핀 번호; 


*/


/*


-- 특정 공고의 특정 포시션에 대한 지원을 수행할 때
INSERT INTO APPLY
( APPLY_NO
, RECRUIT_POS_NO
, PIN_NO
, CONTENT
, APPLY_DATE)
VALUES
( APPLYSEQ.NEXTVAL
, (SELECT RECRUIT_POS_NO
   FROM RECRUIT_POS
   WHERE RECRUIT_NO = (SELECT RECRUIT_NO 
                       FROM RECRUIT
                       WHERE PIN_NO=?))  -- 모집 공고자 PIN_NO
, ?
, ??
, SYSDATE);


-- 모집자가 특정 지원서(지원자)에 대해 수락을 클릭할 때 수행될 INSERT 쿼리문
-- 지원 후 모집자가 행하는 1차 수락시 수락 클릭 시 FIRST_CK 테이블에  그 사람의 APPLY_NO가 INSERT 된다.
INSERT INTO FIRST_CK
( FIRST_CK_NO
, APPLY_NO
, PASS_DATE)
VALUES
( FIRSTSEQ.NEXTVAL
, APPLY_NO FROM APPLY WHERE RECRUIT_POS_NO = (SELECT RECRUIT_POS_NO
                                              FROM RECRUIT_POS
                                              WHERE RECRUIT_NO = (SELECT RECRUIT_NO
                                                                  FROM RECRUIT
                                                            	  WHERE PIN_NO=?))
, SYSDATE);


-- 프로젝트 모집자가 1차 수락 시킨 인원이 모집 인원과 동일한지 확인하는 쿼리문
-- ※ 전제 조건 모집 공고 올릴 시 모집 인원은 모집자가 정한 인원의 +1 로 INSERT 되었을 때
-> 모집자가 자동으로 모집 포지션 지원과 FIRST_CK 테이블로 이동해야 하기 때문





-- 최종 합류 승낙을 누르면 INSERT될 테이블 (프로젝트 생성 여부와 상관없이)
INSERT INTO FINAL(FINAL_NO, FIRST_CK_NO, FINAL_CK_DATE)
VALUES
( FINALSEQ.NEXTVAL
, SELECT FIRST_CK_NO
  FROM FIRST_CK
  WHERE APPLY_NO = (SELECT APPLY_NO
                    FROM APPLY
                    WHERE PIN_NO=?)

);






*/
--=================================================================================================================================================


--== 입력할 쿼리문(UsersDAO.xml)

SELECT *
FROM USERS;

-- (1) 로그인
SELECT COUNT(PIN_NO)
FROM USERS
WHERE ID='도라에몽@naver.com' AND PW='java002$';
--▼


--★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
-- 1. 회원 가입
SELECT COUNT(PIN_NO)
FROM USERS
WHERE ID=? AND PW=?;
--★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★

-- 로그인 이후 핀번호를 세션하기 위해 getPin_no()

ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD HH24:MI:SS';




--== 회원 가입 클릭스 동시에 동작할 메소드 =========================
INSERT INTO USER_PIN
( PIN_NO
, JOIN_DATE)
VALUES
( 'UP'||TO_CHAR(USERPINSEQ.NEXTVAL)
 , SYSDATE);

INSERT INTO USERS
( USER_NO
, PIN_NO
, ID
, PW
, NICKNAME
, PHOTOURL)
VALUES
( 'US'||TO_CHAR(USERNOSEQ.NEXTVAL)
, (SELECT PIN_NO
   FROM (SELECT PIN_NO
         FROM USER_PIN
         ORDER BY JOIN_DATE DESC)
   WHERE ROWNUM = 1)
,'spb@naver.com'
,'java002'
,'스폰지밥'
,'images/defaulfPhoto.jpg');




INSERT INTO USER_PIN
( PIN_NO
, JOIN_DATE)
VALUES
( 'UP'||TO_CHAR(USERPINSEQ.NEXTVAL)
 , SYSDATE);
INSERT INTO USERS
( USER_NO
, PIN_NO
, ID
, PW
, NICKNAME
, PHOTOURL)
VALUES
( 'US'||TO_CHAR(USERNOSEQ.NEXTVAL)
, (SELECT PIN_NO
   FROM (SELECT PIN_NO
         FROM USER_PIN
         ORDER BY JOIN_DATE DESC)
   WHERE ROWNUM = 1)
,'tty@naver.com'
,'java002'
,'탈퇴용2'
,'images/defaulfPhoto.jpg');


DESC WITHDRAW_USER;
/*
WD_USER_NO NOT NULL NUMBER(8)     
PIN_NO     NOT NULL VARCHAR2(16)  
WD_DATE             DATE          
ID         NOT NULL VARCHAR2(100) 
WD_TYPE_NO NOT NULL NUMBER(1)     
*/



INSERT INTO WITHDRAW_USER
( WD_USER_NO
, PIN_NO
, WD_DATE
, ID
, WD_TYPE_NO)
VALUES
( WDUSERNOSEQ.NEXTVAL
, (SELECT PIN_NO FROM USERS WHERE NICKNAME='탈퇴용')
, SYSDATE
, (SELECT ID FROM USERS WHERE NICKNAME='탈퇴용')
, 1
);
--==>> 1 행 이(가) 삽입되었습니다.



SELECT *
FROM USERS;
--==>> US16	UP18	spb@naver.com	java002	스폰지밥	images/defaulfPhoto.jpg


--★★★★★★★★★★★★★★★★★★★★★★★★★★★★
--1. 우선 핀 생성
INSERT INTO USER_PIN
( PIN_NO
, JOIN_DATE)
VALUES
( 'UP'||TO_CHAR(USERPINSEQ.NEXTVAL)
 , SYSDATE);
--2. 생성된 핀에 회원가입 실행
INSERT INTO USERS
( USER_NO
, PIN_NO
, ID
, PW
, NICKNAME
, PHOTOURL)
VALUES
( 'US'||TO_CHAR(USERNOSEQ.NEXTVAL)
, (SELECT PIN_NO
   FROM (SELECT PIN_NO
         FROM USER_PIN
         ORDER BY JOIN_DATE DESC)
   WHERE ROWNUM = 1)
,?
,?
,?
,?);
--★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
--=================================================


-- 회원정보 수정

-- 샘플데이터 입력

DESC RECRUIT;
/*
RECRUIT_NO   NOT NULL VARCHAR2(16)   
PIN_NO       NOT NULL VARCHAR2(16)   
DO_TYPE_NO   NOT NULL NUMBER(1)      
TITLE        NOT NULL VARCHAR2(100)  
CONTENT      NOT NULL VARCHAR2(3000) 
CREATED_DATE          DATE           
PRJ_START    NOT NULL DATE           
PRJ_END      NOT NULL DATE  
*/


INSERT INTO RECRUIT
( RECRUIT_NO
, PIN_NO
, DO_TYPE_NO
, TITLE
, CONTENT
, CREATED_DATE
, PRJ_START
, PRJ_END
)
VALUES
( 
'RC'||TO_CHAR(RECRUITNOSEQ.NEXTVAL)
, (SELECT PIN_NO FROM USERS WHERE NICKNAME='스폰지밥')
, 1
, '불량한 제목의 공고'
, '불량한 내용의 공고'
, SYSDATE
, TO_DATE('2023-08-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
, TO_DATE('2023-12-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
);

--===>> 1 행 이(가) 삽입되었습니다.

SELECT RECRUIT_NO FROM RECRUIT WHERE PIN_NO = (SELECT PIN_NO FROM USERS WHERE NICKNAME='스폰지밥');
--==>> RC7

DESC REP_RECRUIT;
/*
이름             널?       유형           
-------------- -------- ------------ 
REP_RECRUIT_NO NOT NULL VARCHAR2(16) 
RECRUIT_NO     NOT NULL VARCHAR2(16) 
PIN_NO         NOT NULL VARCHAR2(16) 
CREATED_DATE            DATE         
REP_REASON_NO  NOT NULL NUMBER(2)   
*/


INSERT INTO REP_RECRUIT
( REP_RECRUIT_NO
, RECRUIT_NO
, PIN_NO
, CREATED_DATE
, REP_REASON_NO
)
VALUES
( 'REPR'|| TO_CHAR(REPRECNOSEQ.NEXTVAL)
, 'RC7'
, (SELECT PIN_NO FROM USERS WHERE NICKNAME='스폰지밥' )
, SYSDATE
, 1);

--==>> 1 행 이(가) 삽입되었습니다.

DESC REP_RECRUIT_RESULT;
/*
RECRUIT_RESULT_NO NOT NULL VARCHAR2(16) 
REP_RECRUIT_NO    NOT NULL VARCHAR2(16) 
REP_RESULT_NO     NOT NULL NUMBER(2)    
REGU_NO           NOT NULL NUMBER(1)    
REGU_PERIOD_NO    NOT NULL NUMBER(1)    
PIN_NO            NOT NULL VARCHAR2(16) 
REGU_DATE                  DATE         

*/

SELECT *
FROM REPORT_RESULT;
/*
1	처리
0	반려
*/
SELECT *
FROM REGULATION;
/*
1	성희롱
2	음란물
3	욕설
4	광고
5	도배
6	유해한 행위(자해 및 자살 등)
7	사기성 행위
8	부적절한 콘텐츠
9	기타
*/

SELECT * 
FROM REGULATION_PERIOD;

INSERT INTO REP_RECRUIT_RESULT
( RECRUIT_RESULT_NO
, REP_RECRUIT_NO
, REP_RESULT_NO
, REGU_NO
, REGU_PERIOD_NO
, PIN_NO
, REGU_DATE )
VALUES
( 'RESR'||TO_CHAR(RECRUITRESULTNOSEQ.NEXTVAL)
, 'REPR1'
, 1
, 8
, 3
, (SELECT PIN_NO FROM USERS WHERE NICKNAME='스폰지밥')
, SYSDATE
);
--==>> 1 행 이(가) 삽입되었습니다.


--추가 신고 미처리자 데이터 입력

INSERT INTO USER_PIN
( PIN_NO
, JOIN_DATE)
VALUES
( 'UP'||TO_CHAR(USERPINSEQ.NEXTVAL)
 , SYSDATE);
--==>> 1 행 이(가) 삽입되었습니다.
INSERT INTO USERS
( USER_NO
, PIN_NO
, ID
, PW
, NICKNAME
, PHOTOURL)
VALUES
( 'US'||TO_CHAR(USERNOSEQ.NEXTVAL)
, (SELECT PIN_NO
   FROM (SELECT PIN_NO
         FROM USER_PIN
         ORDER BY JOIN_DATE DESC)
   WHERE ROWNUM = 1)
,'bad@naver.com'
,'java002'
,'나쁜사람'
,'images/defaulfPhoto.jpg');
--==>> 1 행 이(가) 삽입되었습니다.

SELECT * FROM USERS;




INSERT INTO RECRUIT
( RECRUIT_NO
, PIN_NO
, DO_TYPE_NO
, TITLE
, CONTENT
, CREATED_DATE
, PRJ_START
, PRJ_END
)
VALUES
( 
'RC'||TO_CHAR(RECRUITNOSEQ.NEXTVAL)
, (SELECT PIN_NO FROM USERS WHERE NICKNAME='나쁜사람')
, 1
, '애매한 제목의 공고'
, '애매한 내용의 공고'
, SYSDATE
, TO_DATE('2023-08-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
, TO_DATE('2023-12-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
);
--==>> 1 행 이(가) 삽입되었습니다.


SELECT * FROM RECRUIT;


INSERT INTO REP_RECRUIT
( REP_RECRUIT_NO
, RECRUIT_NO
, PIN_NO
, CREATED_DATE
, REP_REASON_NO
)
VALUES
( 'REPR'|| TO_CHAR(REPRECNOSEQ.NEXTVAL)
, 'RC8'
, (SELECT PIN_NO FROM USERS WHERE NICKNAME='나쁜사람' )
, SYSDATE
, 1);
--==>> 1 행 이(가) 삽입되었습니다.


SELECT * FROM REP_RECRUIT LEFT JOIN USERS ON REP_RECRUIT.PIN_NO = USERS.PIN_NO;

COMMIT;
--===>> 커밋완료
DESC REP_RECRUIT;
DESC REP_RECRUIT_RESULT;

SELECT RR.REP_RECRUIT_NO, RRR.RECRUIT_RESULT_NO
FROM REP_RECRUIT RR LEFT OUTER JOIN REP_RECRUIT_RESULT RRR ON RR.REP_RECRUIT_NO = RRR.REP_RECRUIT_NO;
/*
REPR1	RESR1
REPR2	
*/

DESC FAQ;

INSERT INTO FAQ
( FAQ_NO
, TITLE
, CONTENT
)
VALUES
( FAQNOSEQ.NEXTVAL
, 'FAQ 예시1'
, '예시 1에 관련된 내용'
);
--==>> 1 행 이(가) 삽입되었습니다.

SELECT * FROM FAQ;
--==>> 1	FAQ 예시1	예시 1에 관련된 내용


COMMIT;
--==>> 커밋완료

SELECT * FROM USERS;

DESC ADMIN_NOTICE;
/*
ADMIN_NOTICE_NO NOT NULL VARCHAR2(8)    
TITLE           NOT NULL VARCHAR2(100)  
CONTENT         NOT NULL VARCHAR2(1000) 
PIN_NO          NOT NULL VARCHAR2(16)   
*/


SELECT * FROM ADMIN;

INSERT INTO ADMIN_NOTICE
( ADMIN_NOTICE_NO
, TITLE
, CONTENT
, PIN_NO)
VALUES
('AN'||TO_CHAR(ADMINNOTICENOSEQ.NEXTVAL)
, '오픈 첫 공지'
, '많관잘부'
, 'UP16');
--==>> 1 행 이(가) 삽입되었습니다.


SELECT * FROM ADMIN_NOTICE;
--==>> AN1	오픈 첫 공지	많관잘부	UP16

DESC QUESTION;
/*
QUESTION_NO  NOT NULL VARCHAR2(12)   
PIN_NO       NOT NULL VARCHAR2(16)   
TITLE        NOT NULL VARCHAR2(100)  
CONTENT      NOT NULL VARCHAR2(1000) 
CREATED_DATE          DATE       
*/

INSERT INTO QUESTION
(QUESTION_NO
,PIN_NO
,TITLE
,CONTENT
,CREATED_DATE)
VALUES
('QN'||TO_CHAR(QUESTIONNOSEQ.NEXTVAL)
, 'UP1'
, '등업 질문'
,'등업은 어떻게 하나요?'
, SYSDATE);
--==>> 1 행 이(가) 삽입되었습니다.

SELECT * FROM QUESTION;
--===>> QN1	UP1	등업 질문	등업은 어떻게 하나요?	2023-08-07

COMMIT;
--==>> 커밋 완료.


DESC REP_APPLY_RESULT;

DESC REPORT_RESULT;

SELECT * FROM USERS;

DESC USERS;

-- 아이디 중복검사를 뷰 생성


CREATE OR REPLACE VIEW IDCHECK
AS
SELECT ID
FROM USERS 
UNION ALL 
SELECT ADMIN_ID AS ID
FROM ADMIN;

--==>> View IDCHECK이(가) 생성되었습니다.

SELECT ID
FROM IDCHECK;
/*
bad@naver.com
doolahyeon@gmail.com
nedahyeon@gmail.com
ohahyeon@gmail.com
sedahyeon@gmail.com
spb@naver.com
test995@test.com
test996@test.com
test997@test.com
test998@test.com
test999@test.com
tty@naver.com
ugahyeon@gmail.com
노진구@naver.com
도라에몽@naver.com
비실이@naver.com
이슬이@naver.com
퉁퉁이@naver.com
admin001@gmail.com
admin002@gmail.com
*/

--==>> 아이디 중복 체크용 COUNT
SELECT COUNT(*) AS COUNT
FROM IDCHECK
WHERE ID='노진구@naver.com';
--==>> 1

--==>> 아이디 중복검사용
SELECT COUNT(*) AS COUNT
FROM IDCHECK
WHERE ID='';


SELECT COUNT(*) AS COUNT
FROM USERS
WHERE NICKNAME='스폰지밥';
--==>> 1

--==>> 닉네임 중복 검사용
SELECT COUNT(*) AS COUNT
FROM USERS
WHERE NICKNAME='';


SELECT *
FROM FAQ;

