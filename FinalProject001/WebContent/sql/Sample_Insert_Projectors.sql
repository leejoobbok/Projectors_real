SELECT USER
FROM DUAL;
--==>> PROJECTORS

------------------------------------------------------------ ?  ??±? ????¤ ??¸
SELECT SEQUENCE_NAME, LAST_NUMBER
FROM USER_SEQUENCES;
/*  2023.08.09 10? 30ë¶? ê¸°ì?
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
------------------------------------------------------------ ?  ????¤ ??±
--? ? ?? ??ë²í¸(??ë²í¸)
CREATE SEQUENCE USERPINSEQ
NOCACHE;

--? ??ë²í¸
CREATE SEQUENCE USERNOSEQ
NOCACHE;

--? ??´? ??ë²í¸
CREATE SEQUENCE WDUSERNOSEQ;
NOCACHE;

--? ?ë¡íë²í¸
CREATE SEQUENCE PROFILENOSEQ
NOCACHE;

--? ? ?? ?¬?©ê¸°ì  ë²í¸ (?ë¡í ?½?)
CREATE SEQUENCE UTOOLNOSEQ
NOCACHE;

--? ëª¨ì§ê³µê³ ë²í¸
CREATE SEQUENCE RECRUITNOSEQ
NOCACHE;

--? ëª¨ì§ê³µê³  ?¬ì§?? ë²í¸
CREATE SEQUENCE RECRUITPOSSEQ
NOCACHE;

--? ëª¨ì§ê³µê³  ?¬?©?êµ? ë²í¸
CREATE SEQUENCE RTOOLNOSEQ
NOCACHE;

--? ?­? ? ëª¨ì§ê³µê³  ë²í¸
CREATE SEQUENCE RECRUITDELSEQ
NOCACHE;

--?  ì§??? ë²í¸
CREATE SEQUENCE APPLYNOSEQ
NOCACHE;

--? 1ì°? ?©ë¥ì ë²í¸
CREATE SEQUENCE FIRSTCKSEQ
NOCACHE;

--? ìµì¢ ?©ë¥ì ë²í¸
CREATE SEQUENCE FINALNOSEQ
NOCACHE;

--? ?ë¡ì ?¸ ë²í¸(???¤??´?¤)
CREATE SEQUENCE PROJECTNOSEQ
NOCACHE;

--? ê´?ë¦¬ìë²í¸
CREATE SEQUENCE ADMINNOSEQ
NOCACHE;

--? ê·¸ë§? ê´?ë¦¬ì ë²í¸
CREATE SEQUENCE QUITADMINNOSEQ
NOCACHE;

--? ê´?ë¦¬ì ê³µì?ê¸? ë²í¸
CREATE SEQUENCE ADMINNOTICENOSEQ
NOCACHE;

--? ë¡ê·¸?¸ ë¡ê·¸ ë²í¸
CREATE SEQUENCE LOGINRECSEQ
NOCACHE;

--? ë¡ê·¸?? ë¡ê·¸ ë²í¸
CREATE SEQUENCE LOGOUTRECSEQ
NOCACHE;

--? 
CREATE SEQUENCE REPRECNOSEQ
NOCACHE;

--? 
CREATE SEQUENCE RECRUITRESULTNOSEQ
NOCACHE;

--? 
CREATE SEQUENCE FAQNOSEQ
NOCACHE;

--? 
CREATE SEQUENCE QUESTIONNOSEQ
NOCACHE;





CREATE SEQUENCE MEMOUTNOSEQ
NOCACHE;

CREATE SEQUENCE PRJSTOPNOSEQ
NOCACHE;
--==>>Sequence PRJRATENOSEQÀÌ(°¡) »ý¼ºµÇ¾ú½À´Ï´Ù.


-- MO //


CREATE SEQUENCE MEMOUTRATENOSEQ
NOCACHE;
--==>>Sequence MEMOUTRATENOSEQÀÌ(°¡) »ý¼ºµÇ¾ú½À´Ï´Ù.

CREATE SEQUENCE PRJSTOPRATENOSEQ
NOCACHE;
--==>>Sequence PRJSTOPRATENOSEQÀÌ(°¡) »ý¼ºµÇ¾ú½À´Ï´Ù.


CREATE SEQUENCE PRJRATENOSEQ
NOCACHE;

-- MOR // PSR // PJR



COMMIT;

--==================================================================

/*
ê´?ë¦¬ì             ? AD||SEQ
???ë³ë²?¸       ? UP||SEQ
? ??               ? US||SEQ
?ë¡í             ? PF||SEQ
? ?? ?¬?© ?êµ?      ? UT||SEQ
ê³µì?               ? NT||SEQ
ê³µê³                ? RC||SEQ
ì§???             ? AP||SEQ
?ë¡ì ?¸           ? PJ||SEQ
ëª¨ì§ ?¬ì§?? ë²í¸    ? RP||SEQ
1ì°? ?©ë¥? ë²í¸       ? FS||SEQ
ìµì¢ ?©ë¥? ë²í¸      ? FN||SEQ
*/
------------------------------------------------------------ ?  ê¸°ë³¸ ?ê²? ?¤? 
ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD HH24:MI:SS';


------------------------------------------------------------ ?  ë²í¸ ??± ê·ì¹
/*
ê´?ë¦¬ì             ? AD||SEQ
???ë³ë²?¸       ? UP||SEQ
? ??               ? US||SEQ
?ë¡í             ? PF||SEQ
? ?? ?¬?© ?êµ?      ? UT||SEQ
ê³µì?               ? NT||SEQ
ê³µê³                ? RC||SEQ
ì§???             ? AP||SEQ
?ë¡ì ?¸           ? PJ||SEQ
ëª¨ì§ ?¬ì§?? ë²í¸    ? RP||SEQ
1ì°? ?©ë¥? ë²í¸       ? FS||SEQ
ìµì¢ ?©ë¥? ë²í¸      ? FN||SEQ
*/


------------------------------------------------------------ ?  ??? ???°?´?° ??±
-- ? ?? ??ë²í¸ ??±
INSERT INTO USER_PIN(PIN_NO, JOIN_DATE) VALUES('UP'||TO_CHAR(USERPINSEQ.NEXTVAL),SYSDATE);
-- ? ?? ë²í¸ ????¤ ??±
CREATE SEQUENCE USERNOSEQ
NOCACHE;



--? ?? ??´ë¸?(USERS) ?¸??¸ (? ??ë²í¸, ? ????ë²í¸, ??´?, ë¹ë², ??¤?, ??¬) 

INSERT INTO USER_PIN(PIN_NO, JOIN_DATE) VALUES('UP'||TO_CHAR(USERPINSEQ.NEXTVAL),SYSDATE);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.
SELECT * FROM USER_PIN;
--==>>UP1	2023-08-06 17:57:18

INSERT INTO USERS(USER_NO, PIN_NO, ID, PW, NICKNAME, PHOTOURL)
VALUES
('US'||TO_CHAR(USERNOSEQ.NEXTVAL)        --? ??ë²í¸
,(SELECT PIN_NO FROM USER_PIN WHERE PIN_NO='UP1')          -- ? ?? ??ë²í¸
, 'doolahyeon@gmail.com'  -- ??´?(?´ë©ì¼)
, 'user0001' -- ë¹ë?ë²í¸(??¸?)
, '??¼?'                                  -- ??¤?
, 'images/defaultPhoto.jpg');                -- ?ë¡í?¬ì§? url

--==>> 1 ? ?´(ê°?) ?½????µ??¤.

INSERT INTO USER_PIN(PIN_NO, JOIN_DATE) VALUES('UP'||TO_CHAR(USERPINSEQ.NEXTVAL),SYSDATE);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.
SELECT * FROM USER_PIN;
--==>>UP1	2023-08-06 17:57:18

INSERT INTO USERS(USER_NO, PIN_NO, ID, PW, NICKNAME, PHOTOURL)
VALUES
('US'||TO_CHAR(USERNOSEQ.NEXTVAL)       --? ??ë²í¸
,(SELECT PIN_NO FROM USER_PIN WHERE PIN_NO='UP2')           -- ? ?? ??ë²í¸
, 'sedahyeon@gmail.com'                     -- ??´?(?´ë©ì¼)
, 'user0002'    -- ë¹ë?ë²í¸(??¸?)
, '?¸?¤?'                                  -- ??¤?
, 'images/defaultPhoto.jpg');                -- ?ë¡í?¬ì§? url
--==>> 1 ? ?´(ê°?) ?½????µ??¤.

INSERT INTO USER_PIN(PIN_NO, JOIN_DATE) VALUES('UP'||TO_CHAR(USERPINSEQ.NEXTVAL),SYSDATE);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.
SELECT * FROM USER_PIN;
--==>>UP3	2023-08-06 17:57:18


INSERT INTO USERS(USER_NO, PIN_NO, ID, PW, NICKNAME, PHOTOURL)
VALUES
('US'||TO_CHAR(USERNOSEQ.NEXTVAL)          --? ??ë²í¸
,(SELECT PIN_NO FROM USER_PIN WHERE PIN_NO='UP3')          -- ? ?? ??ë²í¸
, 'nedahyeon@gmail.com'                     -- ??´?(?´ë©ì¼)
, 'user0003'    -- ë¹ë?ë²í¸(??¸?)
, '?¤?¤?'                                  -- ??¤?
, 'images/defaultPhoto.jpg');                -- ?ë¡í?¬ì§? url


SELECT *
FROM USERS;
/*
US1	UP1	doolahyeon@gmail.com	user0001	??¼?	images/defaultPhoto.jpg
US2	UP2	sedahyeon@gmail.com	user0002	?¸?¤?	images/defaultPhoto.jpg
US3	UP3	nedahyeon@gmail.com	user0003	?¤?¤?	images/defaultPhoto.jpg
*/

INSERT INTO USER_PIN(PIN_NO, JOIN_DATE) VALUES('UP'||TO_CHAR(USERPINSEQ.NEXTVAL),SYSDATE);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.
SELECT * FROM USER_PIN;
--==>UP4	2023-08-06 18:29:33

INSERT INTO USERS(USER_NO, PIN_NO, ID, PW, NICKNAME, PHOTOURL)
VALUES
('US'||TO_CHAR(USERNOSEQ.NEXTVAL)          --? ??ë²í¸
,(SELECT PIN_NO FROM USER_PIN WHERE PIN_NO='UP4')         -- ? ?? ??ë²í¸
, 'ohahyeon@gmail.com'                     -- ??´?(?´ë©ì¼)
,'user0004'    -- ë¹ë?ë²í¸(??¸?)
, '?¤??'                                  -- ??¤?
, 'images/defaultPhoto.jpg');                -- ?ë¡í?¬ì§? url
--==>> 1 ? ?´(ê°?) ?½????µ??¤.

SELECT *
FROM USERS;
/*
US1	UP1	doolahyeon@gmail.com	user0001	??¼?	images/defaultPhoto.jpg
US2	UP2	sedahyeon@gmail.com	user0002	?¸?¤?	images/defaultPhoto.jpg
US3	UP3	nedahyeon@gmail.com	user0003	?¤?¤?	images/defaultPhoto.jpg
US4	UP4	ohahyeon@gmail.com	user0004	?¤??	images/defaultPhoto.jpg
*/

INSERT INTO USER_PIN(PIN_NO, JOIN_DATE) VALUES('UP'||TO_CHAR(USERPINSEQ.NEXTVAL),SYSDATE);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.
SELECT * FROM USER_PIN;
--==>UP5	2023-08-06 18:32:44


INSERT INTO USERS(USER_NO, PIN_NO, ID, PW, NICKNAME, PHOTOURL)
VALUES
('US'||TO_CHAR(USERNOSEQ.NEXTVAL)          --? ??ë²í¸
,(SELECT PIN_NO FROM USER_PIN WHERE PIN_NO='UP5')           -- ? ?? ??ë²í¸
, 'ugahyeon@gmail.com'                     -- ??´?(?´ë©ì¼)
, 'user0005'    -- ë¹ë?ë²í¸(??¸?)
, '? ê°??'                                  -- ??¤?
, 'images/defaultPhoto.jpg');                -- ?ë¡í?¬ì§? url


SELECT *
FROM USERS;
/*
US1	UP1	doolahyeon@gmail.com	user0001	??¼?	images/defaultPhoto.jpg
US2	UP2	sedahyeon@gmail.com	user0002	?¸?¤?	images/defaultPhoto.jpg
US3	UP3	nedahyeon@gmail.com	user0003	?¤?¤?	images/defaultPhoto.jpg
US4	UP4	ohahyeon@gmail.com	user0004	?¤??	images/defaultPhoto.jpg
US5	UP5	ugahyeon@gmail.com	user0005	? ê°??	images/defaultPhoto.jpg
*/
--==============================================================================
--------------------------------------------------------------------------------
--? ?ë¡í ?¸??¸ë¬?


-- ?ë¡í(PROFILE) ?¸??¸ (?ë¡íë²í¸, ? ????ë²í¸, ?¬ì§??ë²í¸,?¸ë¶?ì§??­ë²í¸,?±ë¡ì¼)
INSERT INTO PROFILE
(PROFILE_NO, PIN_NO, POS_NO, SUB_REGION_NO, PROFILE_DATE)
VALUES
('PF'||TO_CHAR(PROFILENOSEQ.NEXTVAL)
,'UP1'
, 1                                                     
, 991               -- ??¸? ì²?  
, SYSDATE);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.

SELECT * FROM PROFILE;
--==>> PF1	UP1	1	991	2023-08-06 18:39:57


INSERT INTO PROFILE
(PROFILE_NO, PIN_NO, POS_NO, SUB_REGION_NO, PROFILE_DATE)
VALUES
('PF'||TO_CHAR(PROFILENOSEQ.NEXTVAL)
,'UP2'
, 2                                                       
, 1                 -- ê²½ê¸°? ê³ ì?
, SYSDATE);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.
SELECT * FROM PROFILE;
--==>> PF2	UP2	2	1	2023-08-06 18:41:07

INSERT INTO PROFILE
(PROFILE_NO, PIN_NO, POS_NO, SUB_REGION_NO, PROFILE_DATE)
VALUES
('PF'||TO_CHAR(PROFILENOSEQ.NEXTVAL)
,'UP3'
, 2                                                       
, 28                 -- ê°ì? ê°ë¦?
, SYSDATE);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.
SELECT * FROM PROFILE;
--==>> PF3	UP3	2	28	2023-08-06 18:41:52



INSERT INTO PROFILE
(PROFILE_NO, PIN_NO, POS_NO, SUB_REGION_NO, PROFILE_DATE)
VALUES
('PF'||TO_CHAR(PROFILENOSEQ.NEXTVAL)
,'UP4'
, 2                                                       
, 35                 -- ê²½ì?¨? ê±°ì ?
, SYSDATE);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.




INSERT INTO PROFILE
(PROFILE_NO, PIN_NO, POS_NO, SUB_REGION_NO, PROFILE_DATE)
VALUES
('PF5'
,'UP5'
, 2                                                       
, 45                 -- ê²½ìë¶ë êµ¬ë?¸ì
, SYSDATE);
--==>> ? ?´(ê°?) ?½????µ??¤.
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

--? ëª¨ì§ê³µê³  ?¸??¸ë¬?
--(ê³µê³ ë²í¸, ëª¨ì§?? ??ë²í¸, ì§íë°©ìë²í¸, ? ëª?, ?´?©, ?±ë¡ì¼, ?ë¡ì ?¸ ???¼, ?ë¡ì ?¸ ì¢ë£?¼)

--? 1) ê³µê³  1 ( ëª¨ì§ì¤?) 8/6 ê³µê³  ?±ë¡? , 19?¼ ë§ê°?¼ 
INSERT INTO RECRUIT (RECRUIT_NO, PIN_NO, DO_TYPE_NO, TITLE, CONTENT, CREATED_DATE, PRJ_START, PRJ_END) 
VALUES('RC'||TO_CHAR(RECRUITNOSEQ.NEXTVAL)
        ,'UP1'
        , 1                                         
        , 'ë°ë ¤?ë¬? ì§ì¬ë¥? ?? ì»¤ë?¤ë?°'               
        , 'ë°ë ¤?ë¬? ì§ì¬?¤?´ ?ë¡? ? ë³´ë?? ê³µì ?ê³? ??µ?  ? ?? ì»¤ë?¤ë?°ë¥? ê¸°í?ê³? ??µ??¤..' 
        , TO_DATE('2023-08-06', 'YYYY-MM-DD')                                    
        , TO_DATE('2023-08-25', 'YYYY-MM-DD')
        , TO_DATE('2023-10-25', 'YYYY-MM-DD'));
--==>> 1 ? ?´(ê°?) ?½????µ??¤.

--? 2) ê³µê³  2 ( ëª¨ì§?ë£?) 7/23 ê³µê³  ?±ë¡? , 8/5?¼ ëª¨ì§ ë§ê°, 6?¼ ?©ë¥ì²´?¬ ëª¨ë ?ë£? 
INSERT INTO RECRUIT (RECRUIT_NO, PIN_NO, DO_TYPE_NO, TITLE, CONTENT, CREATED_DATE, PRJ_START, PRJ_END) 
VALUES('RC'||TO_CHAR(RECRUITNOSEQ.NEXTVAL)
        ,'UP2'
        , 0                                         
        , '?ë¡ì ?¸ ê¸°íë¶??° ?¨ê»í?¤ ë¶ë¤? êµ¬í©??¤.'               
        , '?ë¡ì ?¸ ê²½í?´ ?ê±°ë ? ?? ë¶ë¤? ê´ì°®?µ??¤. ?? ?¬?¨ ì´? 3ëªì¼ë¡?..' 
        , TO_DATE('2023-07-23', 'YYYY-MM-DD')                                    
        , TO_DATE('2023-08-10', 'YYYY-MM-DD')
        , TO_DATE('2023-10-10', 'YYYY-MM-DD'));
--==>> 1 ? ?´(ê°?) ?½????µ??¤.

--------------------------------------------------------------------------------
--? ì§??? 1 (ê³µê³ 1(ëª¨ì§ì¤?) ? ëª¨ì§? ì§???(??ì²ë¦¬))
-- (ì§?? ë²í¸, ê³µê³ ?? ëª¨ì§ì¤ì¸ ?¬ì§??ë²í¸, ì§???? ??ë²í¸, ?´?©, ì§???¼, ì²ë¦¬?¼?(??½/ê±°ì ) 


-- ëª¨ì§ ?¬ì§?? ë²í¸
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
--===>> 1 ? ?´(ê°?) ?½????µ??¤. *5
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
        , 'RP1' -- ?? (ê³µê³ ?? ëª¨ì§ì¤ì¸ ?¬ì§?? ë²í¸)(?¬?©?ê°? ? ?? ê°?)
        , 'UP1' -- ì§??? ?? ë²í¸(=ëª¨ì§?)
        ,'??' -- ?´?©
        , TO_DATE('2023-08-06', 'YYYY-MM-DD')     -- ì§???¼ (ê³µê³  ?±ë¡ì¼??? ê°ì) ??? SYSDATEë¡? 
        , TO_DATE('2023-08-06', 'YYYY-MM-DD'));     -- ì²ë¦¬?¼ (ê³µê³  ?±ë¡ì¼??? ê°ì) ??? SYSDATEë¡? 
--==>> 1 ? ?´(ê°?) ?½????µ??¤.



--? ì§??? 2 (ê³µê³ 1(ëª¨ì§ì¤?) ? ì§???? ì§???
-- (ì§?? ë²í¸, ê³µê³ ?? ëª¨ì§ì¤ì¸ ?¬ì§??ë²í¸, ì§???? ??ë²í¸, ?´?©, ì§???¼, ì²ë¦¬?¼?(??½/ê±°ì ) 

INSERT INTO APPLY (APPLY_NO, RECRUIT_POS_NO, PIN_NO, CONTENT, APPLY_DATE, CK_DATE) 
VALUES('AP'||TO_CHAR(APPLYNOSEQ.NEXTVAL)
        , 'RP2' -- ?? (ê³µê³ ?? ëª¨ì§ì¤ì¸ ?¬ì§?? ë²í¸)(?¬?©?ê°? ? ?? ê°?)
        , 'UP3' -- ì§??? ?? ë²í¸
        ,'????¸?. ê°ìì§? ? ë§ë¦¬ë¥? ?¤?°ê³? ?? ì§ì¬???¤! ë°ë ¤?¸?¼ë¡ì ì£¼ì ? ê´??¬?´..' -- ?´?©
        , TO_DATE('2023-08-06', 'YYYY-MM-DD')     -- ì§???¼ (ê³µê³  ?±ë¡ì¼??? ê°ì) ??? SYSDATEë¡? 
        , TO_DATE('2023-08-06', 'YYYY-MM-DD'));     -- ì²ë¦¬?¼ (ê³µê³  ?±ë¡ì¼??? ê°ì) ??? SYSDATEë¡? 
--==>> 1 ? ?´(ê°?) ?½????µ??¤.


--? ì§??? 3 (ê³µê³ 2(ëª¨ì§ ?ë£?) ? ëª¨ì§? ì§???(??ì²ë¦¬)
-- (ì§?? ë²í¸, ê³µê³ ?? ëª¨ì§ì¤ì¸ ?¬ì§??ë²í¸, ì§???? ??ë²í¸, ?´?©, ì§???¼, ì²ë¦¬?¼?(??½/ê±°ì ) 
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
        , 'RP3' -- ?? (ê³µê³ ?? ëª¨ì§ì¤ì¸ ?¬ì§?? ë²í¸)(?¬?©?ê°? ? ?? ê°?)
        , 'UP2' -- (= ëª¨ì§? ??ë²í¸)
        ,'??' -- ?´?©
        , TO_DATE('2023-07-23', 'YYYY-MM-DD')     -- ì§???¼ (ê³µê³  ?±ë¡ì¼??? ê°ì) ??? SYSDATEë¡? 
        , TO_DATE('2023-07-23', 'YYYY-MM-DD'));    -- ì²ë¦¬?¼ (ê³µê³  ?±ë¡ì¼??? ê°ì) ??? SYSDATEë¡? 
--==>> 1 ? ?´(ê°?) ?½????µ??¤.

--? ì§??? 4 (ê³µê³ 2(ëª¨ì§ ?ë£?) ? ëª¨ì§?1 ì§???(?©ê²?, ?©ë¥? ?ë£?)
-- (ì§?? ë²í¸, ê³µê³ ?? ëª¨ì§ì¤ì¸ ?¬ì§??ë²í¸, ì§???? ??ë²í¸, ?´?©, ì§???¼, ì²ë¦¬?¼?(??½/ê±°ì ) 

INSERT INTO APPLY (APPLY_NO, RECRUIT_POS_NO, PIN_NO, CONTENT, APPLY_DATE, CK_DATE) 
VALUES('AP'||TO_CHAR(APPLYNOSEQ.NEXTVAL)
        , 'RP4' -- ?? (ê³µê³ ?? ëª¨ì§ì¤ì¸ ?¬ì§?? ë²í¸)(?¬?©?ê°? ? ?? ê°?)
        , 'UP4' -- (= ëª¨ì§? ??ë²í¸)
        ,'?ë¡ì ?¸ ê²½í?? ?ì§?ë§? ?ë¡ í¸??? ê´??¬?´ ë§ì ?´ë¡ ì ?¸ ë¶?ë¶ì? ? ë°ì ?¼ë¡? ?ì§??ê³? ??µ??¤. ?? ?´ë¡? ì½ë©?¼ë¡?..' -- ?´?©
        , TO_DATE('2023-07-24', 'YYYY-MM-DD')     -- ì§???¼  ??? SYSDATEë¡? 
        , TO_DATE('2023-07-24', 'YYYY-MM-DD'));    -- ì²ë¦¬?¼ ??? SYSDATEë¡? 
--==>> 1 ? ?´(ê°?) ?½????µ??¤.

--? ì§??? 5 (ê³µê³ 2(ëª¨ì§ ?ë£?) ? ëª¨ì§?2 ì§???(?©ê²?, ?©ë¥? ?ë£?)
-- (ì§?? ë²í¸, ê³µê³ ?? ëª¨ì§ì¤ì¸ ?¬ì§??ë²í¸, ì§???? ??ë²í¸, ?´?©, ì§???¼, ì²ë¦¬?¼?(??½/ê±°ì ) 

INSERT INTO APPLY (APPLY_NO, RECRUIT_POS_NO, PIN_NO, CONTENT, APPLY_DATE, CK_DATE) 
VALUES('AP'||TO_CHAR(APPLYNOSEQ.NEXTVAL)
        , 'RP5' -- ?? (ê³µê³ ?? ëª¨ì§ì¤ì¸ ?¬ì§?? ë²í¸)(?¬?©?ê°? ? ?? ê°?)
        , 'UP5' -- (= ëª¨ì§? ??ë²í¸)
        ,'?ë¡ì ?¸ ê²½í?´ 1? ?ê³? ê¸°ë³¸? ?¸ ê¸°ë¥ ?ì£¼ë¡ êµ¬ì±? ê²ì??´??µ??¤. ?¥??ì§?? ?ì§?ë§?..' -- ?´?©
        , TO_DATE('2023-07-25', 'YYYY-MM-DD')     -- ì§???¼  ??? SYSDATEë¡? 
        , TO_DATE('2023-07-25', 'YYYY-MM-DD'));    -- ì²ë¦¬?¼ ??? SYSDATEë¡? 
--==>> 1 ? ?´(ê°?) ?½????µ??¤

SELECT * FROM APPLY;
/*
AP1	RP1	UP1	??	2023-08-06 00:00:00	2023-08-06 00:00:00
AP2	RP2	UP3	????¸?. ê°ìì§? ? ë§ë¦¬ë¥? ?¤?°ê³? ?? ì§ì¬???¤! ë°ë ¤?¸?¼ë¡ì ì£¼ì ? ê´??¬?´..	2023-08-06 00:00:00	2023-08-06 00:00:00
AP3	RP3	UP2	??	2023-07-23 00:00:00	2023-07-23 00:00:00
AP4	RP4	UP4	?ë¡ì ?¸ ê²½í?? ?ì§?ë§? ?ë¡ í¸??? ê´??¬?´ ë§ì ?´ë¡ ì ?¸ ë¶?ë¶ì? ? ë°ì ?¼ë¡? ?ì§??ê³? ??µ??¤. ?? ?´ë¡? ì½ë©?¼ë¡?..	2023-07-24 00:00:00	2023-07-24 00:00:00
AP5	RP5	UP5	?ë¡ì ?¸ ê²½í?´ 1? ?ê³? ê¸°ë³¸? ?¸ ê¸°ë¥ ?ì£¼ë¡ êµ¬ì±? ê²ì??´??µ??¤. ?¥??ì§?? ?ì§?ë§?..	2023-07-25 00:00:00	2023-07-25 00:00:00
*/

--------------------------------------------------------------------------------



--? ?ë¡ì ?¸ (ê³µê³  2ë¥? ?µ?´ ??±, ?¸? 3ëª? )
--(?ë¡ì ?¸ ë²í¸, ê³µê³ ë²í¸, ?ë¡ì ?¸ ??±?¼)

INSERT INTO PROJECT (PRJ_NO, RECRUIT_NO, PRJ_DATE)
VALUES('PJ'||TO_CHAR(PROJECTNOSEQ.NEXTVAL)
    , 'RC2'
    , TO_DATE('2023-08-06', 'YYYY-MM-DD')); -- ?©ë¥? ì²´í¬ ?ë£ì¼ (??? SYSDATE)

--==>> 1 ? ?´(ê°?) ?½????µ??¤.

SELECT * FROM PROJECT;
--==>> PJ1	RC2	2023-08-06 00:00:00

------------------------------------------------------------ ?  ?´ì¤?ë³? ???°?´?° ??±
--===============[?? ? ë³? INSERT]
INSERT INTO USER_PIN
(PIN_NO, JOIN_DATE) 
VALUES
( 'UP'||TO_CHAR(USERPINSEQ.NEXTVAL)
, SYSDATE);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.
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
, '??¼?ëª?@naver.com'
, 'java002$'
, '??¼?ëª?'
, 'c://WebStudy');
--==>> 1 ? ?´(ê°?) ?½????µ??¤.

INSERT INTO USER_PIN
(PIN_NO, JOIN_DATE) 
VALUES
( 'UP'||TO_CHAR(USERPINSEQ.NEXTVAL)
, SYSDATE);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.

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
, '?¸ì§êµ¬@naver.com'
, 'java002$'
, '?¸ì§êµ¬'
, 'c://WebStudy');
--==>> 1 ? ?´(ê°?) ?½????µ??¤.


INSERT INTO USER_PIN
(PIN_NO, JOIN_DATE) 
VALUES
( 'UP'||TO_CHAR(USERPINSEQ.NEXTVAL)
, SYSDATE);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.;


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
, 'ë¹ì¤?´@naver.com'
, 'java002$'
, 'ë¹ì¤?´'
, 'c://WebStudy');
--==>>  1 ? ?´(ê°?) ?½????µ??¤.


INSERT INTO USER_PIN
(PIN_NO, JOIN_DATE) 
VALUES
( 'UP'||TO_CHAR(USERPINSEQ.NEXTVAL)
, SYSDATE);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.

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
, '???´@naver.com'
, 'java002$'
, '???´'
, 'c://WebStudy');
--===>> 1 ? ?´(ê°?) ?½????µ??¤.

INSERT INTO USER_PIN
(PIN_NO, JOIN_DATE) 
VALUES
( 'UP'||TO_CHAR(USERPINSEQ.NEXTVAL)
, SYSDATE);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.

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
, '?´?¬?´@naver.com'
, 'java002$'
, '?´?¬?´'
, 'c://WebStudy');
--==>>1 ? ?´(ê°?) ?½????µ??¤.

SELECT * FROM USERS;
/*
US6	UP6	??¼?ëª?@naver.com	java002$	??¼?ëª?	c://WebStudy
US7	UP7	?¸ì§êµ¬@naver.com	java002$	?¸ì§êµ¬	c://WebStudy
US8	UP8	ë¹ì¤?´@naver.com	java002$	ë¹ì¤?´	c://WebStudy
US9	UP9	???´@naver.com	java002$	???´	c://WebStudy
US10	UP10	?´?¬?´@naver.com	java002$	?´?¬?´	c://WebStudy
*/

--[?? ?ë¡í INSERT]====================

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
  WHERE NICKNAME='??¼?ëª?')
, 1
, 16
, SYSDATE);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.

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
  WHERE NICKNAME='?¸ì§êµ¬')
, 2
, 30
, SYSDATE);
--==>> 1 ? ?´(ê°?) ?½????µ??¤

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
  WHERE NICKNAME='ë¹ì¤?´')
, 3
, 7
, SYSDATE);
--===>> 1 ? ?´(ê°?) ?½????µ??¤.

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
  WHERE NICKNAME='???´')
, 4
, 12
, SYSDATE);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.


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
  WHERE NICKNAME='?´?¬?´')
, 2
, 41
, SYSDATE);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.

SELECT * FROM PROFILE;
/*
PF6	UP6	1	16	2023-08-06 19:32:33
PF7	UP7	2	30	2023-08-06 19:34:33
PF8	UP8	3	7	2023-08-06 19:34:56
PF9	UP9	4	12	2023-08-06 19:35:11
PF10	UP10	2	41	2023-08-06 19:35:27
*/


--[? ?? ?¬?© ?¸?´ + ?ê²?]===========================

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
                   WHERE NICKNAME='??¼?ëª?'))
,1);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.


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
                   WHERE NICKNAME='??¼?ëª?'))
,11);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.

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
                   WHERE NICKNAME='??¼?ëª?'))
,21);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.



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
                   WHERE NICKNAME='?¸ì§êµ¬'))
,2);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.

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
                   WHERE NICKNAME='?¸ì§êµ¬'))
,12);
--===>> 1 ? ?´(ê°?) ?½????µ??¤.


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
                   WHERE NICKNAME='?¸ì§êµ¬'))
,22);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.


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
                   WHERE NICKNAME='ë¹ì¤?´'))
,3);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.

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
                   WHERE NICKNAME='ë¹ì¤?´'))
,13);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.

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
                   WHERE NICKNAME='ë¹ì¤?´'))
,23);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.



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
                   WHERE NICKNAME='???´'))
,4);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.

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
                   WHERE NICKNAME='???´'))
,14);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.


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
                   WHERE NICKNAME='???´'))
,24);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.

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
                   WHERE NICKNAME='?´?¬?´'))
,5);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.

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
                   WHERE NICKNAME='?´?¬?´'))
,15);
--===>> 1 ? ?´(ê°?) ?½????µ??¤.

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
                   WHERE NICKNAME='?´?¬?´'))
,25);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.

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

-- ëª¨ì§ ê³µê³  ??±==============
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
   WHERE NICKNAME='??¼?ëª?')
, 1 
, 'ì£¼ì°¨ ??¤? ?ë¡ì ?¸'
, 'ì£¼ì°¨ ??¤? ?ë¡ì ?¸? ê´?? ¨? ?´?©'
, TO_DATE('2023-08-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
, TO_DATE('2023-08-20 10:00:00', 'YYYY-MM-DD HH24:MI:SS')
, TO_DATE('2023-09-20 23:59:59', 'YYYY-MM-DD HH24:MI:SS')
);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.

DESC RECRUIT_POS;

-- ?´? ?¬ì§?? ???  ê±´ì?
INSERT INTO RECRUIT_POS
( RECRUIT_POS_NO
, RECRUIT_NO
, POS_NO)
VALUES
( 'RP'||TO_CHAR(RECRUITPOSSEQ.NEXTVAL)
, (SELECT RECRUIT_NO
  FROM RECRUIT
  WHERE PIN_NO = (SELECT PIN_NO FROM USERS WHERE NICKNAME='??¼?ëª?'))
, 1);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.


INSERT INTO RECRUIT_POS
( RECRUIT_POS_NO
, RECRUIT_NO
, POS_NO)
VALUES
( 'RP'||TO_CHAR(RECRUITPOSSEQ.NEXTVAL)
, (SELECT RECRUIT_NO
  FROM RECRUIT
  WHERE PIN_NO = (SELECT PIN_NO FROM USERS WHERE NICKNAME='??¼?ëª?'))
, 2);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.

INSERT INTO RECRUIT_POS
( RECRUIT_POS_NO
, RECRUIT_NO
, POS_NO)
VALUES
( 'RP'||TO_CHAR(RECRUITPOSSEQ.NEXTVAL)
, (SELECT RECRUIT_NO
  FROM RECRUIT
  WHERE PIN_NO = (SELECT PIN_NO FROM USERS WHERE NICKNAME='??¼?ëª?'))
, 3);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.

-- ???¥ ?? ì§?? ë°? 1ì°? ?©ê²©ê¹ì§?

SELECT RP.RECRUIT_POS_NO, R.RECRUIT_NO , U.PIN_NO, U.NICKNAME
FROM RECRUIT_POS RP LEFT JOIN RECRUIT R ON RP.RECRUIT_NO = R.RECRUIT_NO
LEFT JOIN USERS U ON U.PIN_NO = R.PIN_NO; 
/*
RP2	RC1	UP1	??¼?
RP1	RC1	UP1	??¼?
RP5	RC2	UP2	?¸?¤?
RP4	RC2	UP2	?¸?¤?
RP3	RC2	UP2	?¸?¤?
RP8	RC3	UP6	??¼?ëª? --> ???¥ ?¬ì§??
RP7	RC3	UP6	??¼?ëª?
RP6	RC3	UP6	??¼?ëª?
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
, (SELECT PIN_NO FROM USERS WHERE NICKNAME='??¼?ëª?')
, 'ëª¨ì§? ?? ì§?? ì²ë¦¬'
, TO_DATE('2023-08-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));
--==>>1 ? ?´(ê°?) ?½????µ??¤.

SELECT * FROM APPLY;

INSERT INTO FIRST_CK
(FIRST_CK_NO
, APPLY_NO
, PASS_DATE)
VALUES
( 'FS'||FIRSTCKSEQ.NEXTVAL
, 'AP6'
, SYSDATE);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.


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
   WHERE NICKNAME='?¸ì§êµ¬')
, 1 
, 'ë©ì ?? ??¤? ?ë¡ì ?¸'
, 'ë©ì ?? ??¤? ?ë¡ì ?¸? ê´?? ¨? ?´?©'
, TO_DATE('2023-07-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
, TO_DATE('2023-08-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
, TO_DATE('2023-11-01 23:59:59', 'YYYY-MM-DD HH24:MI:SS')
);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.

-- ???¥ ?? ì§?? ë°? 1ì°? ?©ê²©ê¹ì§?

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
--==>> 1 ? ?´(ê°?) ?½????µ??¤

INSERT INTO RECRUIT_POS
( RECRUIT_POS_NO
, RECRUIT_NO
, POS_NO)
VALUES
('RP'||TO_CHAR(RECRUITPOSSEQ.NEXTVAL)
, 'RC4'
,2);
--==>> 1 ? ?´(ê°?) ?½????µ??¤

INSERT INTO RECRUIT_POS
( RECRUIT_POS_NO
, RECRUIT_NO
, POS_NO)
VALUES
('RP'||TO_CHAR(RECRUITPOSSEQ.NEXTVAL)
, 'RC4'
,2);
--==>> 1 ? ?´(ê°?) ?½????µ??¤

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

SELECT PIN_NO FROM USERS WHERE NICKNAME='?¸ì§êµ¬';

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
, (SELECT PIN_NO FROM USERS WHERE NICKNAME='?¸ì§êµ¬')
, '???¥ ?? ì§??(?¸ì§êµ¬)'
,  TO_DATE('2023-07-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));
--==>> 1 ? ?´(ê°?) ?½????µ??¤.


INSERT INTO FIRST_CK
(FIRST_CK_NO
, APPLY_NO
, PASS_DATE)
VALUES
( 'FS'||FIRSTCKSEQ.NEXTVAL
, 'AP9'
,  TO_DATE('2023-07-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));
--==>> 1 ? ?´(ê°?) ?½????µ??¤.

SELECT * FROM APPLY ;

==============
-- ?ë¨¸ì? 3?¸? ??? ì§??? ì²ë¦¬

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
, (SELECT PIN_NO FROM USERS WHERE NICKNAME='???´')
, '??¼?ëª? ê³µê³ ? ??? ???´? ì§??'
, TO_DATE('2023-08-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));
--==>>1 ? ?´(ê°?) ?½????µ??¤.


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
, (SELECT PIN_NO FROM USERS WHERE NICKNAME='ë¹ì¤?´')
, '?¸ì§êµ¬ ê³µê³ ? ??? ë¹ì¤?´? ì§??'
, TO_DATE('2023-07-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));
--==>> 1 ? ?´(ê°?) ?½????µ??¤.


INSERT INTO APPLY
( APPLY_NO
, RECRUIT_POS_NO
, PIN_NO
, CONTENT
, APPLY_DATE)
VALUES
( 'AP'||TO_CHAR(APPLYNOSEQ.NEXTVAL)
, 'RP11'
, (SELECT PIN_NO FROM USERS WHERE NICKNAME='?´?¬?´')
, '?¸ì§êµ¬? ê³µê³ ? ??? ?´?¬?´? ì§??'
, TO_DATE('2023-07-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));
--==>> 1 ? ?´(ê°?) ?½????µ??¤.


--== ?¸ì§êµ¬ ì§???? ?? ë¹ì¤?´?? ?´?¬?´ë¥? 1ì°? ?©ê²©ì ?¬ë¦?



INSERT INTO FIRST_CK
(FIRST_CK_NO
, APPLY_NO
, PASS_DATE)
VALUES
( 'FS'||TO_CHAR(FIRSTCKSEQ.NEXTVAL)
, (SELECT APPLY_NO FROM APPLY WHERE PIN_NO = (SELECT PIN_NO FROM USERS WHERE NICKNAME='ë¹ì¤?´'))
, TO_DATE('2023-07-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));
--===>> 1 ? ?´(ê°?) ?½????µ??¤.


INSERT INTO FIRST_CK
(FIRST_CK_NO
, APPLY_NO
, PASS_DATE)
VALUES
( 'FS'||FIRSTCKSEQ.NEXTVAL
, (SELECT APPLY_NO FROM APPLY WHERE PIN_NO = (SELECT PIN_NO FROM USERS WHERE NICKNAME='?´?¬?´'))
,TO_DATE('2023-07-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));
--==>> 1 ? ?´(ê°?) ?½????µ??¤.

SELECT * FROM FIRST_CK;

DESC FINAL;

--== ?¸ì§êµ¬ ê³µê³ ? 1ì°? ?©ê²©í ?¸ì§êµ¬, ë¹ì¤?´, ?´?¬?´? ìµì¢ ?©ë¥? ? ??? ê³?
INSERT INTO FINAL(FINAL_NO, FIRST_CK_NO, FINAL_CK_DATE)
VALUES('FN'||TO_CHAR(FINALNOSEQ.NEXTVAL), 'FS2', TO_DATE('2023-07-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO FINAL(FINAL_NO, FIRST_CK_NO,FINAL_CK_DATE)
VALUES('FN'||TO_CHAR(FINALNOSEQ.NEXTVAL),'FS3', TO_DATE('2023-07-30 12:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO FINAL(FINAL_NO, FIRST_CK_NO,FINAL_CK_DATE)
VALUES('FN'||TO_CHAR(FINALNOSEQ.NEXTVAL),'FS4', TO_DATE('2023-07-30 13:00:00', 'YYYY-MM-DD HH24:MI:SS'));
--===>> 1 ? ?´(ê°?) ?½????µ??¤. *3


------------------------------------------------------------ ?  ì§ì£¼?° ???°?´?° ??±

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

-- ì¶ê? 2023.08.09
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

----------------------------------------------------------------------------------------------------------- ? INSERT (??ê°??)
INSERT INTO USERS (USER_NO, PIN_NO, ID, PW, NICKNAME, PHOTOURL)
VALUES ('US'||TO_CHAR(USERNOSEQ.NEXTVAL), 'UP11', 'test999@test.com','java002' ,'ê¹?ì² ì', 'images/defaulfPhoto.jpg');
INSERT INTO USERS (USER_NO, PIN_NO, ID, PW, NICKNAME, PHOTOURL)
VALUES ('US'||TO_CHAR(USERNOSEQ.NEXTVAL), 'UP12', 'test998@test.com', 'java002' ,'ê¹???', 'images/defaulfPhoto.jpg');
INSERT INTO USERS (USER_NO, PIN_NO, ID, PW, NICKNAME, PHOTOURL)
VALUES ('US'||TO_CHAR(USERNOSEQ.NEXTVAL), 'UP13', 'test997@test.com', 'java002' ,'ê¹?ë¯¼ì', 'images/defaulfPhoto.jpg');
INSERT INTO USERS (USER_NO, PIN_NO, ID, PW, NICKNAME, PHOTOURL)
VALUES ('US'||TO_CHAR(USERNOSEQ.NEXTVAL), 'UP14', 'test996@test.com', 'java002' ,'ê¹?ë¯¼ì?', 'images/defaulfPhoto.jpg');
INSERT INTO USERS (USER_NO, PIN_NO, ID, PW, NICKNAME, PHOTOURL)
VALUES ('US'||TO_CHAR(USERNOSEQ.NEXTVAL), 'UP15', 'test995@test.com', 'java002' ,'?´??? ', 'images/defaulfPhoto.jpg');

SELECT * FROM USERS;
/*
US11	UP11	test999@test.com	java002	ê¹?ì² ì	images/defaulfPhoto.jpg
US12	UP12	test998@test.com	java002	ê¹???	images/defaulfPhoto.jpg
US13	UP13	test997@test.com	java002	ê¹?ë¯¼ì	images/defaulfPhoto.jpg
US14	UP14	test996@test.com	java002	ê¹?ë¯¼ì?	images/defaulfPhoto.jpg
US15	UP15	test995@test.com	java002	?´??? 	images/defaulfPhoto.jpg
*/


-- ì¶ê?
INSERT INTO USERS (USER_NO, PIN_NO, ID, PW, NICKNAME, PHOTOURL)
VALUES ('US'||TO_CHAR(USERNOSEQ.NEXTVAL), 'UP24', 'test994@test.com','java002' ,'?¸??´', 'images/defaulfPhoto.jpg');
INSERT INTO USERS (USER_NO, PIN_NO, ID, PW, NICKNAME, PHOTOURL)
VALUES ('US'||TO_CHAR(USERNOSEQ.NEXTVAL), 'UP25', 'test993@test.com', 'java002' ,'? ?¼', 'images/defaulfPhoto.jpg');
INSERT INTO USERS (USER_NO, PIN_NO, ID, PW, NICKNAME, PHOTOURL)
VALUES ('US'||TO_CHAR(USERNOSEQ.NEXTVAL), 'UP26', 'test992@test.com', 'java002' ,'?¬?´', 'images/defaulfPhoto.jpg');
INSERT INTO USERS (USER_NO, PIN_NO, ID, PW, NICKNAME, PHOTOURL)
VALUES ('US'||TO_CHAR(USERNOSEQ.NEXTVAL), 'UP27', 'test991@test.com', 'java002' ,'?µë¬´ì', 'images/defaulfPhoto.jpg');
INSERT INTO USERS (USER_NO, PIN_NO, ID, PW, NICKNAME, PHOTOURL)
VALUES ('US'||TO_CHAR(USERNOSEQ.NEXTVAL), 'UP28', 'test990@test.com', 'java002' ,'?¬?°', 'images/defaulfPhoto.jpg');

SELECT * FROM USERS;
/*
US20	UP24	test994@test.com	java002	?¸??´	images/defaulfPhoto.jpg
US21	UP25	test993@test.com	java002	? ?¼	images/defaulfPhoto.jpg
US22	UP26	test992@test.com	java002	?¬?´	images/defaulfPhoto.jpg
US23	UP27	test991@test.com	java002	?µë¬´ì	images/defaulfPhoto.jpg
US24	UP28	test990@test.com	java002	?¬?°	images/defaulfPhoto.jpg
*/

----------------------------------------------------------------------------------------------------------- ? INSERT (?ë¡í??±)
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

-- ì¶ê?
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


----------------------------------------------------------------------------------------------------------- ? INSERT (?ë¡í ? ?? ?¬?©?êµ? ì¶ê?)
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

----------------------------------------------------------------------------------------------------------- ? INSERT (ëª¨ì§ê³µê³ A ì² ì)
INSERT INTO RECRUIT (RECRUIT_NO, PIN_NO, DO_TYPE_NO, TITLE, CONTENT, CREATED_DATE, PRJ_START, PRJ_END)
VALUES ('RC'||TO_CHAR(RECRUITNOSEQ.NEXTVAL), 'UP11', 0, 'ì¹í¨ ë§ì§ ?´?ë¦¬ì??´?', 'ì¹í¨ë§ì§ ?´?ë¦¬ì??´? ?ë¡ì ?¸ë¥? ê°ì´ ??¤ ????¤? ëª¨ì§?©??¤.'
     , TO_DATE('2023-07-28', 'YYYY-MM-DD'), TO_DATE('2023-08-20', 'YYYY-MM-DD'), TO_DATE('2024-01-15', 'YYYY-MM-DD'));
--==>> 1 ? ?´(ê°?) ?½????µ??¤.

SELECT * FROM RECRUIT;
--==>> RC5	UP11	0	ì¹í¨ ë§ì§ ?´?ë¦¬ì??´?	ì¹í¨ë§ì§ ?´?ë¦¬ì??´? ?ë¡ì ?¸ë¥? ê°ì´ ??¤ ????¤? ëª¨ì§?©??¤.

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
--==>> 1 ? ?´(ê°?) ?½????µ??¤. * 7



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
--==>>  1 ? ?´(ê°?) ?½????µ??¤. * 5


-------------------------------------------------- ??½ ?´ ?°?´?° ?½? (RC 1234)
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

----------------------------------------------------------------------------------------------------------- ? INSERT (ëª¨ì§ê³µê³ B ??)
INSERT INTO RECRUIT (RECRUIT_NO, PIN_NO, DO_TYPE_NO, TITLE, CONTENT, CREATED_DATE, PRJ_START, PRJ_END)
VALUES ('RC'||TO_CHAR(RECRUITNOSEQ.NEXTVAL), 'UP12', 1, '?? ì¢ì ?ë§? ?¹ ?¬?´?¸', '??ê´? ì¢ì? ?ë§¤í? ??¤?? ê°ì´ ë§ë¤?´ ë³´ì¤ ????¤? ëª¨ì§?©??¤.'
     , TO_DATE('2023-07-10', 'YYYY-MM-DD'), TO_DATE('2023-08-01', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'));
--==>> 1 ? ?´(ê°?) ?½????µ??¤.

SELECT * FROM RECRUIT;


INSERT INTO RECRUIT_POS (RECRUIT_POS_NO, RECRUIT_NO, POS_NO)
VALUES ('RP'||TO_CHAR(RECRUITPOSSEQ.NEXTVAL), 'RC6', 1);
INSERT INTO RECRUIT_POS (RECRUIT_POS_NO, RECRUIT_NO, POS_NO)
VALUES ('RP'||TO_CHAR(RECRUITPOSSEQ.NEXTVAL), 'RC6', 2);
INSERT INTO RECRUIT_POS (RECRUIT_POS_NO, RECRUIT_NO, POS_NO)
VALUES ('RP'||TO_CHAR(RECRUITPOSSEQ.NEXTVAL),  'RC6', 5);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.

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
--==>> 1 ? ?´(ê°?) ?½????µ??¤.


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
FROM RECRUIT_TOOL;
----------------------------------------------------------------------------------------------------------- ? INSERT (ëª¨ì§ê³µê³ B ì§?? ë¯¼ì)
INSERT INTO APPLY (APPLY_NO, RECRUIT_POS_NO, PIN_NO, CONTENT, APPLY_DATE)
VALUES ('AP'||TO_CHAR(APPLYNOSEQ.NEXTVAL), 'RP21', 'UP13', 'ìµì ? ?¤?ê² ìµ??¤. :)', TO_DATE('2023-07-15', 'YYYY-MM-DD'));
--==>> 1 ? ?´(ê°?) ?½????µ??¤.


----------------------------------------------------------------------------------------------------------- ? INSERT (ëª¨ì§ê³µê³ B ì§?? ë¯¼ì?)
INSERT INTO APPLY (APPLY_NO, RECRUIT_POS_NO, PIN_NO, CONTENT, APPLY_DATE)
VALUES ('AP'||TO_CHAR(APPLYNOSEQ.NEXTVAL), 'RP19', 'UP14', '?´?¬? ?ê² ìµ??¤ ^^', TO_DATE('2023-07-16', 'YYYY-MM-DD'));
--==>1 ? ?´(ê°?) ?½????µ??¤.

INSERT INTO APPLY (APPLY_NO, RECRUIT_POS_NO, PIN_NO, CONTENT, APPLY_DATE)
VALUES ('AP'||TO_CHAR(APPLYNOSEQ.NEXTVAL), 'RP20', 'UP12', '???¥(ê¹???) ?? ì§??', TO_DATE('2023-07-10', 'YYYY-MM-DD'));
--==>> 1 ? ?´(ê°?) ?½????µ??¤.


----------------------------------------------------------------------------------------------------------- ? INSERT (ëª¨ì§ê³µê³ C ??? )
INSERT INTO RECRUIT (RECRUIT_NO, PIN_NO, DO_TYPE_NO, TITLE, CONTENT, CREATED_DATE, PRJ_START, PRJ_END)
VALUES ('RC'||TO_CHAR(RECRUITNOSEQ.NEXTVAL), 'UP15', 0
        , '?? ê±? ??¸? ?´?ë¦¬ì??´? ?ë¡ì ?¸'
        , '?? ê±? ??¸? ???¤?´ ?° ê³ ë? ??? ? ë³´ë?? ì£¼ê³ ë°ê³  ? ?¨ ? ë³? ë°? ?¤?ê°? ?° ? ë³´ë?? ê³µì ?  ? ?? ?´?ë¦¬ì??´?? ? ??ê³ ì ?©??¤. ?±?¤?ê³? ?ê°ì  ?¬? ê°? ë§ì¼?  ë¶ì´?ë©? ì¢ê² ?µ??¤. ë§ì? ì§?? ë¶???ë¦½ë?¤.'
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

----------------------------------------------------------------------------------------------------------- ? INSERT (ëª¨ì§ê³µê³ C ì§?? ???¥(??? ) / ?¬?°)
INSERT INTO APPLY (APPLY_NO, RECRUIT_POS_NO, PIN_NO, CONTENT, APPLY_DATE)
VALUES ('AP'||TO_CHAR(APPLYNOSEQ.NEXTVAL), 'RP22', 'UP15', '???¥(ê¹???? ) ?? ì§??', TO_DATE('2023-08-08 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO APPLY (APPLY_NO, RECRUIT_POS_NO, PIN_NO, CONTENT, APPLY_DATE)
VALUES ('AP'||TO_CHAR(APPLYNOSEQ.NEXTVAL), 'RP23', 'UP28', 'ìµì ? ?¤?ê² ìµ??¤!! ? ê°? ?´?ëµë ì²´ë ¥? ì¢ê³  ?±?¤?©??¤. ë¹ì ê³µìì§?ë§? ?´?¬? êµ¬ê?ë§íê³? ê³µë??ë©´ì ë°°ì?ê°?ê² ìµ??¤. *^^*', TO_DATE('2023-08-09 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));


------------------------------------------------------------ ? INSERT (ëª¨ì§ê³µê³ B 1ì°? ?©ë¥?)
INSERT INTO FIRST_CK (FIRST_CK_NO, APPLY_NO, PASS_DATE)
VALUES ('FS'||TO_CHAR(FIRSTCKSEQ.NEXTVAL), 'AP15', TO_DATE('2023-07-10', 'YYYY-MM-DD'));
INSERT INTO FIRST_CK (FIRST_CK_NO, APPLY_NO, PASS_DATE)
VALUES ('FS'||TO_CHAR(FIRSTCKSEQ.NEXTVAL), 'AP13', TO_DATE('2023-07-18', 'YYYY-MM-DD'));
INSERT INTO FIRST_CK (FIRST_CK_NO, APPLY_NO, PASS_DATE)
VALUES ('FS'||TO_CHAR(FIRSTCKSEQ.NEXTVAL), 'AP14', TO_DATE('2023-07-18', 'YYYY-MM-DD'));
--==>> 1 ? ?´(ê°?) ?½????µ??¤. *3

SELECT * FROM FIRST_CK;
--==>>
/*
FS5	AP15	2023-07-10 00:00:00
FS6	AP13	2023-07-18 00:00:00
FS7	AP14	2023-07-18 00:00:00
*/
----------------------------------------------------------------------------------------------------------- ? INSERT (ëª¨ì§ê³µê³ B ìµì¢?©ë¥?)
INSERT INTO FINAL (FINAL_NO, FIRST_CK_NO, FINAL_CK_DATE)
VALUES ('FN'||TO_CHAR(FINALNOSEQ.NEXTVAL), 'FS5', TO_DATE('2023-07-24 12:34:56', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO FINAL (FINAL_NO, FIRST_CK_NO, FINAL_CK_DATE)
VALUES ('FN'||TO_CHAR(FINALNOSEQ.NEXTVAL), 'FS6', TO_DATE('2023-07-24 12:50:56', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO FINAL (FINAL_NO, FIRST_CK_NO, FINAL_CK_DATE)
VALUES ('FN'||TO_CHAR(FINALNOSEQ.NEXTVAL), 'FS7', TO_DATE('2023-07-24 14:34:56', 'YYYY-MM-DD HH24:MI:SS'));
--==>> 1 ? ?´(ê°?) ?½????µ??¤. *3

----------------------------------------------------------------------------------------------------------- ? INSERT (ëª¨ì§ê³µê³ B ?ë¡ì ?¸ ??)
INSERT INTO PROJECT (PRJ_NO, RECRUIT_NO, PRJ_DATE)
VALUES ('PJ'||TO_CHAR(PROJECTNOSEQ.NEXTVAL), 'RC6', TO_DATE('2023-07-24 14:34:56', 'YYYY-MM-DD HH24:MI:SS'));
--==>> 1 ? ?´(ê°?) ?½????µ??¤.


SELECT *
FROM PROJECT;

DESC PROJECT;
/*
?´ë¦?         ??       ? ?           
---------- -------- ------------ 
PRJ_NO     NOT NULL VARCHAR2(16) 
RECRUIT_NO NOT NULL VARCHAR2(16) 
PRJ_DATE            DATE
*/


COMMIT;
--==>> ì»¤ë° ?ë£?.

--========================================================================
--=============================??¸===========================================
-- ?? ê´?ë¦¬ì ê´?? ¨ INSERT êµ¬ë¬¸

-- ?? ?ë³ë²?¸ ??±

SELECT * FROM USER_PIN;
-- ?

INSERT INTO USER_PIN(PIN_NO, JOIN_DATE) VALUES('UP'||TO_CHAR(USERPINSEQ.NEXTVAL),SYSDATE);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.
--==>> UP16	2023-08-06
INSERT INTO USER_PIN(PIN_NO, JOIN_DATE) VALUES('UP'||TO_CHAR(USERPINSEQ.NEXTVAL),SYSDATE);
--==>> 1 ? ?´(ê°?) ?½????µ??¤.
--==>> UP17

-- ê´?ë¦¬ì ????¤ ??±
CREATE SEQUENCE ADMINNOSEQ
NOCACHE;
--==>> Sequence ADMINNOSEQ?´(ê°?) ??±???µ??¤.

-- ê´?ë¦¬ì INSERT êµ¬ë¬¸ ? ë²? ?¤? ?? ë²í¸ INSERT êµ¬ë¬¸ ?¤??ê¸?
-- ? 
INSERT INTO ADMIN(ADMIN_NO, ADMIN_ID, ADMIN_PW, REG_DATE, PIN_NO) 
VALUES ('AD'||TO_CHAR(ADMINNOSEQ.NEXTVAL), 'admin001@gmail.com'
, 'admin001', SYSDATE, 'UP16');
--==>> 1 ? ?´(ê°?) ?½????µ??¤.

--?¡
INSERT INTO ADMIN(ADMIN_NO, ADMIN_ID, ADMIN_PW, REG_DATE, PIN_NO) 
VALUES ('AD'||TO_CHAR(ADMINNOSEQ.NEXTVAL), 'admin002@gmail.com'
, 'admin002', SYSDATE, 'UP17');
--==>> 1 ? ?´(ê°?) ?½????µ??¤.

SELECT * FROM ADMIN;
--==>>
/*
AD1	admin001@gmail.com	admin001	2023-08-06	UP16
AD2	admin002@gmail.com	admin002	2023-08-06	UP17
*/

COMMIT;
--==>> ì»¤ë° ?ë£?.




- ??´? ì¤ë³µê²??¬ë¥? ë·? ??±


CREATE OR REPLACE VIEW IDCHECK
AS
SELECT ID
FROM USERS 
UNION ALL 
SELECT ADMIN_ID AS ID
FROM ADMIN;

--==>> View IDCHECK?´(ê°?) ??±???µ??¤.


INSERT INTO REGULATION
VALUES(0,'º¸·ù');

SELECT * FROM REGULATION;
/*
0	º¸·ù
1	¼ºÈñ·Õ
2	À½¶õ¹°
3	¿å¼³
4	±¤°í
5	µµ¹è
6	À¯ÇØÇÑ ÇàÀ§(ÀÚÇØ ¹× ÀÚ»ì µî)
7	»ç±â¼º ÇàÀ§
8	ºÎÀûÀýÇÑ ÄÜÅÙÃ÷
9	±âÅ¸
*/
