DROP TABLE CUSTOMER;
DROP TABLE ORDER_LIST;
DROP TABLE ITEM;
DROP TABLE ORDER_ITEM;
SELECT * FROM  CUSTOMER;
SELECT * FROM  ORDER_LIST;
SELECT * FROM  ITEM;
SELECT * FROM  ORDER_ITEM;
-- =================================customer TABLE==============================================
CREATE TABLE CUSTOMER(
    customer_id         VARCHAR2(20)    NOT NULL,
    customer_pw         VARCHAR2(20)    NOT NULL,
    customer_name       VARCHAR(20)     NOT NULL,
    CONSTRAINT customer_pk PRIMARY KEY (customer_id)
    );
-- customer TABLE 데이터 삽입
INSERT INTO CUSTOMER VALUES('A', '000000', 'KIM');
-- ================================ORDER_LIST TABLE==============================================
CREATE SEQUENCE order_list_seq increment by 1 start with 1;
CREATE TABLE ORDER_LIST (
       order_list_id        NUMBER          NOT NULL,
       customer_id              VARCHAR2(20)    NOT NULL,
       total_price          NUMBER          NOT NULL,
       order_date           DATE            NOT NULL,
       CONSTRAINT order_list_pk PRIMARY KEY(order_list_id),
       CONSTRAINT list_customer_fk FOREIGN KEY (customer_id) REFERENCES CUSTOMER(customer_id)ON DELETE CASCADE
);
-- ORDER_LIST TABLE 데이터 삽입
INSERT INTO ORDER_LIST VALUES(order_list_seq.NEXTVAL, 'A', 5000, SYSDATE );
-- ================================= ITEM TABLE==============================================
CREATE SEQUENCE item_seq increment by 1 start with 1;
CREATE TABLE ITEM(
    item_id         NUMBER          NOT NULL,
    item_name       VARCHAR2(20)    NOT NULL,
    price           NUMBER          NOT NULL,
    item_remain     NUMBER          NOT NULL,
    CONSTRAINT item_pk PRIMARY KEY (item_id)
);
-- ITEM TABLE 데이터 삽입
INSERT INTO ITEM values (item_seq.nextval, '사과', 1000, 10);
-- =================================ORDER_ITEM TABLE==============================================
CREATE SEQUENCE order_item_seq increment by 1 start with 1;
CREATE TABLE ORDER_ITEM(
    order_item_id       NUMBER      NOT NULL,
    order_list_id       NUMBER      NOT NULL,
    item_id             NUMBER      NOT NULL,
    quantity            NUMBER      NOT NULL,
    price               NUMBER     NOT NULL,
    CONSTRAINT order_item_pk PRIMARY KEY(order_item_id),
    CONSTRAINT order_item_list_fk FOREIGN KEY (order_list_id) REFERENCES ORDER_LIST(order_list_id)ON DELETE CASCADE,
    CONSTRAINT order_item_item_fk FOREIGN KEY (item_id) REFERENCES ITEM(item_id)ON DELETE CASCADE
);
-- TEST TABLE 데이터 삽입
INSERT INTO ORDER_ITEM VALUES(order_item_seq.NEXTVAL, 1, 1, 5, 5000);