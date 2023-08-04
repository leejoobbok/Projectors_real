SELECT USER
FROM DUAL;
--==>> PROJECTORS

-- 회원 가입 시 식별 번호 발생
/*
-- 회원 식별 번호 시퀀스 생성
CREATE SEQUENCE PINNOSEQ
NOCACHE;

-- 회원식별번호 테이블에 시퀀스 삽입
INSERT INTO USER_PIN VALUES(PINNOSEQ.NEXTVAL ,SYSDATE);
*/

-- 회원 가입
/*
--회원 번호 시퀀스 생성
CREATE SEQUENCE USERNOSEQ
NOCACHE;

--회원 정보 테이블(USERS)에 데이터 삽입
INSERT USERS
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

*/

-- 회원 가입 후 프로필 생성
/*
-- 프로필 번호로 사용할 시퀀스 생성
CREATE SEQUENCE PROFILESEQ
NOCACHE;

-- 프로필에 들어갈 유저 도구 번호 생성



-- 프로필(PROFILE) 테이블에 데이터 삽입
INSERT PROFILE
( PROFILE_NO
, PIN_NO
, POS_NO
, SUB_REGION_NO
, UTOOL_NO
, PROFILE_DATE)
VALUES
( PROFILESEQ.NEXTVAL
, (SELECT PIN_NO FROM USERS WHERE USER_NO=?)
, ?
, ?
, ?★
, SYSDATE);




*/


