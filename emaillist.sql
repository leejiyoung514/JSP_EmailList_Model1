
CREATE TABLE emaillist(
no NUMBER,
last_name varchar2(5),
first_name varchar2(10),
email varchar(100) not null,
PRIMARY KEY(no)
);

--은행에서 번호표를 뽑듯이 저장하려면 번호표,
CREATE SEQUENCE seq_emaillist_no --SEQUENCE 번호를 주는것 
INCREMENT BY 1   --1씩 오르도록
START WITH 1   --1부터 시작 
nocache;   

INSERT INTO EMAILLIST values( SEQ_EMAILLIST_NO.NEXTVAL,'이','지영','zhiyong2@naver.com');
COMMIT;

SELECT * FROM EMAILLIST;

DROP TABLE emaillist;
