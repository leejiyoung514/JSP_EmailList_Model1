
CREATE TABLE emaillist(
no NUMBER,
last_name varchar2(5),
first_name varchar2(10),
email varchar(100) not null,
PRIMARY KEY(no)
);

--���࿡�� ��ȣǥ�� �̵��� �����Ϸ��� ��ȣǥ,
CREATE SEQUENCE seq_emaillist_no --SEQUENCE ��ȣ�� �ִ°� 
INCREMENT BY 1   --1�� ��������
START WITH 1   --1���� ���� 
nocache;   

INSERT INTO EMAILLIST values( SEQ_EMAILLIST_NO.NEXTVAL,'��','����','zhiyong2@naver.com');
COMMIT;

SELECT * FROM EMAILLIST;

DROP TABLE emaillist;
