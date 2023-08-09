SELECT USER
FROM DUAL;
--==>> PROJECTORS

------------------------------------------------------------ ■ 생성한 시퀀스 확인
SELECT SEQUENCE_NAME, LAST_NUMBER
FROM USER_SEQUENCES;
/*  2023.08.09 10시 30분 기준
ADMINNOSEQ	3
ADMINNOTICENOSEQ	3
APPLYNOSEQ	21
FAQNOSEQ	5
FINALNOSEQ	8
FIRSTCKSEQ	8
LOGINRECSEQ	2
LOGOUTRECSEQ	1
PROFILENOSEQ	21
PROJECTNOSEQ	3
QUESTIONNOSEQ	13
QUITADMINNOSEQ	1
RECRUITDELSEQ	1
RECRUITNOSEQ	10
RECRUITPOSSEQ	24
RECRUITRESULTNOSEQ	2
REPRECNOSEQ	3
RTOOLNOSEQ	26
USERNOSEQ	25
USERPINSEQ	29
UTOOLNOSEQ	36
WDUSERNOSEQ	21
*/
------------------------------------------------------------ ■ 시퀀스 생성
--● 유저 핀번호(난수번호)
CREATE SEQUENCE USERPINSEQ
NOCACHE;

--● 회원번호
CREATE SEQUENCE USERNOSEQ
NOCACHE;

--● 탈퇴한 회원번호
CREATE SEQUENCE WDUSERNOSEQ;
NOCACHE;

--● 프로필번호
CREATE SEQUENCE PROFILENOSEQ
NOCACHE;

--● 유저 사용기술 번호 (프로필 삽입)
CREATE SEQUENCE UTOOLNOSEQ
NOCACHE;

--● 모집공고번호
CREATE SEQUENCE RECRUITNOSEQ
NOCACHE;

--● 모집공고 포지션 번호
CREATE SEQUENCE RECRUITPOSSEQ
NOCACHE;

--● 모집공고 사용도구 번호
CREATE SEQUENCE RTOOLNOSEQ
NOCACHE;

--● 삭제된 모집공고 번호
CREATE SEQUENCE RECRUITDELSEQ
NOCACHE;

--●  지원서 번호
CREATE SEQUENCE APPLYNOSEQ
NOCACHE;

--● 1차 합류자 번호
CREATE SEQUENCE FIRSTCKSEQ
NOCACHE;

--● 최종 합류자 번호
CREATE SEQUENCE FINALNOSEQ
NOCACHE;

--● 프로젝트 번호(팀스페이스)
CREATE SEQUENCE PROJECTNOSEQ
NOCACHE;

--● 관리자번호
CREATE SEQUENCE ADMINNOSEQ
NOCACHE;

--● 그만둔 관리자 번호
CREATE SEQUENCE QUITADMINNOSEQ
NOCACHE;

--● 관리자 공지글 번호
CREATE SEQUENCE ADMINNOTICENOSEQ
NOCACHE;

--● 로그인 로그 번호
CREATE SEQUENCE LOGINRECSEQ
NOCACHE;

--● 로그아웃 로그 번호
CREATE SEQUENCE LOGOUTRECSEQ
NOCACHE;

--● 
CREATE SEQUENCE REPRECNOSEQ
NOCACHE;

--● 
CREATE SEQUENCE RECRUITRESULTNOSEQ
NOCACHE;

--● 
CREATE SEQUENCE FAQNOSEQ
NOCACHE;

--● 
CREATE SEQUENCE QUESTIONNOSEQ
NOCACHE;





COMMIT;

--==================================================================

/*
관리자             → AD||SEQ
회원식별번호       → UP||SEQ
유저               → US||SEQ
프로필             → PF||SEQ
유저 사용 도구      → UT||SEQ
공지               → NT||SEQ
공고               → RC||SEQ
지원서             → AP||SEQ
프로젝트           → PJ||SEQ
모집 포지션 번호    → RP||SEQ
1차 합류 번호       → FS||SEQ
최종 합류 번호      → FN||SEQ
*/
------------------------------------------------------------ ■ 기본 환경 설정
ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD HH24:MI:SS';


------------------------------------------------------------ ■ 번호 생성 규칙
/*
관리자             → AD||SEQ
회원식별번호       → UP||SEQ
유저               → US||SEQ
프로필             → PF||SEQ
유저 사용 도구      → UT||SEQ
공지               → NT||SEQ
공고               → RC||SEQ
지원서             → AP||SEQ
프로젝트           → PJ||SEQ
모집 포지션 번호    → RP||SEQ
1차 합류 번호       → FS||SEQ
최종 합류 번호      → FN||SEQ
*/


------------------------------------------------------------ ■ 한아현 샘플데이터 생성
-- 유저 핀번호 생성
INSERT INTO USER_PIN(PIN_NO, JOIN_DATE) VALUES('UP'||TO_CHAR(USERPINSEQ.NEXTVAL),SYSDATE);
-- 유저 번호 시퀀스 생성
CREATE SEQUENCE USERNOSEQ
NOCACHE;



--● 회원 테이블(USERS) 인서트 (유저번호, 유저핀번호, 아이디, 비번, 닉네임, 프사) 

INSERT INTO USER_PIN(PIN_NO, JOIN_DATE) VALUES('UP'||TO_CHAR(USERPINSEQ.NEXTVAL),SYSDATE);
--==>> 1 행 이(가) 삽입되었습니다.
SELECT * FROM USER_PIN;
--==>>UP1	2023-08-06 17:57:18

INSERT INTO USERS(USER_NO, PIN_NO, ID, PW, NICKNAME, PHOTOURL)
VALUES
('US'||TO_CHAR(USERNOSEQ.NEXTVAL)        --유저번호
,(SELECT PIN_NO FROM USER_PIN WHERE PIN_NO='UP1')          -- 유저 핀번호
, 'doolahyeon@gmail.com'  -- 아이디(이메일)
, 'user0001' -- 비밀번호(암호화)
, '두라현'                                  -- 닉네임
, 'images/defaultPhoto.jpg');                -- 프로필사진 url

--==>> 1 행 이(가) 삽입되었습니다.

INSERT INTO USER_PIN(PIN_NO, JOIN_DATE) VALUES('UP'||TO_CHAR(USERPINSEQ.NEXTVAL),SYSDATE);
--==>> 1 행 이(가) 삽입되었습니다.
SELECT * FROM USER_PIN;
--==>>UP1	2023-08-06 17:57:18

INSERT INTO USERS(USER_NO, PIN_NO, ID, PW, NICKNAME, PHOTOURL)
VALUES
('US'||TO_CHAR(USERNOSEQ.NEXTVAL)       --유저번호
,(SELECT PIN_NO FROM USER_PIN WHERE PIN_NO='UP2')           -- 유저 핀번호
, 'sedahyeon@gmail.com'                     -- 아이디(이메일)
, 'user0002'    -- 비밀번호(암호화)
, '세다현'                                  -- 닉네임
, 'images/defaultPhoto.jpg');                -- 프로필사진 url
--==>> 1 행 이(가) 삽입되었습니다.

INSERT INTO USER_PIN(PIN_NO, JOIN_DATE) VALUES('UP'||TO_CHAR(USERPINSEQ.NEXTVAL),SYSDATE);
--==>> 1 행 이(가) 삽입되었습니다.
SELECT * FROM USER_PIN;
--==>>UP3	2023-08-06 17:57:18


INSERT INTO USERS(USER_NO, PIN_NO, ID, PW, NICKNAME, PHOTOURL)
VALUES
('US'||TO_CHAR(USERNOSEQ.NEXTVAL)          --유저번호
,(SELECT PIN_NO FROM USER_PIN WHERE PIN_NO='UP3')          -- 유저 핀번호
, 'nedahyeon@gmail.com'                     -- 아이디(이메일)
, 'user0003'    -- 비밀번호(암호화)
, '네다현'                                  -- 닉네임
, 'images/defaultPhoto.jpg');                -- 프로필사진 url


SELECT *
FROM USERS;
/*
US1	UP1	doolahyeon@gmail.com	user0001	두라현	images/defaultPhoto.jpg
US2	UP2	sedahyeon@gmail.com	user0002	세다현	images/defaultPhoto.jpg
US3	UP3	nedahyeon@gmail.com	user0003	네다현	images/defaultPhoto.jpg
*/

INSERT INTO USER_PIN(PIN_NO, JOIN_DATE) VALUES('UP'||TO_CHAR(USERPINSEQ.NEXTVAL),SYSDATE);
--==>> 1 행 이(가) 삽입되었습니다.
SELECT * FROM USER_PIN;
--==>UP4	2023-08-06 18:29:33

INSERT INTO USERS(USER_NO, PIN_NO, ID, PW, NICKNAME, PHOTOURL)
VALUES
('US'||TO_CHAR(USERNOSEQ.NEXTVAL)          --유저번호
,(SELECT PIN_NO FROM USER_PIN WHERE PIN_NO='UP4')         -- 유저 핀번호
, 'ohahyeon@gmail.com'                     -- 아이디(이메일)
,'user0004'    -- 비밀번호(암호화)
, '오아현'                                  -- 닉네임
, 'images/defaultPhoto.jpg');                -- 프로필사진 url
--==>> 1 행 이(가) 삽입되었습니다.

SELECT *
FROM USERS;
/*
US1	UP1	doolahyeon@gmail.com	user0001	두라현	images/defaultPhoto.jpg
US2	UP2	sedahyeon@gmail.com	user0002	세다현	images/defaultPhoto.jpg
US3	UP3	nedahyeon@gmail.com	user0003	네다현	images/defaultPhoto.jpg
US4	UP4	ohahyeon@gmail.com	user0004	오아현	images/defaultPhoto.jpg
*/

INSERT INTO USER_PIN(PIN_NO, JOIN_DATE) VALUES('UP'||TO_CHAR(USERPINSEQ.NEXTVAL),SYSDATE);
--==>> 1 행 이(가) 삽입되었습니다.
SELECT * FROM USER_PIN;
--==>UP5	2023-08-06 18:32:44


INSERT INTO USERS(USER_NO, PIN_NO, ID, PW, NICKNAME, PHOTOURL)
VALUES
('US'||TO_CHAR(USERNOSEQ.NEXTVAL)          --유저번호
,(SELECT PIN_NO FROM USER_PIN WHERE PIN_NO='UP5')           -- 유저 핀번호
, 'ugahyeon@gmail.com'                     -- 아이디(이메일)
, 'user0005'    -- 비밀번호(암호화)
, '유가현'                                  -- 닉네임
, 'images/defaultPhoto.jpg');                -- 프로필사진 url


SELECT *
FROM USERS;
/*
US1	UP1	doolahyeon@gmail.com	user0001	두라현	images/defaultPhoto.jpg
US2	UP2	sedahyeon@gmail.com	user0002	세다현	images/defaultPhoto.jpg
US3	UP3	nedahyeon@gmail.com	user0003	네다현	images/defaultPhoto.jpg
US4	UP4	ohahyeon@gmail.com	user0004	오아현	images/defaultPhoto.jpg
US5	UP5	ugahyeon@gmail.com	user0005	유가현	images/defaultPhoto.jpg
*/
--==============================================================================
--------------------------------------------------------------------------------
--● 프로필 인서트문


-- 프로필(PROFILE) 인서트 (프로필번호, 유저핀번호, 포지션번호,세부지역번호,등록일)
INSERT INTO PROFILE
(PROFILE_NO, PIN_NO, POS_NO, SUB_REGION_NO, PROFILE_DATE)
VALUES
('PF'||TO_CHAR(PROFILENOSEQ.NEXTVAL)
,'UP1'
, 1                                                     
, 991               -- 서울전체  
, SYSDATE);
--==>> 1 행 이(가) 삽입되었습니다.

SELECT * FROM PROFILE;
--==>> PF1	UP1	1	991	2023-08-06 18:39:57


INSERT INTO PROFILE
(PROFILE_NO, PIN_NO, POS_NO, SUB_REGION_NO, PROFILE_DATE)
VALUES
('PF'||TO_CHAR(PROFILENOSEQ.NEXTVAL)
,'UP2'
, 2                                                       
, 1                 -- 경기도 고양시
, SYSDATE);
--==>> 1 행 이(가) 삽입되었습니다.
SELECT * FROM PROFILE;
--==>> PF2	UP2	2	1	2023-08-06 18:41:07

INSERT INTO PROFILE
(PROFILE_NO, PIN_NO, POS_NO, SUB_REGION_NO, PROFILE_DATE)
VALUES
('PF'||TO_CHAR(PROFILENOSEQ.NEXTVAL)
,'UP3'
, 2                                                       
, 28                 -- 강원도 강릉시
, SYSDATE);
--==>> 1 행 이(가) 삽입되었습니다.
SELECT * FROM PROFILE;
--==>> PF3	UP3	2	28	2023-08-06 18:41:52



INSERT INTO PROFILE
(PROFILE_NO, PIN_NO, POS_NO, SUB_REGION_NO, PROFILE_DATE)
VALUES
('PF'||TO_CHAR(PROFILENOSEQ.NEXTVAL)
,'UP4'
, 2                                                       
, 35                 -- 경상남도 거제시
, SYSDATE);
--==>> 1 행 이(가) 삽입되었습니다.




INSERT INTO PROFILE
(PROFILE_NO, PIN_NO, POS_NO, SUB_REGION_NO, PROFILE_DATE)
VALUES
('PF5'
,'UP5'
, 2                                                       
, 45                 -- 경상북도 구미시
, SYSDATE);
--==>> 행 이(가) 삽입되었습니다.
SELECT * FROM PROFILE;
/*
PF1	UP1	1	991	2023-08-06 18:39:57
PF2	UP2	2	1	2023-08-06 18:41:07
PF3	UP3	2	28	2023-08-06 18:41:52
PF4	UP4	2	35	2023-08-06 18:42:48
PF5	UP5	2	45	2023-08-06 18:45:49
*/

--==============================================================================
--------------------------------------------------------------------------------

--● 모집공고 인서트문
--(공고번호, 모집자의 핀번호, 진행방식번호, 제목, 내용, 등록일, 프로젝트 시작일, 프로젝트 종료일)

--● 1) 공고 1 ( 모집중) 8/6 공고 등록 , 19일 마감일 
INSERT INTO RECRUIT (RECRUIT_NO, PIN_NO, DO_TYPE_NO, TITLE, CONTENT, CREATED_DATE, PRJ_START, PRJ_END) 
VALUES('RC'||TO_CHAR(RECRUITNOSEQ.NEXTVAL)
        ,'UP1'
        , 1                                         
        , '반려동물 집사를 위한 커뮤니티'               
        , '반려동물 집사들이 서로 정보를 공유하고 소통할 수 있는 커뮤니티를 기획하고 있습니다..' 
        , TO_DATE('2023-08-06', 'YYYY-MM-DD')                                    
        , TO_DATE('2023-08-25', 'YYYY-MM-DD')
        , TO_DATE('2023-10-25', 'YYYY-MM-DD'));
--==>> 1 행 이(가) 삽입되었습니다.

--● 2) 공고 2 ( 모집완료) 7/23 공고 등록 , 8/5일 모집 마감, 6일 합류체크 모두 완료 
INSERT INTO RECRUIT (RECRUIT_NO, PIN_NO, DO_TYPE_NO, TITLE, CONTENT, CREATED_DATE, PRJ_START, PRJ_END) 
VALUES('RC'||TO_CHAR(RECRUITNOSEQ.NEXTVAL)
        ,'UP2'
        , 0                                         
        , '프로젝트 기획부터 함께하실 분들을 구합니다.'               
        , '프로젝트 경험이 없거나 적은 분들도 괜찮습니다. 저 포함 총 3명으로..' 
        , TO_DATE('2023-07-23', 'YYYY-MM-DD')                                    
        , TO_DATE('2023-08-10', 'YYYY-MM-DD')
        , TO_DATE('2023-10-10', 'YYYY-MM-DD'));
--==>> 1 행 이(가) 삽입되었습니다.

--------------------------------------------------------------------------------
--● 지원서 1 (공고1(모집중) 의 모집자 지원서(자동처리))
-- (지원 번호, 공고에서 모집중인 포지션번호, 지원자의 핀번호, 내용, 지원일, 처리일시(수락/거절) 


-- 모집 포지션 번호
DESC RECRUIT_POS ;
/*
RECRUIT_POS_NO NOT NULL VARCHAR2(20) 
RECRUIT_NO     NOT NULL VARCHAR2(16) 
POS_NO         NOT NULL NUMBER(2)   
*/

SELECT * FROM RECRUIT;

--1
INSERT INTO RECRUIT_POS
(RECRUIT_POS_NO
, RECRUIT_NO
, POS_NO)
VALUES
('RP'||TO_CHAR(RECRUITPOSSEQ.NEXTVAL)
,'RC1'
,1);
--2
INSERT INTO RECRUIT_POS
(RECRUIT_POS_NO
, RECRUIT_NO
, POS_NO)
VALUES
('RP'||TO_CHAR(RECRUITPOSSEQ.NEXTVAL)
,'RC1'
,2);
--3
INSERT INTO RECRUIT_POS
(RECRUIT_POS_NO
, RECRUIT_NO
, POS_NO)
VALUES
('RP'||TO_CHAR(RECRUITPOSSEQ.NEXTVAL)
,'RC2'
,1);
--4
INSERT INTO RECRUIT_POS
(RECRUIT_POS_NO
, RECRUIT_NO
, POS_NO)
VALUES
('RP'||TO_CHAR(RECRUITPOSSEQ.NEXTVAL)
,'RC2'
,2);
--5
INSERT INTO RECRUIT_POS
(RECRUIT_POS_NO
, RECRUIT_NO
, POS_NO)
VALUES
('RP'||TO_CHAR(RECRUITPOSSEQ.NEXTVAL)
,'RC2'
,2);
--===>> 1 행 이(가) 삽입되었습니다. *5
SELECT * FROM RECRUIT_POS;
/*
RP1	RC1	1
RP2	RC1	2
RP3	RC2	1
RP4	RC2	2
RP5	RC2	2
*/

--===============================================================================
SELECT * FROM RECRUIT;

SELECT *
FROM RECRUIT;



INSERT INTO APPLY (APPLY_NO, RECRUIT_POS_NO, PIN_NO, CONTENT, APPLY_DATE, CK_DATE) 
VALUES('AP'||TO_CHAR(APPLYNOSEQ.NEXTVAL)
        , 'RP1' -- 예시 (공고에서 모집중인 포지션 번호)(사용자가 선택한 값)
        , 'UP1' -- 지원자 핀 번호(=모집자)
        ,'없음' -- 내용
        , TO_DATE('2023-08-06', 'YYYY-MM-DD')     -- 지원일 (공고 등록일시와 같음) 원래는 SYSDATE로 
        , TO_DATE('2023-08-06', 'YYYY-MM-DD'));     -- 처리일 (공고 등록일시와 같음) 원래는 SYSDATE로 
--==>> 1 행 이(가) 삽입되었습니다.



--● 지원서 2 (공고1(모집중) 의 지원자의 지원서
-- (지원 번호, 공고에서 모집중인 포지션번호, 지원자의 핀번호, 내용, 지원일, 처리일시(수락/거절) 

INSERT INTO APPLY (APPLY_NO, RECRUIT_POS_NO, PIN_NO, CONTENT, APPLY_DATE, CK_DATE) 
VALUES('AP'||TO_CHAR(APPLYNOSEQ.NEXTVAL)
        , 'RP2' -- 예시 (공고에서 모집중인 포지션 번호)(사용자가 선택한 값)
        , 'UP3' -- 지원자 핀 번호
        ,'안녕하세요. 강아지 두 마리를 키우고 있는 집사입니다! 반려인으로서 주제에 관심이..' -- 내용
        , TO_DATE('2023-08-06', 'YYYY-MM-DD')     -- 지원일 (공고 등록일시와 같음) 원래는 SYSDATE로 
        , TO_DATE('2023-08-06', 'YYYY-MM-DD'));     -- 처리일 (공고 등록일시와 같음) 원래는 SYSDATE로 
--==>> 1 행 이(가) 삽입되었습니다.


--● 지원서 3 (공고2(모집 완료) 의 모집자 지원서(자동처리)
-- (지원 번호, 공고에서 모집중인 포지션번호, 지원자의 핀번호, 내용, 지원일, 처리일시(수락/거절) 
SELECT * FROM RECRUIT_POS;
/*
RP1	RC1	1
RP2	RC1	2
RP3	RC2	1
RP4	RC2	2
RP5	RC2	2
*/
INSERT INTO APPLY (APPLY_NO, RECRUIT_POS_NO, PIN_NO, CONTENT, APPLY_DATE, CK_DATE) 
VALUES('AP'||TO_CHAR(APPLYNOSEQ.NEXTVAL)
        , 'RP3' -- 예시 (공고에서 모집중인 포지션 번호)(사용자가 선택한 값)
        , 'UP2' -- (= 모집자 핀번호)
        ,'없음' -- 내용
        , TO_DATE('2023-07-23', 'YYYY-MM-DD')     -- 지원일 (공고 등록일시와 같음) 원래는 SYSDATE로 
        , TO_DATE('2023-07-23', 'YYYY-MM-DD'));    -- 처리일 (공고 등록일시와 같음) 원래는 SYSDATE로 
--==>> 1 행 이(가) 삽입되었습니다.

--● 지원서 4 (공고2(모집 완료) 의 모집자1 지원서(합격, 합류 완료)
-- (지원 번호, 공고에서 모집중인 포지션번호, 지원자의 핀번호, 내용, 지원일, 처리일시(수락/거절) 

INSERT INTO APPLY (APPLY_NO, RECRUIT_POS_NO, PIN_NO, CONTENT, APPLY_DATE, CK_DATE) 
VALUES('AP'||TO_CHAR(APPLYNOSEQ.NEXTVAL)
        , 'RP4' -- 예시 (공고에서 모집중인 포지션 번호)(사용자가 선택한 값)
        , 'UP4' -- (= 모집자 핀번호)
        ,'프로젝트 경험은 없지만 프론트엔드에 관심이 많아 이론적인 부분은 전반적으로 숙지하고 있습니다. 또한 클론 코딩으로..' -- 내용
        , TO_DATE('2023-07-24', 'YYYY-MM-DD')     -- 지원일  원래는 SYSDATE로 
        , TO_DATE('2023-07-24', 'YYYY-MM-DD'));    -- 처리일 원래는 SYSDATE로 
--==>> 1 행 이(가) 삽입되었습니다.

--● 지원서 5 (공고2(모집 완료) 의 모집자2 지원서(합격, 합류 완료)
-- (지원 번호, 공고에서 모집중인 포지션번호, 지원자의 핀번호, 내용, 지원일, 처리일시(수락/거절) 

INSERT INTO APPLY (APPLY_NO, RECRUIT_POS_NO, PIN_NO, CONTENT, APPLY_DATE, CK_DATE) 
VALUES('AP'||TO_CHAR(APPLYNOSEQ.NEXTVAL)
        , 'RP5' -- 예시 (공고에서 모집중인 포지션 번호)(사용자가 선택한 값)
        , 'UP5' -- (= 모집자 핀번호)
        ,'프로젝트 경험이 1회 있고 기본적인 기능 위주로 구성된 게시판이었습니다. 능숙하지는 않지만..' -- 내용
        , TO_DATE('2023-07-25', 'YYYY-MM-DD')     -- 지원일  원래는 SYSDATE로 
        , TO_DATE('2023-07-25', 'YYYY-MM-DD'));    -- 처리일 원래는 SYSDATE로 
--==>> 1 행 이(가) 삽입되었습니다

SELECT * FROM APPLY;
/*
AP1	RP1	UP1	없음	2023-08-06 00:00:00	2023-08-06 00:00:00
AP2	RP2	UP3	안녕하세요. 강아지 두 마리를 키우고 있는 집사입니다! 반려인으로서 주제에 관심이..	2023-08-06 00:00:00	2023-08-06 00:00:00
AP3	RP3	UP2	없음	2023-07-23 00:00:00	2023-07-23 00:00:00
AP4	RP4	UP4	프로젝트 경험은 없지만 프론트엔드에 관심이 많아 이론적인 부분은 전반적으로 숙지하고 있습니다. 또한 클론 코딩으로..	2023-07-24 00:00:00	2023-07-24 00:00:00
AP5	RP5	UP5	프로젝트 경험이 1회 있고 기본적인 기능 위주로 구성된 게시판이었습니다. 능숙하지는 않지만..	2023-07-25 00:00:00	2023-07-25 00:00:00
*/

--------------------------------------------------------------------------------



--● 프로젝트 (공고 2를 통해 생성, 인원 3명 )
--(프로젝트 번호, 공고번호, 프로젝트 생성일)

INSERT INTO PROJECT (PRJ_NO, RECRUIT_NO, PRJ_DATE)
VALUES('PJ'||TO_CHAR(PROJECTNOSEQ.NEXTVAL)
    , 'RC2'
    , TO_DATE('2023-08-06', 'YYYY-MM-DD')); -- 합류 체크 완료일 (원래는 SYSDATE)

--==>> 1 행 이(가) 삽입되었습니다.

SELECT * FROM PROJECT;
--==>> PJ1	RC2	2023-08-06 00:00:00

------------------------------------------------------------ ■ 이준복 샘플데이터 생성
--===============[회원 정보 INSERT]
INSERT INTO USER_PIN
(PIN_NO, JOIN_DATE) 
VALUES
( 'UP'||TO_CHAR(USERPINSEQ.NEXTVAL)
, SYSDATE);
--==>> 1 행 이(가) 삽입되었습니다.
SELECT * FROM USER_PIN;
SELECT * FROM USERS;

INSERT INTO USERS
( USER_NO
, PIN_NO
, ID
, PW
, NICKNAME
, PHOTOURL)
VALUES
( 'US'||TO_CHAR(USERNOSEQ.NEXTVAL)  
, 'UP6'
, '도라에몽@naver.com'
, 'java002$'
, '도라에몽'
, 'c://WebStudy');
--==>> 1 행 이(가) 삽입되었습니다.

INSERT INTO USER_PIN
(PIN_NO, JOIN_DATE) 
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
, 'UP7'
, '노진구@naver.com'
, 'java002$'
, '노진구'
, 'c://WebStudy');
--==>> 1 행 이(가) 삽입되었습니다.


INSERT INTO USER_PIN
(PIN_NO, JOIN_DATE) 
VALUES
( 'UP'||TO_CHAR(USERPINSEQ.NEXTVAL)
, SYSDATE);
--==>> 1 행 이(가) 삽입되었습니다.;


INSERT INTO USERS
( USER_NO
, PIN_NO
, ID
, PW
, NICKNAME
, PHOTOURL)
VALUES
( 'US'||TO_CHAR(USERNOSEQ.NEXTVAL)  
, 'UP8'
, '비실이@naver.com'
, 'java002$'
, '비실이'
, 'c://WebStudy');
--==>>  1 행 이(가) 삽입되었습니다.


INSERT INTO USER_PIN
(PIN_NO, JOIN_DATE) 
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
, 'UP9'
, '퉁퉁이@naver.com'
, 'java002$'
, '퉁퉁이'
, 'c://WebStudy');
--===>> 1 행 이(가) 삽입되었습니다.

INSERT INTO USER_PIN
(PIN_NO, JOIN_DATE) 
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
, 'UP10'
, '이슬이@naver.com'
, 'java002$'
, '이슬이'
, 'c://WebStudy');
--==>>1 행 이(가) 삽입되었습니다.

SELECT * FROM USERS;
/*
US6	UP6	도라에몽@naver.com	java002$	도라에몽	c://WebStudy
US7	UP7	노진구@naver.com	java002$	노진구	c://WebStudy
US8	UP8	비실이@naver.com	java002$	비실이	c://WebStudy
US9	UP9	퉁퉁이@naver.com	java002$	퉁퉁이	c://WebStudy
US10	UP10	이슬이@naver.com	java002$	이슬이	c://WebStudy
*/

--[회원 프로필 INSERT]====================

INSERT INTO PROFILE
( PROFILE_NO
, PIN_NO
, POS_NO
, SUB_REGION_NO
, PROFILE_DATE)
VALUES
( 'PF'||TO_CHAR(PROFILENOSEQ.NEXTVAL)
, (SELECT PIN_NO
  FROM USERS
  WHERE NICKNAME='도라에몽')
, 1
, 16
, SYSDATE);
--==>> 1 행 이(가) 삽입되었습니다.

SELECT * FROM PROFILE
LEFT JOIN USERS ON PROFILE.PIN_NO = USERS.PIN_NO ;

INSERT INTO PROFILE
( PROFILE_NO
, PIN_NO
, POS_NO
, SUB_REGION_NO
, PROFILE_DATE)
VALUES
( 'PF'||TO_CHAR(PROFILENOSEQ.NEXTVAL)
, (SELECT PIN_NO
  FROM USERS
  WHERE NICKNAME='노진구')
, 2
, 30
, SYSDATE);
--==>> 1 행 이(가) 삽입되었습니다

INSERT INTO PROFILE
( PROFILE_NO
, PIN_NO
, POS_NO
, SUB_REGION_NO
, PROFILE_DATE)
VALUES
( 'PF'||TO_CHAR(PROFILENOSEQ.NEXTVAL)
, (SELECT PIN_NO
  FROM USERS
  WHERE NICKNAME='비실이')
, 3
, 7
, SYSDATE);
--===>> 1 행 이(가) 삽입되었습니다.

INSERT INTO PROFILE
( PROFILE_NO
, PIN_NO
, POS_NO
, SUB_REGION_NO
, PROFILE_DATE)
VALUES
( 'PF'||TO_CHAR(PROFILENOSEQ.NEXTVAL)
, (SELECT PIN_NO
  FROM USERS
  WHERE NICKNAME='퉁퉁이')
, 4
, 12
, SYSDATE);
--==>> 1 행 이(가) 삽입되었습니다.


INSERT INTO PROFILE
( PROFILE_NO
, PIN_NO
, POS_NO
, SUB_REGION_NO
, PROFILE_DATE)
VALUES
( 'PF'||TO_CHAR(PROFILENOSEQ.NEXTVAL)
, (SELECT PIN_NO
  FROM USERS
  WHERE NICKNAME='이슬이')
, 2
, 41
, SYSDATE);
--==>> 1 행 이(가) 삽입되었습니다.

SELECT * FROM PROFILE;
/*
PF6	UP6	1	16	2023-08-06 19:32:33
PF7	UP7	2	30	2023-08-06 19:34:33
PF8	UP8	3	7	2023-08-06 19:34:56
PF9	UP9	4	12	2023-08-06 19:35:11
PF10	UP10	2	41	2023-08-06 19:35:27
*/


--[유저 사용 언어 + 환경]===========================

INSERT INTO USER_TOOL
( UTOOL_NO
, PROFILE_NO
, TOOL_NO)
VALUES
( 'UT'||TO_CHAR(UTOOLNOSEQ.NEXTVAL)
, (SELECT PROFILE_NO
    FROM PROFILE
    WHERE PIN_NO =(SELECT PIN_NO
                   FROM USERS
                   WHERE NICKNAME='도라에몽'))
,1);
--==>> 1 행 이(가) 삽입되었습니다.


INSERT INTO USER_TOOL
( UTOOL_NO
, PROFILE_NO
, TOOL_NO)
VALUES
( 'UT'||TO_CHAR(UTOOLNOSEQ.NEXTVAL)
, (SELECT PROFILE_NO
    FROM PROFILE
    WHERE PIN_NO =(SELECT PIN_NO
                   FROM USERS
                   WHERE NICKNAME='도라에몽'))
,11);
--==>> 1 행 이(가) 삽입되었습니다.

INSERT INTO USER_TOOL
( UTOOL_NO
, PROFILE_NO
, TOOL_NO)
VALUES
( 'UT'|| TO_CHAR(UTOOLNOSEQ.NEXTVAL)
, (SELECT PROFILE_NO
    FROM PROFILE
    WHERE PIN_NO =(SELECT PIN_NO
                   FROM USERS
                   WHERE NICKNAME='도라에몽'))
,21);
--==>> 1 행 이(가) 삽입되었습니다.



INSERT INTO USER_TOOL
( UTOOL_NO
, PROFILE_NO
, TOOL_NO)
VALUES
( 'UT'||TO_CHAR(UTOOLNOSEQ.NEXTVAL)
, (SELECT PROFILE_NO
    FROM PROFILE
    WHERE PIN_NO =(SELECT PIN_NO
                   FROM USERS
                   WHERE NICKNAME='노진구'))
,2);
--==>> 1 행 이(가) 삽입되었습니다.

INSERT INTO USER_TOOL
( UTOOL_NO
, PROFILE_NO
, TOOL_NO)
VALUES
( 'UT'||TO_CHAR(UTOOLNOSEQ.NEXTVAL)
, (SELECT PROFILE_NO
    FROM PROFILE
    WHERE PIN_NO =(SELECT PIN_NO
                   FROM USERS
                   WHERE NICKNAME='노진구'))
,12);
--===>> 1 행 이(가) 삽입되었습니다.


INSERT INTO USER_TOOL
( UTOOL_NO
, PROFILE_NO
, TOOL_NO)
VALUES
( 'UT'||TO_CHAR(UTOOLNOSEQ.NEXTVAL)
, (SELECT PROFILE_NO
    FROM PROFILE
    WHERE PIN_NO =(SELECT PIN_NO
                   FROM USERS
                   WHERE NICKNAME='노진구'))
,22);
--==>> 1 행 이(가) 삽입되었습니다.


INSERT INTO USER_TOOL
( UTOOL_NO
, PROFILE_NO
, TOOL_NO)
VALUES
( 'UT'||TO_CHAR(UTOOLNOSEQ.NEXTVAL)
, (SELECT PROFILE_NO
    FROM PROFILE
    WHERE PIN_NO =(SELECT PIN_NO
                   FROM USERS
                   WHERE NICKNAME='비실이'))
,3);
--==>> 1 행 이(가) 삽입되었습니다.

INSERT INTO USER_TOOL
( UTOOL_NO
, PROFILE_NO
, TOOL_NO)
VALUES
( 'UT'||TO_CHAR(UTOOLNOSEQ.NEXTVAL)
, (SELECT PROFILE_NO
    FROM PROFILE
    WHERE PIN_NO =(SELECT PIN_NO
                   FROM USERS
                   WHERE NICKNAME='비실이'))
,13);
--==>> 1 행 이(가) 삽입되었습니다.

INSERT INTO USER_TOOL
( UTOOL_NO
, PROFILE_NO
, TOOL_NO)
VALUES
( 'UT'||TO_CHAR(UTOOLNOSEQ.NEXTVAL)
, (SELECT PROFILE_NO
    FROM PROFILE
    WHERE PIN_NO =(SELECT PIN_NO
                   FROM USERS
                   WHERE NICKNAME='비실이'))
,23);
--==>> 1 행 이(가) 삽입되었습니다.



INSERT INTO USER_TOOL
( UTOOL_NO
, PROFILE_NO
, TOOL_NO)
VALUES
( 'UT'||TO_CHAR(UTOOLNOSEQ.NEXTVAL)
, (SELECT PROFILE_NO
    FROM PROFILE
    WHERE PIN_NO =(SELECT PIN_NO
                   FROM USERS
                   WHERE NICKNAME='퉁퉁이'))
,4);
--==>> 1 행 이(가) 삽입되었습니다.

INSERT INTO USER_TOOL
( UTOOL_NO
, PROFILE_NO
, TOOL_NO)
VALUES
( 'UT'||TO_CHAR(UTOOLNOSEQ.NEXTVAL)
, (SELECT PROFILE_NO
    FROM PROFILE
    WHERE PIN_NO =(SELECT PIN_NO
                   FROM USERS
                   WHERE NICKNAME='퉁퉁이'))
,14);
--==>> 1 행 이(가) 삽입되었습니다.


INSERT INTO USER_TOOL
( UTOOL_NO
, PROFILE_NO
, TOOL_NO)
VALUES
( 'UT'||TO_CHAR(UTOOLNOSEQ.NEXTVAL)
, (SELECT PROFILE_NO
    FROM PROFILE
    WHERE PIN_NO =(SELECT PIN_NO
                   FROM USERS
                   WHERE NICKNAME='퉁퉁이'))
,24);
--==>> 1 행 이(가) 삽입되었습니다.

INSERT INTO USER_TOOL
( UTOOL_NO
, PROFILE_NO
, TOOL_NO)
VALUES
( 'UT'||TO_CHAR(UTOOLNOSEQ.NEXTVAL)
, (SELECT PROFILE_NO
    FROM PROFILE
    WHERE PIN_NO =(SELECT PIN_NO
                   FROM USERS
                   WHERE NICKNAME='이슬이'))
,5);
--==>> 1 행 이(가) 삽입되었습니다.

INSERT INTO USER_TOOL
( UTOOL_NO
, PROFILE_NO
, TOOL_NO)
VALUES
( 'UT'||TO_CHAR(UTOOLNOSEQ.NEXTVAL)
, (SELECT PROFILE_NO
    FROM PROFILE
    WHERE PIN_NO =(SELECT PIN_NO
                   FROM USERS
                   WHERE NICKNAME='이슬이'))
,15);
--===>> 1 행 이(가) 삽입되었습니다.

INSERT INTO USER_TOOL
( UTOOL_NO
, PROFILE_NO
, TOOL_NO)
VALUES
( 'UT'||TO_CHAR(UTOOLNOSEQ.NEXTVAL)
, (SELECT PROFILE_NO
    FROM PROFILE
    WHERE PIN_NO =(SELECT PIN_NO
                   FROM USERS
                   WHERE NICKNAME='이슬이'))
,25);
--==>> 1 행 이(가) 삽입되었습니다.

SELECT * FROM USER_TOOL;
/*
UT1	PF6	1
UT2	PF6	11
UT3	PF6	21
UT4	PF7	2
UT5	PF7	12
UT6	PF7	22
UT7	PF8	3
UT8	PF8	13
UT9	PF8	23
UT10	PF9	4
UT11	PF9	14
UT12	PF9	24
UT13	PF10	5
UT14	PF10	15
UT15	PF10	25
*/

-- 모집 공고 생성==============
--RECRUITNOSEQ.NEXTVAL

INSERT INTO RECRUIT
( RECRUIT_NO
, PIN_NO
, DO_TYPE_NO
, TITLE
, CONTENT
, CREATED_DATE
, PRJ_START
, PRJ_END)
VALUES
( 'RC'||TO_CHAR(RECRUITNOSEQ.NEXTVAL)
, (SELECT PIN_NO
   FROM USERS
   WHERE NICKNAME='도라에몽')
, 1 
, '주차 시스템 프로젝트'
, '주차 시스템 프로젝트에 관련된 내용'
, TO_DATE('2023-08-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
, TO_DATE('2023-08-20 10:00:00', 'YYYY-MM-DD HH24:MI:SS')
, TO_DATE('2023-09-20 23:59:59', 'YYYY-MM-DD HH24:MI:SS')
);
--==>> 1 행 이(가) 삽입되었습니다.

DESC RECRUIT_POS;

-- 어느 포지션 영입할 건지
INSERT INTO RECRUIT_POS
( RECRUIT_POS_NO
, RECRUIT_NO
, POS_NO)
VALUES
( 'RP'||TO_CHAR(RECRUITPOSSEQ.NEXTVAL)
, (SELECT RECRUIT_NO
  FROM RECRUIT
  WHERE PIN_NO = (SELECT PIN_NO FROM USERS WHERE NICKNAME='도라에몽'))
, 1);
--==>> 1 행 이(가) 삽입되었습니다.


INSERT INTO RECRUIT_POS
( RECRUIT_POS_NO
, RECRUIT_NO
, POS_NO)
VALUES
( 'RP'||TO_CHAR(RECRUITPOSSEQ.NEXTVAL)
, (SELECT RECRUIT_NO
  FROM RECRUIT
  WHERE PIN_NO = (SELECT PIN_NO FROM USERS WHERE NICKNAME='도라에몽'))
, 2);
--==>> 1 행 이(가) 삽입되었습니다.

INSERT INTO RECRUIT_POS
( RECRUIT_POS_NO
, RECRUIT_NO
, POS_NO)
VALUES
( 'RP'||TO_CHAR(RECRUITPOSSEQ.NEXTVAL)
, (SELECT RECRUIT_NO
  FROM RECRUIT
  WHERE PIN_NO = (SELECT PIN_NO FROM USERS WHERE NICKNAME='도라에몽'))
, 3);
--==>> 1 행 이(가) 삽입되었습니다.

-- 팀장 자동 지원 및 1차 합격까지

SELECT RP.RECRUIT_POS_NO, R.RECRUIT_NO , U.PIN_NO, U.NICKNAME
FROM RECRUIT_POS RP LEFT JOIN RECRUIT R ON RP.RECRUIT_NO = R.RECRUIT_NO
LEFT JOIN USERS U ON U.PIN_NO = R.PIN_NO; 
/*
RP2	RC1	UP1	두라현
RP1	RC1	UP1	두라현
RP5	RC2	UP2	세다현
RP4	RC2	UP2	세다현
RP3	RC2	UP2	세다현
RP8	RC3	UP6	도라에몽 --> 팀장 포지션
RP7	RC3	UP6	도라에몽
RP6	RC3	UP6	도라에몽
*/

INSERT INTO APPLY
( APPLY_NO
, RECRUIT_POS_NO
, PIN_NO
, CONTENT
, APPLY_DATE)
VALUES
( 'AP'||TO_CHAR(APPLYNOSEQ.NEXTVAL)
, 'RP8'
, (SELECT PIN_NO FROM USERS WHERE NICKNAME='도라에몽')
, '모집자 자동 지원 처리'
, TO_DATE('2023-08-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));
--==>>1 행 이(가) 삽입되었습니다.

SELECT * FROM APPLY;

INSERT INTO FIRST_CK
(FIRST_CK_NO
, APPLY_NO
, PASS_DATE)
VALUES
( 'FS'||FIRSTCKSEQ.NEXTVAL
, 'AP6'
, SYSDATE);
--==>> 1 행 이(가) 삽입되었습니다.


INSERT INTO RECRUIT
( RECRUIT_NO
, PIN_NO
, DO_TYPE_NO
, TITLE
, CONTENT
, CREATED_DATE
, PRJ_START
, PRJ_END)
VALUES
( 'RC'||RECRUITNOSEQ.NEXTVAL
, (SELECT PIN_NO
   FROM USERS
   WHERE NICKNAME='노진구')
, 1 
, '메신저 시스템 프로젝트'
, '메신저 시스템 프로젝트에 관련된 내용'
, TO_DATE('2023-07-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
, TO_DATE('2023-08-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
, TO_DATE('2023-11-01 23:59:59', 'YYYY-MM-DD HH24:MI:SS')
);
--==>> 1 행 이(가) 삽입되었습니다.

-- 팀장 자동 지원 및 1차 합격까지

SELECT * FROM RECRUIT_POS RP LEFT JOIN RECRUIT R ON RP.RECRUIT_NO = R.RECRUIT_NO 
LEFT JOIN USERS U ON R.PIN_NO = U.PIN_NO;

DESC RECRUIT_POS;

SELECT * FROM RECRUIT R LEFT JOIN USERS U ON R.PIN_NO = U.PIN_NO;

INSERT INTO RECRUIT_POS
( RECRUIT_POS_NO
, RECRUIT_NO
, POS_NO)
VALUES
('RP'||TO_CHAR(RECRUITPOSSEQ.NEXTVAL)
, 'RC4'
,1);
--==>> 1 행 이(가) 삽입되었습니다

INSERT INTO RECRUIT_POS
( RECRUIT_POS_NO
, RECRUIT_NO
, POS_NO)
VALUES
('RP'||TO_CHAR(RECRUITPOSSEQ.NEXTVAL)
, 'RC4'
,2);
--==>> 1 행 이(가) 삽입되었습니다

INSERT INTO RECRUIT_POS
( RECRUIT_POS_NO
, RECRUIT_NO
, POS_NO)
VALUES
('RP'||TO_CHAR(RECRUITPOSSEQ.NEXTVAL)
, 'RC4'
,2);
--==>> 1 행 이(가) 삽입되었습니다

SELECT *
FROM RECRUIT_POS;
/*
RP1	RC1	1
RP2	RC1	2
RP3	RC2	1
RP4	RC2	2
RP5	RC2	2
RP6	RC3	1
RP7	RC3	2
RP8	RC3	3
RP9	RC4	1
RP10	RC4	2
RP11	RC4	2
*/

SELECT PIN_NO FROM USERS WHERE NICKNAME='노진구';

SELECT * FROM RECRUIT_POS;

INSERT INTO APPLY
( APPLY_NO
, RECRUIT_POS_NO
, PIN_NO
, CONTENT
, APPLY_DATE)
VALUES
( 'AP'||TO_CHAR(APPLYNOSEQ.NEXTVAL)
, 'RP9'
, (SELECT PIN_NO FROM USERS WHERE NICKNAME='노진구')
, '팀장 자동 지원(노진구)'
,  TO_DATE('2023-07-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));
--==>> 1 행 이(가) 삽입되었습니다.


INSERT INTO FIRST_CK
(FIRST_CK_NO
, APPLY_NO
, PASS_DATE)
VALUES
( 'FS'||FIRSTCKSEQ.NEXTVAL
, 'AP9'
,  TO_DATE('2023-07-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));
--==>> 1 행 이(가) 삽입되었습니다.

SELECT * FROM APPLY ;

==============
-- 나머지 3인에 대한 지원서 처리

SELECT *
FROM RECRUIT_POS;

INSERT INTO APPLY
( APPLY_NO
, RECRUIT_POS_NO
, PIN_NO
, CONTENT
, APPLY_DATE)
VALUES
( 'AP'||TO_CHAR(APPLYNOSEQ.NEXTVAL)
, 'RP7'
, (SELECT PIN_NO FROM USERS WHERE NICKNAME='퉁퉁이')
, '도라에몽 공고에 대한 퉁퉁이의 지원'
, TO_DATE('2023-08-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));
--==>>1 행 이(가) 삽입되었습니다.


SELECT * FROM RECRUIT_POS;
INSERT INTO APPLY
( APPLY_NO
, RECRUIT_POS_NO
, PIN_NO
, CONTENT
, APPLY_DATE)
VALUES
( 'AP'||TO_CHAR(APPLYNOSEQ.NEXTVAL)
, 'RP10'
, (SELECT PIN_NO FROM USERS WHERE NICKNAME='비실이')
, '노진구 공고에 대한 비실이의 지원'
, TO_DATE('2023-07-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));
--==>> 1 행 이(가) 삽입되었습니다.


INSERT INTO APPLY
( APPLY_NO
, RECRUIT_POS_NO
, PIN_NO
, CONTENT
, APPLY_DATE)
VALUES
( 'AP'||TO_CHAR(APPLYNOSEQ.NEXTVAL)
, 'RP11'
, (SELECT PIN_NO FROM USERS WHERE NICKNAME='이슬이')
, '노진구의 공고에 대한 이슬이의 지원'
, TO_DATE('2023-07-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));
--==>> 1 행 이(가) 삽입되었습니다.


--== 노진구 지원서에 있는 비실이와 이슬이를 1차 합격에 올림



INSERT INTO FIRST_CK
(FIRST_CK_NO
, APPLY_NO
, PASS_DATE)
VALUES
( 'FS'||TO_CHAR(FIRSTCKSEQ.NEXTVAL)
, (SELECT APPLY_NO FROM APPLY WHERE PIN_NO = (SELECT PIN_NO FROM USERS WHERE NICKNAME='비실이'))
, TO_DATE('2023-07-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));
--===>> 1 행 이(가) 삽입되었습니다.


INSERT INTO FIRST_CK
(FIRST_CK_NO
, APPLY_NO
, PASS_DATE)
VALUES
( 'FS'||FIRSTCKSEQ.NEXTVAL
, (SELECT APPLY_NO FROM APPLY WHERE PIN_NO = (SELECT PIN_NO FROM USERS WHERE NICKNAME='이슬이'))
,TO_DATE('2023-07-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));
--==>> 1 행 이(가) 삽입되었습니다.

SELECT * FROM FIRST_CK;

DESC FINAL;

--== 노진구 공고에 1차 합격한 노진구, 비실이, 이슬이의 최종 합류 선택하는 곳
INSERT INTO FINAL(FINAL_NO, FIRST_CK_NO, FINAL_CK_DATE)
VALUES('FN'||TO_CHAR(FINALNOSEQ.NEXTVAL), 'FS2', TO_DATE('2023-07-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO FINAL(FINAL_NO, FIRST_CK_NO,FINAL_CK_DATE)
VALUES('FN'||TO_CHAR(FINALNOSEQ.NEXTVAL),'FS3', TO_DATE('2023-07-30 12:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO FINAL(FINAL_NO, FIRST_CK_NO,FINAL_CK_DATE)
VALUES('FN'||TO_CHAR(FINALNOSEQ.NEXTVAL),'FS4', TO_DATE('2023-07-30 13:00:00', 'YYYY-MM-DD HH24:MI:SS'));
--===>> 1 행 이(가) 삽입되었습니다. *3


------------------------------------------------------------ ■ 진주연 샘플데이터 생성

INSERT INTO USER_PIN (PIN_NO, JOIN_DATE)
VALUES ('UP'||TO_CHAR(USERPINSEQ.NEXTVAL), TO_DATE('2023-06-30', 'YYYY-MM-DD'));
INSERT INTO USER_PIN (PIN_NO, JOIN_DATE)
VALUES ('UP'||TO_CHAR(USERPINSEQ.NEXTVAL), TO_DATE('2023-06-30', 'YYYY-MM-DD'));
INSERT INTO USER_PIN (PIN_NO, JOIN_DATE)
VALUES ('UP'||TO_CHAR(USERPINSEQ.NEXTVAL), TO_DATE('2023-06-30', 'YYYY-MM-DD'));
INSERT INTO USER_PIN (PIN_NO, JOIN_DATE)
VALUES ('UP'||TO_CHAR(USERPINSEQ.NEXTVAL), TO_DATE('2023-06-30', 'YYYY-MM-DD'));
INSERT INTO USER_PIN (PIN_NO, JOIN_DATE)
VALUES ('UP'||TO_CHAR(USERPINSEQ.NEXTVAL), TO_DATE('2023-06-30', 'YYYY-MM-DD'));

SELECT * FROM USER_PIN;
/*
UP11	2023-06-30 00:00:00
UP12	2023-06-30 00:00:00
UP13	2023-06-30 00:00:00
UP14	2023-06-30 00:00:00
UP15	2023-06-30 00:00:00
*/

-- 추가 2023.08.09
INSERT INTO USER_PIN (PIN_NO, JOIN_DATE)
VALUES ('UP'||TO_CHAR(USERPINSEQ.NEXTVAL), TO_DATE('2023-07-16', 'YYYY-MM-DD'));
INSERT INTO USER_PIN (PIN_NO, JOIN_DATE)
VALUES ('UP'||TO_CHAR(USERPINSEQ.NEXTVAL), TO_DATE('2023-07-16', 'YYYY-MM-DD'));
INSERT INTO USER_PIN (PIN_NO, JOIN_DATE)
VALUES ('UP'||TO_CHAR(USERPINSEQ.NEXTVAL), TO_DATE('2023-07-16', 'YYYY-MM-DD'));
INSERT INTO USER_PIN (PIN_NO, JOIN_DATE)
VALUES ('UP'||TO_CHAR(USERPINSEQ.NEXTVAL), TO_DATE('2023-07-16', 'YYYY-MM-DD'));
INSERT INTO USER_PIN (PIN_NO, JOIN_DATE)
VALUES ('UP'||TO_CHAR(USERPINSEQ.NEXTVAL), TO_DATE('2023-07-16', 'YYYY-MM-DD'));

SELECT * FROM USER_PIN ORDER BY JOIN_DATE;
/*
UP24	2023-07-16 00:00:00
UP25	2023-07-16 00:00:00
UP26	2023-07-16 00:00:00
UP27	2023-07-16 00:00:00
UP28	2023-07-16 00:00:00
*/

----------------------------------------------------------------------------------------------------------- ★ INSERT (회원가입)
INSERT INTO USERS (USER_NO, PIN_NO, ID, PW, NICKNAME, PHOTOURL)
VALUES ('US'||TO_CHAR(USERNOSEQ.NEXTVAL), 'UP11', 'test999@test.com','java002' ,'김철수', 'images/defaulfPhoto.jpg');
INSERT INTO USERS (USER_NO, PIN_NO, ID, PW, NICKNAME, PHOTOURL)
VALUES ('US'||TO_CHAR(USERNOSEQ.NEXTVAL), 'UP12', 'test998@test.com', 'java002' ,'김영수', 'images/defaulfPhoto.jpg');
INSERT INTO USERS (USER_NO, PIN_NO, ID, PW, NICKNAME, PHOTOURL)
VALUES ('US'||TO_CHAR(USERNOSEQ.NEXTVAL), 'UP13', 'test997@test.com', 'java002' ,'김민수', 'images/defaulfPhoto.jpg');
INSERT INTO USERS (USER_NO, PIN_NO, ID, PW, NICKNAME, PHOTOURL)
VALUES ('US'||TO_CHAR(USERNOSEQ.NEXTVAL), 'UP14', 'test996@test.com', 'java002' ,'김민지', 'images/defaulfPhoto.jpg');
INSERT INTO USERS (USER_NO, PIN_NO, ID, PW, NICKNAME, PHOTOURL)
VALUES ('US'||TO_CHAR(USERNOSEQ.NEXTVAL), 'UP15', 'test995@test.com', 'java002' ,'이은정', 'images/defaulfPhoto.jpg');

SELECT * FROM USERS;
/*
US11	UP11	test999@test.com	java002	김철수	images/defaulfPhoto.jpg
US12	UP12	test998@test.com	java002	김영수	images/defaulfPhoto.jpg
US13	UP13	test997@test.com	java002	김민수	images/defaulfPhoto.jpg
US14	UP14	test996@test.com	java002	김민지	images/defaulfPhoto.jpg
US15	UP15	test995@test.com	java002	이은정	images/defaulfPhoto.jpg
*/


-- 추가
INSERT INTO USERS (USER_NO, PIN_NO, ID, PW, NICKNAME, PHOTOURL)
VALUES ('US'||TO_CHAR(USERNOSEQ.NEXTVAL), 'UP24', 'test994@test.com','java002' ,'호랑이', 'images/defaulfPhoto.jpg');
INSERT INTO USERS (USER_NO, PIN_NO, ID, PW, NICKNAME, PHOTOURL)
VALUES ('US'||TO_CHAR(USERNOSEQ.NEXTVAL), 'UP25', 'test993@test.com', 'java002' ,'토끼', 'images/defaulfPhoto.jpg');
INSERT INTO USERS (USER_NO, PIN_NO, ID, PW, NICKNAME, PHOTOURL)
VALUES ('US'||TO_CHAR(USERNOSEQ.NEXTVAL), 'UP26', 'test992@test.com', 'java002' ,'사슴', 'images/defaulfPhoto.jpg');
INSERT INTO USERS (USER_NO, PIN_NO, ID, PW, NICKNAME, PHOTOURL)
VALUES ('US'||TO_CHAR(USERNOSEQ.NEXTVAL), 'UP27', 'test991@test.com', 'java002' ,'앵무새', 'images/defaulfPhoto.jpg');
INSERT INTO USERS (USER_NO, PIN_NO, ID, PW, NICKNAME, PHOTOURL)
VALUES ('US'||TO_CHAR(USERNOSEQ.NEXTVAL), 'UP28', 'test990@test.com', 'java002' ,'여우', 'images/defaulfPhoto.jpg');

SELECT * FROM USERS;
/*
US20	UP24	test994@test.com	java002	호랑이	images/defaulfPhoto.jpg
US21	UP25	test993@test.com	java002	토끼	images/defaulfPhoto.jpg
US22	UP26	test992@test.com	java002	사슴	images/defaulfPhoto.jpg
US23	UP27	test991@test.com	java002	앵무새	images/defaulfPhoto.jpg
US24	UP28	test990@test.com	java002	여우	images/defaulfPhoto.jpg
*/

----------------------------------------------------------------------------------------------------------- ★ INSERT (프로필작성)
INSERT INTO PROFILE (PROFILE_NO, PIN_NO, POS_NO, SUB_REGION_NO,PROFILE_DATE)
VALUES ('PF'||TO_CHAR(PROFILENOSEQ.NEXTVAL), 'UP11', 1, 76,TO_DATE('2023-07-01', 'YYYY-MM-DD'));
INSERT INTO PROFILE (PROFILE_NO, PIN_NO, POS_NO, SUB_REGION_NO,PROFILE_DATE)
VALUES ('PF'||TO_CHAR(PROFILENOSEQ.NEXTVAL), 'UP12', 2, 15, TO_DATE('2023-07-01', 'YYYY-MM-DD'));
INSERT INTO PROFILE (PROFILE_NO, PIN_NO, POS_NO, SUB_REGION_NO,PROFILE_DATE)
VALUES ('PF'||TO_CHAR(PROFILENOSEQ.NEXTVAL), 'UP13', 5, 2, TO_DATE('2023-07-01', 'YYYY-MM-DD'));
INSERT INTO PROFILE (PROFILE_NO, PIN_NO, POS_NO, SUB_REGION_NO,PROFILE_DATE)
VALUES ('PF'||TO_CHAR(PROFILENOSEQ.NEXTVAL), 'UP14', 1, 3,TO_DATE('2023-07-01', 'YYYY-MM-DD'));
INSERT INTO PROFILE (PROFILE_NO, PIN_NO, POS_NO, SUB_REGION_NO,PROFILE_DATE)
VALUES ('PF'||TO_CHAR(PROFILENOSEQ.NEXTVAL), 'UP15', 6, 991,TO_DATE('2023-07-01', 'YYYY-MM-DD'));

SELECT * FROM PROFILE;
/*
PF11	UP11 1	76	2023-07-01 00:00:00
PF12	    UP12	 2	15	2023-07-01 00:00:00
PF13	UP13	 5	2	2023-07-01 00:00:00
PF14	UP14	 1	3	2023-07-01 00:00:00
PF15	UP15	 6	991	2023-07-01 00:00:00
*/

-- 추가
INSERT INTO PROFILE (PROFILE_NO, PIN_NO, POS_NO, SUB_REGION_NO,PROFILE_DATE)
VALUES ('PF'||TO_CHAR(PROFILENOSEQ.NEXTVAL), 'UP24', 1, 76, TO_DATE('2023-07-22 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO PROFILE (PROFILE_NO, PIN_NO, POS_NO, SUB_REGION_NO,PROFILE_DATE)
VALUES ('PF'||TO_CHAR(PROFILENOSEQ.NEXTVAL), 'UP25', 2, 15, TO_DATE('2023-07-22 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO PROFILE (PROFILE_NO, PIN_NO, POS_NO, SUB_REGION_NO,PROFILE_DATE)
VALUES ('PF'||TO_CHAR(PROFILENOSEQ.NEXTVAL), 'UP26', 5, 12, TO_DATE('2023-07-22 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO PROFILE (PROFILE_NO, PIN_NO, POS_NO, SUB_REGION_NO,PROFILE_DATE)
VALUES ('PF'||TO_CHAR(PROFILENOSEQ.NEXTVAL), 'UP27', 1, 13, TO_DATE('2023-07-22 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO PROFILE (PROFILE_NO, PIN_NO, POS_NO, SUB_REGION_NO,PROFILE_DATE)
VALUES ('PF'||TO_CHAR(PROFILENOSEQ.NEXTVAL), 'UP28', 6, 991,TO_DATE('2023-07-22 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));

SELECT * FROM PROFILE;
/*
PF16	UP24	 1	76	2023-07-22 10:00:00
PF17	UP25	 2	15	2023-07-22 10:00:00
PF18	UP26	 5	12	2023-07-22 10:00:00
PF19	UP27	 1	13	2023-07-22 10:00:00
PF20    	UP28	 6	991	2023-07-22 10:00:00
*/


----------------------------------------------------------------------------------------------------------- ★ INSERT (프로필 유저 사용도구 추가)
INSERT INTO USER_TOOL (UTOOL_NO, PROFILE_NO, TOOL_NO)
VALUES ('UT'||TO_CHAR(UTOOLNOSEQ.NEXTVAL), 'PF11', 1);
INSERT INTO USER_TOOL (UTOOL_NO, PROFILE_NO, TOOL_NO)
VALUES ('UT'||TO_CHAR(UTOOLNOSEQ.NEXTVAL), 'PF11', 5);
INSERT INTO USER_TOOL (UTOOL_NO, PROFILE_NO, TOOL_NO)
VALUES ('UT'||TO_CHAR(UTOOLNOSEQ.NEXTVAL), 'PF12', 12);
INSERT INTO USER_TOOL (UTOOL_NO, PROFILE_NO, TOOL_NO)
VALUES ('UT'||TO_CHAR(UTOOLNOSEQ.NEXTVAL), 'PF12', 13);
INSERT INTO USER_TOOL (UTOOL_NO, PROFILE_NO, TOOL_NO)
VALUES ('UT'||TO_CHAR(UTOOLNOSEQ.NEXTVAL), 'PF13', 16);
INSERT INTO USER_TOOL (UTOOL_NO, PROFILE_NO, TOOL_NO)
VALUES ('UT'||TO_CHAR(UTOOLNOSEQ.NEXTVAL), 'PF13', 19);
INSERT INTO USER_TOOL (UTOOL_NO, PROFILE_NO, TOOL_NO)
VALUES ('UT'||TO_CHAR(UTOOLNOSEQ.NEXTVAL), 'PF14', 30);
INSERT INTO USER_TOOL (UTOOL_NO, PROFILE_NO, TOOL_NO)
VALUES ('UT'||TO_CHAR(UTOOLNOSEQ.NEXTVAL), 'PF14', 3);
INSERT INTO USER_TOOL (UTOOL_NO, PROFILE_NO, TOOL_NO)
VALUES ('UT'||TO_CHAR(UTOOLNOSEQ.NEXTVAL), 'PF15', 6);
INSERT INTO USER_TOOL (UTOOL_NO, PROFILE_NO, TOOL_NO)
VALUES ('UT'||TO_CHAR(UTOOLNOSEQ.NEXTVAL), 'PF15', 18);


INSERT INTO USER_TOOL (UTOOL_NO, PROFILE_NO, TOOL_NO)
VALUES ('UT'||TO_CHAR(UTOOLNOSEQ.NEXTVAL), 'PF16', 5);
INSERT INTO USER_TOOL (UTOOL_NO, PROFILE_NO, TOOL_NO)
VALUES ('UT'||TO_CHAR(UTOOLNOSEQ.NEXTVAL), 'PF16', 15);
INSERT INTO USER_TOOL (UTOOL_NO, PROFILE_NO, TOOL_NO)
VALUES ('UT'||TO_CHAR(UTOOLNOSEQ.NEXTVAL), 'PF17', 7);
INSERT INTO USER_TOOL (UTOOL_NO, PROFILE_NO, TOOL_NO)
VALUES ('UT'||TO_CHAR(UTOOLNOSEQ.NEXTVAL), 'PF17', 17);
INSERT INTO USER_TOOL (UTOOL_NO, PROFILE_NO, TOOL_NO)
VALUES ('UT'||TO_CHAR(UTOOLNOSEQ.NEXTVAL), 'PF18', 16);
INSERT INTO USER_TOOL (UTOOL_NO, PROFILE_NO, TOOL_NO)
VALUES ('UT'||TO_CHAR(UTOOLNOSEQ.NEXTVAL), 'PF18', 18);
INSERT INTO USER_TOOL (UTOOL_NO, PROFILE_NO, TOOL_NO)
VALUES ('UT'||TO_CHAR(UTOOLNOSEQ.NEXTVAL), 'PF19', 21);
INSERT INTO USER_TOOL (UTOOL_NO, PROFILE_NO, TOOL_NO)
VALUES ('UT'||TO_CHAR(UTOOLNOSEQ.NEXTVAL), 'PF19', 24);
INSERT INTO USER_TOOL (UTOOL_NO, PROFILE_NO, TOOL_NO)
VALUES ('UT'||TO_CHAR(UTOOLNOSEQ.NEXTVAL), 'PF20', 4);
INSERT INTO USER_TOOL (UTOOL_NO, PROFILE_NO, TOOL_NO)
VALUES ('UT'||TO_CHAR(UTOOLNOSEQ.NEXTVAL), 'PF20', 1);

SELECT * FROM USER_TOOL;
/*
UT16	PF11	1
UT17	PF11	5
UT18	PF12	    12
UT19	PF12    	13
UT20	PF13	16
UT21	PF13	19
UT22	PF14	30
UT23	PF14	3
UT24	PF15	6
UT25	PF15	18
UT26	PF16	5
UT27	PF16	15
UT28	PF17	7
UT29	PF17	17
UT30	PF18	16
UT31	PF18	18
UT32	PF19	21
UT33	PF19	24
UT34	PF20    	4
UT35	PF20    	1
*/

----------------------------------------------------------------------------------------------------------- ★ INSERT (모집공고A 철수)
INSERT INTO RECRUIT (RECRUIT_NO, PIN_NO, DO_TYPE_NO, TITLE, CONTENT, CREATED_DATE, PRJ_START, PRJ_END)
VALUES ('RC'||TO_CHAR(RECRUITNOSEQ.NEXTVAL), 'UP11', 0, '치킨 맛집 어플리케이션', '치킨맛집 어플리케이션 프로젝트를 같이 하실 팀원들을 모집합니다.'
     , TO_DATE('2023-07-28', 'YYYY-MM-DD'), TO_DATE('2023-08-20', 'YYYY-MM-DD'), TO_DATE('2024-01-15', 'YYYY-MM-DD'));
--==>> 1 행 이(가) 삽입되었습니다.

SELECT * FROM RECRUIT;
--==>> RC5	UP11	0	치킨 맛집 어플리케이션	치킨맛집 어플리케이션 프로젝트를 같이 하실 팀원들을 모집합니다.

SELECT * FROM RECRUIT_POS;

INSERT INTO RECRUIT_POS (RECRUIT_POS_NO, RECRUIT_NO, POS_NO)
VALUES ('RP'||TO_CHAR(RECRUITPOSSEQ.NEXTVAL), 'RC5', 1);
INSERT INTO RECRUIT_POS (RECRUIT_POS_NO, RECRUIT_NO, POS_NO)
VALUES ('RP'||TO_CHAR(RECRUITPOSSEQ.NEXTVAL), 'RC5', 2);
INSERT INTO RECRUIT_POS (RECRUIT_POS_NO, RECRUIT_NO, POS_NO)
VALUES ('RP'||TO_CHAR(RECRUITPOSSEQ.NEXTVAL), 'RC5', 3);
INSERT INTO RECRUIT_POS (RECRUIT_POS_NO, RECRUIT_NO, POS_NO)
VALUES ('RP'||TO_CHAR(RECRUITPOSSEQ.NEXTVAL), 'RC5', 4);
INSERT INTO RECRUIT_POS (RECRUIT_POS_NO, RECRUIT_NO, POS_NO)
VALUES ('RP'||TO_CHAR(RECRUITPOSSEQ.NEXTVAL), 'RC5', 5);
INSERT INTO RECRUIT_POS (RECRUIT_POS_NO, RECRUIT_NO, POS_NO)
VALUES ('RP'||TO_CHAR(RECRUITPOSSEQ.NEXTVAL), 'RC5', 6);
INSERT INTO RECRUIT_POS (RECRUIT_POS_NO, RECRUIT_NO, POS_NO)
VALUES ('RP'||TO_CHAR(RECRUITPOSSEQ.NEXTVAL), 'RC5', 6);
--==>> 1 행 이(가) 삽입되었습니다. * 7



INSERT INTO RECRUIT_TOOL (RECRUIT_TOOL_NO, RECRUIT_NO, TOOL_NO)
VALUES ('RT'||TO_CHAR(RTOOLNOSEQ.NEXTVAL), 'RC5', 1);
INSERT INTO RECRUIT_TOOL (RECRUIT_TOOL_NO, RECRUIT_NO, TOOL_NO)
VALUES ('RT'||TO_CHAR(RTOOLNOSEQ.NEXTVAL), 'RC5', 3);
INSERT INTO RECRUIT_TOOL (RECRUIT_TOOL_NO, RECRUIT_NO, TOOL_NO)
VALUES ('RT'||TO_CHAR(RTOOLNOSEQ.NEXTVAL), 'RC5', 10);
INSERT INTO RECRUIT_TOOL (RECRUIT_TOOL_NO, RECRUIT_NO, TOOL_NO)
VALUES ('RT'||TO_CHAR(RTOOLNOSEQ.NEXTVAL), 'RC5', 11);
INSERT INTO RECRUIT_TOOL (RECRUIT_TOOL_NO, RECRUIT_NO, TOOL_NO)
VALUES ('RT'||TO_CHAR(RTOOLNOSEQ.NEXTVAL), 'RC5', 30);
--==>>  1 행 이(가) 삽입되었습니다. * 5


-------------------------------------------------- 누락 툴 데이터 삽입 (RC 1234)
INSERT INTO RECRUIT_TOOL (RECRUIT_TOOL_NO, RECRUIT_NO, TOOL_NO)
VALUES ('RT'||TO_CHAR(RTOOLNOSEQ.NEXTVAL), 'RC1', 1);
INSERT INTO RECRUIT_TOOL (RECRUIT_TOOL_NO, RECRUIT_NO, TOOL_NO)
VALUES ('RT'||TO_CHAR(RTOOLNOSEQ.NEXTVAL), 'RC1', 5);
INSERT INTO RECRUIT_TOOL (RECRUIT_TOOL_NO, RECRUIT_NO, TOOL_NO)
VALUES ('RT'||TO_CHAR(RTOOLNOSEQ.NEXTVAL), 'RC1', 16);

INSERT INTO RECRUIT_TOOL (RECRUIT_TOOL_NO, RECRUIT_NO, TOOL_NO)
VALUES ('RT'||TO_CHAR(RTOOLNOSEQ.NEXTVAL), 'RC2', 13);
INSERT INTO RECRUIT_TOOL (RECRUIT_TOOL_NO, RECRUIT_NO, TOOL_NO)
VALUES ('RT'||TO_CHAR(RTOOLNOSEQ.NEXTVAL), 'RC2', 3);
INSERT INTO RECRUIT_TOOL (RECRUIT_TOOL_NO, RECRUIT_NO, TOOL_NO)
VALUES ('RT'||TO_CHAR(RTOOLNOSEQ.NEXTVAL), 'RC2', 19);

INSERT INTO RECRUIT_TOOL (RECRUIT_TOOL_NO, RECRUIT_NO, TOOL_NO)
VALUES ('RT'||TO_CHAR(RTOOLNOSEQ.NEXTVAL), 'RC3', 6);
INSERT INTO RECRUIT_TOOL (RECRUIT_TOOL_NO, RECRUIT_NO, TOOL_NO)
VALUES ('RT'||TO_CHAR(RTOOLNOSEQ.NEXTVAL), 'RC3', 8);
INSERT INTO RECRUIT_TOOL (RECRUIT_TOOL_NO, RECRUIT_NO, TOOL_NO)
VALUES ('RT'||TO_CHAR(RTOOLNOSEQ.NEXTVAL), 'RC3', 26);

INSERT INTO RECRUIT_TOOL (RECRUIT_TOOL_NO, RECRUIT_NO, TOOL_NO)
VALUES ('RT'||TO_CHAR(RTOOLNOSEQ.NEXTVAL), 'RC4', 11);
INSERT INTO RECRUIT_TOOL (RECRUIT_TOOL_NO, RECRUIT_NO, TOOL_NO)
VALUES ('RT'||TO_CHAR(RTOOLNOSEQ.NEXTVAL), 'RC4', 2);
INSERT INTO RECRUIT_TOOL (RECRUIT_TOOL_NO, RECRUIT_NO, TOOL_NO)
VALUES ('RT'||TO_CHAR(RTOOLNOSEQ.NEXTVAL), 'RC4', 9);

COMMIT;


SELECT *
FROM RECRUIT_POS;

----------------------------------------------------------------------------------------------------------- ★ INSERT (모집공고B 영수)
INSERT INTO RECRUIT (RECRUIT_NO, PIN_NO, DO_TYPE_NO, TITLE, CONTENT, CREATED_DATE, PRJ_START, PRJ_END)
VALUES ('RC'||TO_CHAR(RECRUITNOSEQ.NEXTVAL), 'UP12', 1, '영화 좌석 예매 웹 사이트', '영화관 좌석을 예매하는 시스템을 같이 만들어 보실 팀원들을 모집합니다.'
     , TO_DATE('2023-07-10', 'YYYY-MM-DD'), TO_DATE('2023-08-01', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'));
--==>> 1 행 이(가) 삽입되었습니다.

SELECT * FROM RECRUIT;


INSERT INTO RECRUIT_POS (RECRUIT_POS_NO, RECRUIT_NO, POS_NO)
VALUES ('RP'||TO_CHAR(RECRUITPOSSEQ.NEXTVAL), 'RC6', 1);
INSERT INTO RECRUIT_POS (RECRUIT_POS_NO, RECRUIT_NO, POS_NO)
VALUES ('RP'||TO_CHAR(RECRUITPOSSEQ.NEXTVAL), 'RC6', 2);
INSERT INTO RECRUIT_POS (RECRUIT_POS_NO, RECRUIT_NO, POS_NO)
VALUES ('RP'||TO_CHAR(RECRUITPOSSEQ.NEXTVAL),  'RC6', 5);
--==>> 1 행 이(가) 삽입되었습니다.

SELECT *  FROM RECRUIT_POS;
/*
RP19 	RC6	1
RP20 	RC6	2
RP21 	RC6	5
*/

INSERT INTO RECRUIT_TOOL (RECRUIT_TOOL_NO, RECRUIT_NO, TOOL_NO)
VALUES ('RT'||TO_CHAR(RTOOLNOSEQ.NEXTVAL), 'RC6', 1);
INSERT INTO RECRUIT_TOOL (RECRUIT_TOOL_NO, RECRUIT_NO, TOOL_NO)
VALUES ('RT'||TO_CHAR(RTOOLNOSEQ.NEXTVAL), 'RC6', 3);
INSERT INTO RECRUIT_TOOL (RECRUIT_TOOL_NO, RECRUIT_NO, TOOL_NO)
VALUES ('RT'||TO_CHAR(RTOOLNOSEQ.NEXTVAL), 'RC6', 10);
INSERT INTO RECRUIT_TOOL (RECRUIT_TOOL_NO, RECRUIT_NO, TOOL_NO)
VALUES ('RT'||TO_CHAR(RTOOLNOSEQ.NEXTVAL), 'RC6', 11);
INSERT INTO RECRUIT_TOOL (RECRUIT_TOOL_NO, RECRUIT_NO, TOOL_NO)
VALUES ('RT'||TO_CHAR(RTOOLNOSEQ.NEXTVAL), 'RC6', 30);
--==>> 1 행 이(가) 삽입되었습니다.


INSERT INTO RECRUIT_TOOL (RECRUIT_TOOL_NO, RECRUIT_NO, TOOL_NO)
VALUES ('RT'||TO_CHAR(RTOOLNOSEQ.NEXTVAL), 'RC1', 1);
INSERT INTO RECRUIT_TOOL (RECRUIT_TOOL_NO, RECRUIT_NO, TOOL_NO)
VALUES ('RT'||TO_CHAR(RTOOLNOSEQ.NEXTVAL), 'RC1', 5);
INSERT INTO RECRUIT_TOOL (RECRUIT_TOOL_NO, RECRUIT_NO, TOOL_NO)
VALUES ('RT'||TO_CHAR(RTOOLNOSEQ.NEXTVAL), 'RC1', 16);

INSERT INTO RECRUIT_TOOL (RECRUIT_TOOL_NO, RECRUIT_NO, TOOL_NO)
VALUES ('RT'||TO_CHAR(RTOOLNOSEQ.NEXTVAL), 'RC2', 13);
INSERT INTO RECRUIT_TOOL (RECRUIT_TOOL_NO, RECRUIT_NO, TOOL_NO)
VALUES ('RT'||TO_CHAR(RTOOLNOSEQ.NEXTVAL), 'RC2', 3);
INSERT INTO RECRUIT_TOOL (RECRUIT_TOOL_NO, RECRUIT_NO, TOOL_NO)
VALUES ('RT'||TO_CHAR(RTOOLNOSEQ.NEXTVAL), 'RC2', 19);

INSERT INTO RECRUIT_TOOL (RECRUIT_TOOL_NO, RECRUIT_NO, TOOL_NO)
VALUES ('RT'||TO_CHAR(RTOOLNOSEQ.NEXTVAL), 'RC3', 6);
INSERT INTO RECRUIT_TOOL (RECRUIT_TOOL_NO, RECRUIT_NO, TOOL_NO)
VALUES ('RT'||TO_CHAR(RTOOLNOSEQ.NEXTVAL), 'RC3', 8);
INSERT INTO RECRUIT_TOOL (RECRUIT_TOOL_NO, RECRUIT_NO, TOOL_NO)
VALUES ('RT'||TO_CHAR(RTOOLNOSEQ.NEXTVAL), 'RC3', 26);

INSERT INTO RECRUIT_TOOL (RECRUIT_TOOL_NO, RECRUIT_NO, TOOL_NO)
VALUES ('RT'||TO_CHAR(RTOOLNOSEQ.NEXTVAL), 'RC4', 11);
INSERT INTO RECRUIT_TOOL (RECRUIT_TOOL_NO, RECRUIT_NO, TOOL_NO)
VALUES ('RT'||TO_CHAR(RTOOLNOSEQ.NEXTVAL), 'RC4', 2);
INSERT INTO RECRUIT_TOOL (RECRUIT_TOOL_NO, RECRUIT_NO, TOOL_NO)
VALUES ('RT'||TO_CHAR(RTOOLNOSEQ.NEXTVAL), 'RC4', 9);

COMMIT;


----------------------------------------------------------------------------------------------------------- ★ INSERT (모집공고B 지원 민수)
INSERT INTO APPLY (APPLY_NO, RECRUIT_POS_NO, PIN_NO, CONTENT, APPLY_DATE)
VALUES ('AP'||TO_CHAR(APPLYNOSEQ.NEXTVAL), 'RP21', 'UP13', '최선을 다하겠습니다. :)', TO_DATE('2023-07-15', 'YYYY-MM-DD'));
--==>> 1 행 이(가) 삽입되었습니다.


----------------------------------------------------------------------------------------------------------- ★ INSERT (모집공고B 지원 민지)
INSERT INTO APPLY (APPLY_NO, RECRUIT_POS_NO, PIN_NO, CONTENT, APPLY_DATE)
VALUES ('AP'||TO_CHAR(APPLYNOSEQ.NEXTVAL), 'RP19', 'UP14', '열심히 하겠습니다 ^^', TO_DATE('2023-07-16', 'YYYY-MM-DD'));
--==>1 행 이(가) 삽입되었습니다.

INSERT INTO APPLY (APPLY_NO, RECRUIT_POS_NO, PIN_NO, CONTENT, APPLY_DATE)
VALUES ('AP'||TO_CHAR(APPLYNOSEQ.NEXTVAL), 'RP20', 'UP12', '팀장(김영수) 자동 지원', TO_DATE('2023-07-10', 'YYYY-MM-DD'));
--==>> 1 행 이(가) 삽입되었습니다.


----------------------------------------------------------------------------------------------------------- ★ INSERT (모집공고C 은정)
INSERT INTO RECRUIT (RECRUIT_NO, PIN_NO, DO_TYPE_NO, TITLE, CONTENT, CREATED_DATE, PRJ_START, PRJ_END)
VALUES ('RC'||TO_CHAR(RECRUITNOSEQ.NEXTVAL), 'UP15', 0
        , '자전거 동호회 어플리케이션 프로젝트'
        , '자전거 동호회 회원들이 산 고도에 대한 정보를 주고받고 날씨 정보 및 실시간 산 정보를 공유할 수 있는 어플리케이션을 제작하고자 합니다. 성실하고 시간적 여유가 많으신 분이시면 좋겠습니다. 많은 지원 부탁드립니다.'
        , TO_DATE('2023-08-08 10:00:00', 'YYYY-MM-DD HH24:MI:SS')
        , TO_DATE('2023-08-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
        , TO_DATE('2023-09-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO RECRUIT_POS (RECRUIT_POS_NO, RECRUIT_NO, POS_NO)
VALUES ('RP'||TO_CHAR(RECRUITPOSSEQ.NEXTVAL), 'RC9', 1);
INSERT INTO RECRUIT_POS (RECRUIT_POS_NO, RECRUIT_NO, POS_NO)
VALUES ('RP'||TO_CHAR(RECRUITPOSSEQ.NEXTVAL), 'RC9', 2);


INSERT INTO RECRUIT_TOOL (RECRUIT_TOOL_NO, RECRUIT_NO, TOOL_NO)
VALUES ('RT'||TO_CHAR(RTOOLNOSEQ.NEXTVAL), 'RC9', 1);
INSERT INTO RECRUIT_TOOL (RECRUIT_TOOL_NO, RECRUIT_NO, TOOL_NO)
VALUES ('RT'||TO_CHAR(RTOOLNOSEQ.NEXTVAL), 'RC9', 6);
INSERT INTO RECRUIT_TOOL (RECRUIT_TOOL_NO, RECRUIT_NO, TOOL_NO)
VALUES ('RT'||TO_CHAR(RTOOLNOSEQ.NEXTVAL), 'RC9', 19);

----------------------------------------------------------------------------------------------------------- ★ INSERT 합류 (모집공고C 지원 팀장(은정) / 여우)
-- 지원
INSERT INTO APPLY (APPLY_NO, RECRUIT_POS_NO, PIN_NO, CONTENT, APPLY_DATE)
VALUES ('AP'||TO_CHAR(APPLYNOSEQ.NEXTVAL), 'RP22', 'UP15', '팀장(김은정) 자동 지원', TO_DATE('2023-08-08 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO APPLY (APPLY_NO, RECRUIT_POS_NO, PIN_NO, CONTENT, APPLY_DATE)
VALUES ('AP'||TO_CHAR(APPLYNOSEQ.NEXTVAL), 'RP23', 'UP28', '최선을 다하겠습니다!! 제가 이래뵈도 체력도 좋고 성실합니다. 비전공자지만 열심히 구글링하고 공부하면서 배워나가겠습니다. *^^*', TO_DATE('2023-08-09 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));

-- 1차
INSERT INTO FIRST_CK (FIRST_CK_NO, APPLY_NO, PASS_DATE)
VALUES ('FS'||TO_CHAR(FIRSTCKSEQ.NEXTVAL), 'AP19', TO_DATE('2023-08-08 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO FIRST_CK (FIRST_CK_NO, APPLY_NO, PASS_DATE)
VALUES ('FS'||TO_CHAR(FIRSTCKSEQ.NEXTVAL), 'AP20', TO_DATE('2023-08-09 10:50:00', 'YYYY-MM-DD HH24:MI:SS'));


-- 최종 (기간도래 x)


------------------------------------------------------------ ★ INSERT (모집공고B 1차 합류)
INSERT INTO FIRST_CK (FIRST_CK_NO, APPLY_NO, PASS_DATE)
VALUES ('FS'||TO_CHAR(FIRSTCKSEQ.NEXTVAL), 'AP15', TO_DATE('2023-07-10', 'YYYY-MM-DD'));
INSERT INTO FIRST_CK (FIRST_CK_NO, APPLY_NO, PASS_DATE)
VALUES ('FS'||TO_CHAR(FIRSTCKSEQ.NEXTVAL), 'AP13', TO_DATE('2023-07-18', 'YYYY-MM-DD'));
INSERT INTO FIRST_CK (FIRST_CK_NO, APPLY_NO, PASS_DATE)
VALUES ('FS'||TO_CHAR(FIRSTCKSEQ.NEXTVAL), 'AP14', TO_DATE('2023-07-18', 'YYYY-MM-DD'));
--==>> 1 행 이(가) 삽입되었습니다. *3

SELECT * FROM FIRST_CK;
--==>>
/*
FS5	AP15	2023-07-10 00:00:00
FS6	AP13	2023-07-18 00:00:00
FS7	AP14	2023-07-18 00:00:00
*/
----------------------------------------------------------------------------------------------------------- ★ INSERT (모집공고B 최종합류)
INSERT INTO FINAL (FINAL_NO, FIRST_CK_NO, FINAL_CK_DATE)
VALUES ('FN'||TO_CHAR(FINALNOSEQ.NEXTVAL), 'FS5', TO_DATE('2023-07-24 12:34:56', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO FINAL (FINAL_NO, FIRST_CK_NO, FINAL_CK_DATE)
VALUES ('FN'||TO_CHAR(FINALNOSEQ.NEXTVAL), 'FS6', TO_DATE('2023-07-24 12:50:56', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO FINAL (FINAL_NO, FIRST_CK_NO, FINAL_CK_DATE)
VALUES ('FN'||TO_CHAR(FINALNOSEQ.NEXTVAL), 'FS7', TO_DATE('2023-07-24 14:34:56', 'YYYY-MM-DD HH24:MI:SS'));
--==>> 1 행 이(가) 삽입되었습니다. *3

----------------------------------------------------------------------------------------------------------- ★ INSERT (모집공고B 프로젝트 시작)
INSERT INTO PROJECT (PRJ_NO, RECRUIT_NO, PRJ_DATE)
VALUES ('PJ'||TO_CHAR(PROJECTNOSEQ.NEXTVAL), 'RC6', TO_DATE('2023-07-24 14:34:56', 'YYYY-MM-DD HH24:MI:SS'));
--==>> 1 행 이(가) 삽입되었습니다.


SELECT *
FROM PROJECT;

DESC PROJECT;
/*
이름         널?       유형           
---------- -------- ------------ 
PRJ_NO     NOT NULL VARCHAR2(16) 
RECRUIT_NO NOT NULL VARCHAR2(16) 
PRJ_DATE            DATE
*/


COMMIT;
--==>> 커밋 완료.

--========================================================================
--=============================수인===========================================
-- ※ 관리자 관련 INSERT 구문

-- 회원 식별번호 생성

SELECT * FROM USER_PIN;
-- ⓞ

INSERT INTO USER_PIN(PIN_NO, JOIN_DATE) VALUES('UP'||TO_CHAR(USERPINSEQ.NEXTVAL),SYSDATE);
--==>> 1 행 이(가) 삽입되었습니다.
--==>> UP16	2023-08-06
INSERT INTO USER_PIN(PIN_NO, JOIN_DATE) VALUES('UP'||TO_CHAR(USERPINSEQ.NEXTVAL),SYSDATE);
--==>> 1 행 이(가) 삽입되었습니다.
--==>> UP17

-- 관리자 시퀀스 생성
CREATE SEQUENCE ADMINNOSEQ
NOCACHE;
--==>> Sequence ADMINNOSEQ이(가) 생성되었습니다.

-- 관리자 INSERT 구문 ⓞ 번 실행 후에 번호 INSERT 구문 실행하기
-- ①
INSERT INTO ADMIN(ADMIN_NO, ADMIN_ID, ADMIN_PW, REG_DATE, PIN_NO) 
VALUES ('AD'||TO_CHAR(ADMINNOSEQ.NEXTVAL), 'admin001@gmail.com'
, 'admin001', SYSDATE, 'UP16');
--==>> 1 행 이(가) 삽입되었습니다.

--②
INSERT INTO ADMIN(ADMIN_NO, ADMIN_ID, ADMIN_PW, REG_DATE, PIN_NO) 
VALUES ('AD'||TO_CHAR(ADMINNOSEQ.NEXTVAL), 'admin002@gmail.com'
, 'admin002', SYSDATE, 'UP17');
--==>> 1 행 이(가) 삽입되었습니다.

SELECT * FROM ADMIN;
--==>>
/*
AD1	admin001@gmail.com	admin001	2023-08-06	UP16
AD2	admin002@gmail.com	admin002	2023-08-06	UP17
*/

COMMIT;
--==>> 커밋 완료.




- 아이디 중복검사를 뷰 생성


CREATE OR REPLACE VIEW IDCHECK
AS
SELECT ID
FROM USERS 
UNION ALL 
SELECT ADMIN_ID AS ID
FROM ADMIN;

--==>> View IDCHECK이(가) 생성되었습니다.
