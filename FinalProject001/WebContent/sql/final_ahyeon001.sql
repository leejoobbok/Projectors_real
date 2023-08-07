SELECT USER FROM DUAL;
--==>PROJECTORS
--------------------------------------------------------------------------------
--▣ 2023.08.03.오후 8:55 아현 : 테이블 인서트 구문 작성 


DESC RATE_SELECT;
--==>>
/*
이름      널?       유형           
------- -------- ------------ 
RATE_NO NOT NULL NUMBER(1)    
CONTENT NOT NULL VARCHAR2(30) 
*/

--○ 평가 선택지 테이블 데이터 입력 ( RATE_SELECT )
INSERT INTO RATE_SELECT VALUES(1,'열심히 참여함');
INSERT INTO RATE_SELECT VALUES(2,'협업능력이 뛰어남');
INSERT INTO RATE_SELECT VALUES(3,'업무 능력이 뛰어남');
INSERT INTO RATE_SELECT VALUES(4,'참여율이 저조함');
INSERT INTO RATE_SELECT VALUES(5,'협업능력이 부족함');
INSERT INTO RATE_SELECT VALUES(6,'업무 능력이 부족함');

--(실제 수행 없이 작성만 하고 준복이한테 전송 완료) 
--------------------------------------------------------------------------------

--▣ 2023.08.04.오후 2:48 아현
-- : 메인 공지 게시판, 메인공지글 작성 페이지 관련 쿼리문 작성

--○ 관리자 공지 게시판 테이블 확인 
DESC ADMIN_NOTICE; 
--==>>
/*
이름              널?       유형             
--------------- -------- -------------- 
ADMIN_NOTICE_NO NOT NULL VARCHAR2(8)    
TITLE           NOT NULL VARCHAR2(100)  
CONTENT         NOT NULL VARCHAR2(1000) 
PIN_NO          NOT NULL VARCHAR2(16)  
*/
--------------------------------------------------------------------------------
--● 공지글 목록 조회 쿼리문 준비 (MainNoticeLists.jsp)
--( 글번호, 제목) + (작성자, 작성일..도 있음 좋겠지만 일단은 빼고 썼습니다) 
SELECT ADMIN_NOTICE_NO, TITLE 
FROM ADMIN_NOTICE;

--------------------------------------------------------------------------------
--◈ 관리자 공지 등록 관련 쿼리문 준비 (MainNoticeInsert.jsp)

--●1) 시퀀스 생성 (글 번호 앞에 붙일 문자열은 아직 미정) 
CREATE SEQUENCE ADMIN_NOTICE_NO_SEQ
NOCACHE;

--●2)인서트 수행 ( 글번호, 제목, 내용, 핀번호) // 문자열 결합
INSERT INTO ADMIN_NOTICE(ADMIN_NOTICE_NO,TITLE,CONTENT,PIN_NO)
VALUES('AAA'||TO_CHAR(ADMIN_NOTICE_SEQ.NEXTVAL),'안녕하세요 프로젝터스입니다','안녕하세요! 사이트가 정식 오픈했습니다!','ABCD1234');

--------------------------------------------------------------------------------

--▣ 2023.08.06.오후 2:00 아현
-- 데이터 인서트 쿼리문 작성

-- : 회원 5명(프로필까지), 모집공고 2개(1모집중|1모집완료)
--  지원서 5개 (공고1의 모집자 지원서 1개, 공고 2의 모집자 지원서 1개 
--               + 지원자 3개(2개는: 모집 완료된 공고2 // 1개는 모집 중인 공고 1)) 
-- 프로젝트 1개(3인 프로젝트) 


ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD HH24:MI:SS';

--=============================
CREATE SEQUENCE USERPINSEQ
NOCACHE;

CREATE SEQUENCE USERNOSEQ
NOCACHE;
/*
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
*/
-- 유저 핀번호 생성
INSERT INTO USER_PIN(PIN_NO, JOIN_DATE) VALUES(UP||TO_CHAR(USERPINSEQ.NEXTVAL),SYSDATE);

-- 유저 번호 시퀀스 생성
CREATE SEQUENCE USERNOSEQ
NOCACHE;



--● 회원 테이블(USERS) 인서트 (유저번호, 유저핀번호, 아이디, 비번, 닉네임, 프사) 
INSERT INTO USERS(USER_NO, PIN_NO, ID, PW, NICKNAME, PHOTOURL)
VALUES('US'||TO_CHAR(USERNOSEQ.NEXTVAL)        --유저번호
,(SELECT MAX(PIN_NO) FROM USER_PIN)          -- 유저 핀번호
, 'doolahyeon@gmail.com'                     -- 아이디(이메일)
, CRYPTPACK.ENCRYPT('user0001','user0001')    -- 비밀번호(암호화)
, '두라현'                                  -- 닉네임
, 'images/defaultPhoto.jpg');                -- 프로필사진 url

INSERT INTO USERS(USER_NO, PIN_NO, ID, PW, NICKNAME, PHOTOURL)
VALUES(US||TO_CHAR(USERNOSEQ.NEXTVAL)        --유저번호
,(SELECT MAX(PIN_NO) FROM USER_PIN)          -- 유저 핀번호
, 'sedahyeon@gmail.com'                     -- 아이디(이메일)
, CRYPTPACK.ENCRYPT('user0002','user0002')    -- 비밀번호(암호화)
, '세다현'                                  -- 닉네임
, 'images/defaultPhoto.jpg');                -- 프로필사진 url

INSERT INTO USERS(USER_NO, PIN_NO, ID, PW, NICKNAME, PHOTOURL)
VALUES(US||TO_CHAR(USERNOSEQ.NEXTVAL)        --유저번호
,(SELECT MAX(PIN_NO) FROM USER_PIN)          -- 유저 핀번호
, 'nedahyeon@gmail.com'                     -- 아이디(이메일)
, CRYPTPACK.ENCRYPT('user0003','user0003')    -- 비밀번호(암호화)
, '네다현'                                  -- 닉네임
, 'images/defaultPhoto.jpg');                -- 프로필사진 url


INSERT INTO USERS(USER_NO, PIN_NO, ID, PW, NICKNAME, PHOTOURL)
VALUES(US||TO_CHAR(USERNOSEQ.NEXTVAL)        --유저번호
,(SELECT MAX(PIN_NO) FROM USER_PIN)          -- 유저 핀번호
, 'ohahyeon@gmail.com'                     -- 아이디(이메일)
, CRYPTPACK.ENCRYPT('user0004','user0004')    -- 비밀번호(암호화)
, '오아현'                                  -- 닉네임
, 'images/defaultPhoto.jpg');                -- 프로필사진 url

INSERT INTO USERS(USER_NO, PIN_NO, ID, PW, NICKNAME, PHOTOURL)
VALUES(US||TO_CHAR(USERNOSEQ.NEXTVAL)        --유저번호
,(SELECT MAX(PIN_NO) FROM USER_PIN)          -- 유저 핀번호
, 'ugahyeon@gmail.com'                     -- 아이디(이메일)
, CRYPTPACK.ENCRYPT('user0005','user0005')    -- 비밀번호(암호화)
, '유가현'                                  -- 닉네임
, 'images/defaultPhoto.jpg');                -- 프로필사진 url

--------------------------------------------------------------------------------
--● 프로필 인서트문

-- 프로필 번호 생성에 쓸 시퀀스 생성
CREATE SEQUENCE PROFILESEQ
NOCACHE;

-- 프로필(PROFILE) 인서트 (프로필번호, 유저핀번호, 포지션번호,세부지역번호,등록일)
INSERT INTO PROFILE
(PROFILE_NO, PIN_NO, POS_NO, SUB_REGION_NO, PROFILE_DATE)
VALUES (PROFILESEQ.NEXTVAL
,(SELECT PIN_NO FROM USERS)
, 1                                                     
, 991               -- 서울전체  
, SYSDATE);

INSERT INTO PROFILE
(PROFILE_NO, PIN_NO, POS_NO, SUB_REGION_NO, PROFILE_DATE)
VALUES (PROFILESEQ.NEXTVAL
,(SELECT PIN_NO FROM USERS)
, 2                                                       
, 1                 -- 경기도 고양시
, SYSDATE);

INSERT INTO PROFILE
(PROFILE_NO, PIN_NO, POS_NO, SUB_REGION_NO, PROFILE_DATE)
VALUES (PROFILESEQ.NEXTVAL
,(SELECT PIN_NO FROM USERS)
, 2                                                       
, 28                 -- 강원도 강릉시
, SYSDATE);

INSERT INTO PROFILE
(PROFILE_NO, PIN_NO, POS_NO, SUB_REGION_NO, PROFILE_DATE)
VALUES (PROFILESEQ.NEXTVAL
,(SELECT PIN_NO FROM USERS)
, 2                                                       
, 35                 -- 경상남도 거제시
, SYSDATE);

INSERT INTO PROFILE
(PROFILE_NO, PIN_NO, POS_NO, SUB_REGION_NO, PROFILE_DATE)
VALUES (PROFILESEQ.NEXTVAL
,(SELECT PIN_NO FROM USERS)
, 2                                                       
, 45                 -- 경상북도 구미시
, SYSDATE);
--------------------------------------------------------------------------------
--공고 번호 시퀀스
CREATE SEQUENCE RECRUITSEQ
NOCACHE;

--● 모집공고 인서트문
--(공고번호, 모집자의 핀번호, 진행방식번호, 제목, 내용, 등록일, 프로젝트 시작일, 프로젝트 종료일)

--● 1) 공고 1 ( 모집중) 8/6 공고 등록 , 19일 마감일 
INSERT INTO RECRUIT (RECRUIT_NO, PIN_NO, DO_TYPE_NO, TITLE, CONTENT, CREATED_DATE, PRJ_START, PRJ_END) 
VALUES('RC'||TO_CHAR(RECRUITSEQ.NEXTVAL)
        ,'모집자의 핀넘버'
        , 1                                         
        , '반려동물 집사를 위한 커뮤니티'               
        , '반려동물 집사들이 서로 정보를 공유하고 소통할 수 있는 커뮤니티를 기획하고 있습니다..' 
        , SYSDATE                                    
        , TO_DATE('2023-08-25', 'YYYY-MM-DD')
        , TO_DATE('2023-10-25', 'YYYY-MM-DD'));

--● 2) 공고 2 ( 모집완료) 7/23 공고 등록 , 8/5일 모집 마감, 6일 합류체크 모두 완료 
INSERT INTO RECRUIT (RECRUIT_NO, PIN_NO, DO_TYPE_NO, TITLE, CONTENT, CREATED_DATE, PRJ_START, PRJ_END) 
VALUES('RC'||TO_CHAR(RECRUITSEQ.NEXTVAL)
        ,'모집자의 핀넘버'
        , 0                                         
        , '프로젝트 기획부터 함께하실 분들을 구합니다.'               
        , '프로젝트 경험이 없거나 적은 분들도 괜찮습니다. 저 포함 총 3명으로..' 
        , SYSDATE                                    
        , TO_DATE('2023-08-10', 'YYYY-MM-DD')
        , TO_DATE('2023-10-10', 'YYYY-MM-DD'));


--------------------------------------------------------------------------------
--● 지원서 1 (공고1(모집중) 의 모집자 지원서(자동처리))
-- (지원 번호, 공고에서 모집중인 포지션번호, 지원자의 핀번호, 내용, 지원일, 처리일시(수락/거절) 

INSERT INTO APPLY (APPLY_NO, RECRUIT_POS_NO, PIN_NO, CONTENT, APPLY_DATE, CK_DATE) 
VALUES('AP'||TO_CHAR(APPLYSEQ.NEXTVAL)
        , 'RP0001' -- 예시 (공고에서 모집중인 포지션 번호)(사용자가 선택한 값)
        , '지원자의핀번호' -- 지원자 핀 번호(=모집자)
        ,'없음' -- 내용
        , TO_DATE('2023-08-06', 'YYYY-MM-DD')     -- 지원일 (공고 등록일시와 같음) 원래는 SYSDATE로 
        , TO_DATE('2023-08-06', 'YYYY-MM-DD'));     -- 처리일 (공고 등록일시와 같음) 원래는 SYSDATE로 

--● 지원서 2 (공고1(모집중) 의 지원자의 지원서
-- (지원 번호, 공고에서 모집중인 포지션번호, 지원자의 핀번호, 내용, 지원일, 처리일시(수락/거절) 

INSERT INTO APPLY (APPLY_NO, RECRUIT_POS_NO, PIN_NO, CONTENT, APPLY_DATE, CK_DATE) 
VALUES('AP'||TO_CHAR(APPLYSEQ.NEXTVAL)
        , 'RP0002' -- 예시 (공고에서 모집중인 포지션 번호)(사용자가 선택한 값)
        , '지원자의핀번호' -- 지원자 핀 번호
        ,'안녕하세요. 강아지 두 마리를 키우고 있는 집사입니다! 반려인으로서 주제에 관심이..' -- 내용
        , TO_DATE('2023-08-06', 'YYYY-MM-DD')     -- 지원일 (공고 등록일시와 같음) 원래는 SYSDATE로 
        , TO_DATE('2023-08-06', 'YYYY-MM-DD'));     -- 처리일 (공고 등록일시와 같음) 원래는 SYSDATE로 

--● 지원서 3 (공고2(모집 완료) 의 모집자 지원서(자동처리)
-- (지원 번호, 공고에서 모집중인 포지션번호, 지원자의 핀번호, 내용, 지원일, 처리일시(수락/거절) 

INSERT INTO APPLY (APPLY_NO, RECRUIT_POS_NO, PIN_NO, CONTENT, APPLY_DATE, CK_DATE) 
VALUES('AP'||TO_CHAR(APPLYSEQ.NEXTVAL)
        , 'RP0003' -- 예시 (공고에서 모집중인 포지션 번호)(사용자가 선택한 값)
        , '지원자의핀번호' -- (= 모집자 핀번호)
        ,'없음' -- 내용
        , TO_DATE('2023-07-23', 'YYYY-MM-DD')     -- 지원일 (공고 등록일시와 같음) 원래는 SYSDATE로 
        , TO_DATE('2023-07-23', 'YYYY-MM-DD'));    -- 처리일 (공고 등록일시와 같음) 원래는 SYSDATE로 


--● 지원서 4 (공고2(모집 완료) 의 모집자1 지원서(합격, 합류 완료)
-- (지원 번호, 공고에서 모집중인 포지션번호, 지원자의 핀번호, 내용, 지원일, 처리일시(수락/거절) 

INSERT INTO APPLY (APPLY_NO, RECRUIT_POS_NO, PIN_NO, CONTENT, APPLY_DATE, CK_DATE) 
VALUES('AP'||TO_CHAR(APPLYSEQ.NEXTVAL)
        , 'RP0004' -- 예시 (공고에서 모집중인 포지션 번호)(사용자가 선택한 값)
        , '지원자의핀번호' -- (= 모집자 핀번호)
        ,'프로젝트 경험은 없지만 프론트엔드에 관심이 많아 이론적인 부분은 전반적으로 숙지하고 있습니다. 또한 클론 코딩으로..' -- 내용
        , TO_DATE('2023-07-24', 'YYYY-MM-DD')     -- 지원일  원래는 SYSDATE로 
        , TO_DATE('2023-07-24', 'YYYY-MM-DD'));    -- 처리일 원래는 SYSDATE로 


--● 지원서 5 (공고2(모집 완료) 의 모집자2 지원서(합격, 합류 완료)
-- (지원 번호, 공고에서 모집중인 포지션번호, 지원자의 핀번호, 내용, 지원일, 처리일시(수락/거절) 

INSERT INTO APPLY (APPLY_NO, RECRUIT_POS_NO, PIN_NO, CONTENT, APPLY_DATE, CK_DATE) 
VALUES('AP'||TO_CHAR(APPLYSEQ.NEXTVAL)
        , 'RP0005' -- 예시 (공고에서 모집중인 포지션 번호)(사용자가 선택한 값)
        , '지원자의핀번호' -- (= 모집자 핀번호)
        ,'프로젝트 경험이 1회 있고 기본적인 기능 위주로 구성된 게시판이었습니다. 능숙하지는 않지만..' -- 내용
        , TO_DATE('2023-07-25', 'YYYY-MM-DD')     -- 지원일  원래는 SYSDATE로 
        , TO_DATE('2023-07-25', 'YYYY-MM-DD'));    -- 처리일 원래는 SYSDATE로 

--------------------------------------------------------------------------------

--● 프로젝트 (공고 2를 통해 생성, 인원 3명 )
--(프로젝트 번호, 공고번호, 프로젝트 생성일)

INSERT INTO PROJECT (PRJ_NO, RECRUIT_NO, PRJ_DATE)
VALUES('PJ'||TO_CHAR(PROJECTSEQ.NEXTVAL)
    , '공고2의 공고번호'
    , TO_DATE('2023-08-06', 'YYYY-MM-DD')); -- 합류 체크 완료일 (원래는 SYSDATE)
    
    
--------------------------------------------------------------------------------
--==>> 여기까지 전달, 반영완료.

