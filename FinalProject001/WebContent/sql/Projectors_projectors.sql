SELECT USER
FROM DUAL;
--==>> PROJECTORS

-- 최종합류번호 이후에만 만들어지면 됨
-- [37] SPACE_NOTICE (팀 공지게시판)
-- 공지게시판번호, 프로젝트번호, 제목, 내용, 작성일
-- PRJ_NO (FK,NN)
-- CREATED_DATE (NN) DEFAULT SYSDATE
CREATE TABLE SPACE_NOTICE
( SPACE_NOTICE_NO
, PRJ_NO
, TITLE             최종합류번호
, CONTENT           VARCHAR2(★)
, CREATED_DATE      DATE    DEFAULT SYSDATE
, CONSTRAINT SPACE_NOTICE_NO_PK PRIMARY KEY(SPACE_NOTICE_NO)
);

-- 최종합류번호 이후에만 만들어지면 됨
-- [38] WORKSPACE (작업공간)
-- 작업공간번호, 최종합류번호, 제목, 내용, 작성일
-- FINAL_NO(FK,NN)
-- CREATED_DATE (NN) DEFAULT SYSDATE
CREATE TABLE WORKSPACE
( WORKSPACE_NO
, FINAL_NO
, TITLE             VARCHAR2(★)
, CONTENT           VARCHAR2(★)
, CREATED_DATE      DATE    DEFAULT SYSDATE
, CONSTRAINT WORKSPACE_NO_PK PRIMARY KEY(WORKSPACE_NO)
);

-- 최종합류번호, 작업공간 생성 이후 만들어지면 됨
-- [39] WORKSPACE_COMM (작업공간 댓글)
-- 작업공간댓글번호, 작업공간번호, 최종합류번호, 내용, 작성일
-- WORKSPACE_NO (FK, NN)
-- FINAL_NO (FK, NN)
-- CREATED_DATE (NN) DEFAULT SYSDATE
CREATE TABLE WORKSPACE_COMM
( WORKSPACE_COMM_NO
, WORKSPACE_NO
, FINAL_NO
, CONTENT           VARCHAR2(★)
, CREATED_DATE      DATE    DEFAULT SYSDATE
, CONSTRAINT WORKSPACE_COMM_NO_PK PRIMARY KEY(WORKSPACE_COMM_NO)
);

-- 최종합류테이블 이후에만 만들어지면 됨
-- [40] MEETING (회의록)
-- 회의록 번호, 최종합류번호, 제목, 내용, 첨부파일경로, 게시판작성일, 회의일자
-- FINAL_NO (FK,NN)
-- FILE..????
-- CREATED_DATE (NN)    DEFAULT SYSDATE
-- MEETING_DATE (NN)    DEFAULT SYSDATE ※
CREATE TABLE MEETING
( MEETING_NO
, FINAL_NO
, TITLE             VARCHAR2(★)
, CONTENT           VARCHAR2(★)
, FILE
, CREATED_DATE      DATE    DEFAULT SYSDATE
, MEETING_DATE      DATE
, CONSTRAINT MEETING_NO_PK PRIMARY KEY(MEETING_NO)
);

-- 최종합류테이블 이후에만 생성하면 됨
-- [41] FEED (담벼락)
-- 피드번호, 최종합류번호, 내용, 작성일
-- FINAL_NO (FK,NN)
-- CREATED_DATE     DEFAULT SYSDATE
CREATE TABLE FEED
( FEED_NO
, FINAL_NO
, CONTENT           VARCHAR2(★)
, CREATED_DATE      DATE    DEFAULT SYSDATE
, CONSTRAINT FEED_NO_PK PRIMARY KEY(FEED_NO)
);


-- 평가 테이블들은 거의 마지막에 만들어져야 함

-- [42] PROJECT_RATE (프로젝트 완료평가)
-- 프로젝트 완료평가번호, 평가자, 피평가자, 평가선택지번호, 평가일
-- 평가자, 피평가자 (FINAL_NO) (FK, NN)
-- RATE_NO (FK, NN)
-- RATE_DATE    DEFAULT SYSDATE
CREATE TABLE PROJECT_RATE
( DONE_RATE_NO
, GIVER
, RECEIVER
, RATE_NO
, RATE_DATE         DATE    DEFAULT SYSDATE
, CONSTRAINT PROJECT_RATE_PK PRIMARY KEY(PROJECT_RATE)
);


-- [43] PROJECT_STOP_RATE 프로젝트 중단평가
-- 프로젝트 중단평가번호, 프로젝트 중단번호, 평가자, 피평가자, 평가선택지번호, 평가일
-- 평가자, 피평가자 (FINAL_NO) (FK, NN)
-- PRJ_STOP_NO (FK, NN)
-- RATE_NO (FK, NN)
-- RATE_DATE    DEFAULT SYSDATE
CREATE TABLE PROJECT_STOP_RATE
( STOP_RATE_NO
, PRJ_STOP_NO
, RECEIVER
, GIVER
, RATE_NO
, RATE_DATE     DATE    DEFAULT SYSDATE
, CONSTRAINT STOP_RATE_NO_PK PRIMARY KEY(STOP_RATE_NO)
);


-- [44] MEM_OUT_RATE 개인이탈평가
-- 개인이탈 평가번호, 프로젝트 이탈번호, 평가자, 평가선택지번호, 평가일
-- MEM_OUT_NO (FK,NN)
-- GIVER (FK, NN)  (FINAL_NO)
-- RATE_DATE    DEFAULT SYSDATE
CREATE TABLE MEM_OUT_RATE
( OUT_RATE_NO
, MEM_OUT_NO
, GIVER
, RATE_NO
, RATE_DATE     DATE    DEFAULT SYSDATE
, CONSTRAINT OUT_RATE_NO_PK PRIMARY KEY(OUT_RATE_NO)
);


-- 평가들 보다 먼저 만들어져야함
-- [45] RATE_SELECT 평가 선택지
-- 평가선택지번호, 평가내용
CREATE TABLE RATE_SELECT
( RATE_NO
, CONTENT       VARCHAR2(★)
, CONSTRAINT RATE_NO_PK PRIMARY KEY(RATE_NO)
);


-- 식별번호 뒤에만 만들어지면 됨
-- [46] NOTE 쪽지
-- 쪽지번호, 보낸사람, 받은사람, 보낸날짜, 읽은날짜, 제목, 내용, 보낸사람삭제일, 받는사람삭제일
-- 보낸사람, 받은사람 (FK, NN) (PIN_NO)
-- 보낸날짜 DEFAULT SYSDATE
CREATE TABLE NOTE
( NOTE_NO
, SENDER
, READER
, SEND_DATE     DATE    DEFAULT SYSDATE
, READ_DATE     DATE
, TITLE         VARCHAR2(★)
, CONTENT       VARCHAR2(★)
, SEND_DEL      DATE
, READ_DEL      DATE
, CONSTRAINT NOTE_NO_PK PRIMARY KEY(NOTE_NO)
);


-- 프로젝트 공고보다 먼저 만들어져야하는 테이블
-- [47] DO_TYPE 대면여부
-- 진행방식번호, 진행방식명
-- DO_TYPE_NAME (NN)
CREATE TABLE DO_TYPE
( DO_TYPE_NO
, DO_TYPE_NAME  VARCHAR2(★)     NOT NULL
, CONSTRAINT DO_TYPE_NO_PK PRIMARY KEY(DO_TYPE_NO)
);


-- 지원서, 사유번호 뒤에 만들어져야하는 테이블
-- [48] REPORT_APPLY 지원서 신고
-- 지원서 신고번호, 모집포지션지원번호, 회원식별번호, 작성일, 사유번호
-- APPLY_NO (FK, NN)
-- PIN_NO (FK, NN)
-- CREATED_DATE     DEFAULT SYSDATE
-- REP_REASON_NO    (FK,NN)
CREATE TABLE REPORT_APPLY
( REP_APPLY_NO
, APPLY_NO
, PIN_NO
, CREATED_DATE      DATE    DEFAULT SYSDATE
, REP_REASON_NO
, CONSTRAINT REP_APPLY_NO_PK PRIMARY KEY(REP_APPLY_NO)
);

-- 지원서 신고, 처리결과 이후 만들어져야하는 테이블
-- [49] APPLY_PRESULT 지원서 신고처리 (게시물)
-- 지원서 신고처리번호, 지원서 신고번호, 처리결과 번호
-- REP_APPLY_NO (FK, NN)
-- REP_RESULT_NO (FK, NN)
CREATE TABLE APPLY_PRESULT
( PRESULT_NO
, REP_APPLY_NO
, REP_RESULT_NO
, CONSTRAINT PRESULT_NO_PK PRIMARY KEY(PRESULT_NO)
);


-- 제재, 제재기간, 지원서 신고처리 이후
-- [50] APPLY_URESULT 지원서 신고처리 (유저)
-- 지원서 피신고자처리번호, 지원서 신고처리번호, 제재번호 , 제재기간번호, 제재일자
-- PRESULT_NO (FK, NN)
-- REGU_NO (FK, NN)
-- REGU_PERIOD_NO (FK, NN)
-- REGU_DATE        DEFAULT SYSDATE
CREATE TABLE APPLT_URESULT
( URESULT_NO
, PRESULT_NO
, REGU_NO
, REGU_PERIOD_NO
, REGU_DATE         DATE    DEFAULT SYSDATE
, CONSTRAINT URESULT_NO_PK PRIMARY KEY(URESULT_NO)
);


-- 관리자, 지원서, 지원신고처리 이후
-- [51] DEP_REP_APPLY 지원서 삭제
-- 지원서 삭제번호, 지원서 신고처리번호, 관리자번호, 삭제일
-- PRESULT_NO (FK, NN)
-- ADMIN_NO (FK, NN)
-- DEL_DATE     DEFAULT SYSDATE
CREATE TABLE DEL_REP_APPLY
( DEL_APPY_NO
, PRESULT_NO
, ADMIN_NO
, DEL_DATE      DATE    DEFAULT SYSDATE
, CONSTRAINT ADEL_APPY_NO_PK PRIMARY KEY(DEL_APPY_NO)
);

-- 지원서 이후
-- [52] DEL_APPLY 자진 비활성화 지원서
-- APPLY_NO (FK, NN)
-- DEL_DATE     DEFAULT SYSDATE
CREATE TABLE DEL_APPLY
( DEL_APPLY_NO
, APPLY_NO
, DEL_DATE      DATE    DEFAULT SYSDATE
, CONSTRAINT DEL_APPLY_NO_PK PRIMARY KEY(DEL_APPLY_NO)
);


-- 회원식별번호, 공고, 사유번호 이후
-- [53] REP_RECRUIT 모집공고신고
-- 공고신고번호, 공고번호, 회원식별번호, 작성일, 사유번호
-- RECRUIT_NO   (FK, NN)
-- PIN_NO (FK, NN)
-- CREATED_DATE     DEFAULT SYSDATE
-- REP_REASON_NO    (FK, NN)
CREATE TABLE REP_RECRUIT
( REP_RECRUIT_NO
, RECRUIT_NO
, PIN_NO
, CREATED_DATE
, REP_REASON_NO
, CONSTRAINT REP_RECRUIT_NO_PK PRIMARY KEY(REP_RECRUIT_NO)
);


-- 공고신고, 처리결과번호 이후
-- [54] RECRUIT_PRESULT  공고신고처리(게시물)
-- 공고신고처리번호, 공고신고번호, 처리결과번호
-- REP_RECRUIT_NO (FK, NN)
-- REP_RESULT_NO (FK, NN)
CREATE TABLE RECRUIT_PRESULT
( PRESULT_NO
, REP_RECRUIT_NO
, REP_RESULT_NO
, CONSTRAINT RECRUIT_PRESULT_NO_PK PRIMARY KEY(PRESULT_NO)
);

-- 재제, 제재기간, 공고신고처리 이후
-- [55] RECRUIT_URESULT 공고신고처리(피신고자)
-- 공고피신고자처리번호, 공고신고처리번호, 제재내용번호, 제재기간번호, 제재일
-- PRESULT_NO (FK, NN)
-- REGU_NO (FK, NN)
-- REGU_PERIOD_NO (FK, NN)
-- REDU_DATE        DEDAULT SYSDATE
CREATE TABLE RECRUIT_URESULT
( URESULT_NO
, PRESULT_NO
, REGU_NO
, REGU_PERIOD_NO
, REGU_DATE         DATE    DEFAULT SYSDATE
, CONSTRAINT RECRUIT_URESULT_NO_PK PRIMARY KEY(URESULT_NO)
);


-- 관리자, 공고, 공고신고처리 이후
-- [56] DEL_REP_RECRUIT 공고글 삭제
-- 공고글 삭제번호, 공고신고처리번호, 관리자번호, 삭제일
-- PRESULT_NO (FK,NN)
-- ADMIN_NO (FK, NN)
-- DEL_DATE     DEFAULT SYSDATE
CREATE TABLE DEL_REP_RECRUIT
( DEL_RECRUIT_NO
, PRESULT_NO
, ADMIN_NO
, DEL_DATE          DATE    DEFAULT SYSDATE
, CONSTRAINT ADEL_RECRUIT_NO_PK PRIMARY KEY(DEL_RECRUIT_NO)
);


-- 공고 이후
-- [57] DEL_RECRUIT 자진비활성화공고
-- 공고비활성화번호, 공고번호, 삭제일
-- RECRUIT_NO   (FK, NN)
-- DEL_DATE     DEFAULT SYSDATE
CREATE TABLE DEL_RECRUIT
( DEL_RECRUIT_NO
, RECRUIT_NO
, DEL_DATE          DATE    DEFAULT SYSDATE
, CONSTRAINT DEL_RECRUIT_NO_PK PRIMARY KEY(DEL_RECRUIT_NO)
);


-- 회원식별번호, 쪽지, 사유번호 이후
-- [58] REPORT_NOTE 쪽지신고
-- 쪽지신고번호, 쪽지번호, 회원식별번호, 사유번호, 작성일
-- NOTE_NO  (FK, NN)
-- PIN_NO (FK, NN)
-- CREATED_DATE         DEFAULT SYSDATE
-- REP_REASON_NO    (FK, NN)
CREATE TABLE REPORT_NOTE
( REP_NOTE_NO
, NOTE_NO
, PIN_NO
, REP_REASON_NO
, CREATED_DATE      DATE    DEFAULT SYSDATE
, CONSTRAINT REP_NOTE_NO_PK PRIMARY KEY(REP_NOTE_NO)
);


-- 쪽지신고, 처리결과 이후
-- [59] NOTE_PRESULT 쪽지신고처리(게시물)
-- 쪽지신고처리번호, 쪽지신고번호, 처리결과번호
-- REP_NOTE_NO (FK, NN)
-- REP_RESULT_NO (FK, NN)
CREATE TABLE NOTE_PRESULT
( PRESULT_NO
, REP_NOTE_NO
, REP_RESULT_NO
, CONSTRAINT NOTE_PRESULT_NO_PK PRIMARY KEY(PRESULT_NO)
);


-- 제재, 재제기간, 쪽지신고처리 이후
-- [60] NOTE_URESULT 쪽지신고처리(피신고자)
-- 쪽지피신고자처리번호, 쪽지 신고처리번호, 제재내용번호, 제재기간번호, 제재일
-- PRESULT_NO   (FK, NN)
-- REGU_NO  (FK, NN)
-- RENU_PERIOD_NO (FK, NN)
-- REGU_DATE        DEFAULT SYSDATE
CREATE TABLE NOTE_URESULT
( URESULT_NO
, PRESULT_NO
, REGU_NO
, REGU_PERIOD_NO
, REGU_DATE         DATE    DEFAULT SYSDATE
, CONSTRAINT NOTE_URESULT_NO_PK PRIMARY KEY(URESULT_NO)
);


-- 관리자, 쪽지, 쪽지신고처리이후
-- [61] DEL_REP_NOTE 쪽지삭제
-- 쪽지삭제번호, 쪽지신고처리번호, 관리자번호, 삭제일
-- PRESULT_NO (FK, NN)
-- ADMIN_NO (FK,NN)
-- DEL_DATE     DEFAULT SYSDATE
CREATE TABLE DEL_REP_NOTE
( DEL_NOTE_NO
, PRESULT_NO
, ADMIN_NO
, DEL_DATE      DATE    DEFAULT SYSDATE
, CONSTRAINT ADEL_NOTE_NO_PK PRIMARY KEY(DEL_NOTE_NO)
);


-- 쪽지 이후
-- [62] DEL_NOTE 자진비활성화쪽지
-- 쪽지비활성화번호, 쪽지번호, 삭제일
-- NOTE_NO (FK, NN)
-- DEL_DATE     DEFAULT SYSDATE
CREATE TABLE DEL_NOTE
( DEL_NOTE_NO
, NOTE_NO
, DEL_DATE      DATE    DEFAULT SYSDATE
, CONSTRAINT DEL_NOTE_NO_PK PRIMARY KEY(DEL_NOTE_NO)
);


-- 최종합류번호, 프로젝트 이후
-- [63] REPORT_PRJ 프로젝트 신고
-- 프로젝트신고번호, 프로젝트번호, 최종합류번호, 프로젝트 신고사유번호, 작성일
-- PRJ_NO (FK, NN)
-- FINAL_NO (FK, NN)
-- REP_REASON_NO (FK, NN)
-- CREATED_DATE     DEFAULT SYSDATE
CREATE TABLE REPORT_PRJ
( REP_PRJ_NO
, PRJ_NO
, FINAL_NO
, REP_REASON_NO
, CREATED_DATE
, CONSTRAINT REP_PRJ_NO_PK PRIMARY KEY(REP_PRJ_NO)
);


-- 관리자, 처리결과, 프로젝트 신고 이후
-- [64] PRJ_PRESULT 프로젝트 신고처리
-- 프로젝트 신고처리번호, 프로젝트 신고접수번호, 처리결과번호, 관리자번호, 처리일시
-- REP_PRJ_NO (FK, NN)
-- REP_RESULT_NO (FK, NN)
-- ADMIN_NO (FK, NN)
-- DATE     DEFAULT SYSDATE
CREATE TABLE PRJ_RESULT
( PRESULT_NO
, REP_PRJ_NO
, REP_RESULT_NO
, ADMIN_NO
, DATE          DATE    DEFAULT SYSDATE
, CONSTRAINT PRJ_PRESULT_NO_PK PRIMARY KEY(PRESULT_NO)
);


-- 프로젝트신고처리 이후
-- [65] DEL_REP_PRJ 정지된 프로젝트
-- 정지된 프로젝트번호, 프로젝트 신고처리번호 
-- PRESULT_NO (FK, NN)
CREATE TABLE DEL_REP_PRJ
( DEL_PRJ_NO
, PRESULT_NO
, CONSTRAINT ADEL_PRJ_NO_PK PRIMARY KEY(DEL_PRJ_NO)
);

-- 프로젝트 신고 이전에 언제든 만들어도 상관없음
-- [66] REP_PRJ_RREASON 프로젝트 신고사유
-- 프로젝트신고사유현황, 프로젝트 신고사유내용
-- REP_REASON (NN)
CREATE TABLE REP_PRJ_REASON
( REP_REASON_NO
, REP_REASON        NOT NULL
, CONSTRAINT REP_REASON_NO_PK PRIMARY KEY(REP_REASON_NO)
);









