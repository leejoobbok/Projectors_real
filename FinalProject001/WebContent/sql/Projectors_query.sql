SELECT USER
FROM DUAL;
--==>> PROJECTORS


--○ 시퀀스 생성 및 INSERT 동작 쿼리문

/*
-- 회원 가입 시 식별 번호 발생
-- 회원 식별 번호 시퀀스 생성
CREATE SEQUENCE PINNOSEQ
NOCACHE;

-- 회원식별번호 테이블에 시퀀스 삽입
INSERT INTO USER_PIN VALUES(PINNOSEQ.NEXTVAL ,SYSDATE);

-- 회원 가입

--회원 번호 시퀀스 생성
CREATE SEQUENCE USERNOSEQ
NOCACHE;

--회원 정보 테이블(USERS)에 데이터 삽입
INSERT INTO USERS
( USER_NO
, PIN_NO
, ID
, PW
, NICKNAME
, PHOTOURL)
VALUES
( USERNOSEQ.NEXTVAL
, (SELECT MAX(PIN_NO) FROM USER_PIN)
, ?
, ?
, ?
, ?);


-- 회원 가입 후 프로필 생성

-- 프로필 번호로 사용할 시퀀스 생성
CREATE SEQUENCE PROFILESEQ
NOCACHE;

-- 프로필(PROFILE) 테이블에 데이터 삽입
INSERT INTO PROFILE
( PROFILE_NO
, PIN_NO
, POS_NO
, SUB_REGION_NO
, PROFILE_DATE)
VALUES
( PROFILESEQ.NEXTVAL
, ?
, ?
, (SELECT ? FROM SUB_REGION WHERE REGION_NO=?)
, SYSDATE);


---- 유저 사용도구 번호로 사용할 시퀀스 생성
CREATE SEQUENCE UTOOLSEQ
NOCACHE;

-- 유저 사용도구 테이블(프로필 번호를 참조하는) 사용 도구에 따라서 하나의 PROFILE_NO에 
INSERT INTO USER_TOOL
( UTOOL_NO, PROFILE_NO, TOOL_NO)
VALUES
( UTOOLSEQ.NEXTVAL
, (SELECT PROFILE_NO FROM PROFILE WHERE PIN_NO=?)
, TOOL_NO);

-- 모집 포지션 지원을 위한 시퀀스 생성
CREATE SEQUENCE APPLYSEQ
NOCACHE;

-- 특정 공고의 특정 포시션에 대한 지원을 수행할 때
INSERT INTO APPLY
( APPLY_NO
, RECRUIT_POS_NO
, PIN_NO
, CONTENT
, ALLY_DATE)
VALUES
( APPLYSEQ.NEXTVAL
, (SELECT RECRUIT_POS_NO
   FROM RECRUIT_POS
   WHERE (SELECT RECRUIT_NO 
          FROM RECRUIT
          WHERE PIN_NO=?))
, ?
, ??
, SYSDATE);


-- 모집자가 특정 지원서(지원자)에 대해 수락을 클릭할 때 수행될 INSERT 쿼리문
-- 지원 후 모집자가 행하는 1차 수락시 수락 클릭 시 FIRST_CK 테이블에  그 사람의 APPLY_NO가 INSERT 된다.
INSERT FIRST_CK
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


*/


--○ 보여줄 (정보를 출력하는데 사용될 쿼리문)
/*
-- 나의 프로필 클릭 시 보게 될 쿼리문
-- ① 평가 제외한 프로필 파트
SELECT * 
FROM PROFILE


-- ② +평가


*/







