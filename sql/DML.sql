

-- customer TABLE 데이터 삽입
INSERT INTO CUSTOMER VALUES('json192', 'json1', 'Jackson');
INSERT INTO CUSTOMER VALUES('jessiee', 'jessi2', 'Jessica');
INSERT INTO CUSTOMER VALUES('danie123', 'danie3', 'Daniel');
INSERT INTO CUSTOMER VALUES('judy098', 'july678', 'Judy');
COMMIT;

-- ORDER_LIST TABLE 데이터 삽입
INSERT INTO ORDER_LIST VALUES(order_list_seq.NEXTVAL, 'A', 5000, SYSDATE );


-- ITEM TABLE 데이터 삽입
INSERT INTO ITEM values (item_seq.nextval, '사과', 1000, 10);


-- ORDER ITEM TABLE 데이터 삽입
INSERT INTO ORDER_ITEM VALUES(order_item_seq.NEXTVAL, 1, 1, 5, 5000);