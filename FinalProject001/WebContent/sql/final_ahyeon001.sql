SELECT USER FROM DUAL;
--==>PROJECTORS
--------------------------------------------------------------------------------
--2023.08.03.오후 8:55 아현 : 테이블 인서트 구문 작성 
--(실제 수행 없이 작성만 하고 준복이한테 전송) 

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


