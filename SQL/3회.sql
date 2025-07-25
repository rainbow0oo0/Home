-- 날짜 : 2025/07/21
-- 이름 : 이준우
-- 내용 : 3회 타자 연습 

// 1-3 까지 생략
SELECT * FROM PRODUCT;
SELECT CID, NAME, HP FROM CUSTOMER;
SELECT * FROM CUSTOMER;
SELECT DISTINCT COMPANY FROM PRODUCT;
SELECT PNAME, PRICE FROM PRODUCT;
SELECT PNAME, PRICE + 500 AS 조정단가 FROM PRODUCT;
SELECT PNAME, STOCK, PRICE FROM PRODUCT WHERE COMPANY='오리온';
SELECT ORD_PNO, ORD_CNT, ORD_DATE FROM ORDERS WHERE ORD_CID='c102';

SELECT ORD_PNO, ORD_CNT, ORD_DATE FROM ORDERS WHERE ORD_CID='c102'
AND ORD_CNT >= 2;
SELECT CID, NAME, HP, ADDRESS FROM CUSTOMER WHERE NAME LIKE '김%';
SELECT CID, NAME, HP, ADDRESS FROM CUSTOMER WHERE NAME LIKE '__';
SELECT * FROM CUSTOMER WHERE HP IS NULL;
SELECT * FROM CUSTOMER WHERE ADDRESS IS NOT NULL;
SELECT * FROM CUSTOMER ORDER BY RDATE DESC;
SELECT * FROM ORDERS WHERE ORD_CNT >=3 ORDER BY ORD_CNT DESC, ORD_PNO ASC;
SELECT AVG(PRICE) FROM PRODUCT;
SELECT SUM(STOCK) AS "재고량 합계" FROM PRODUCT WHERE COMPANY = '농심';
SELECT COUNT(*) AS 고객수 FROM CUSTOMER;
SELECT COUNT(DISTINCT COMPANY) AS "제조업체 수" FROM PRODUCT;

SELECT ORD_PNO AS "주문상품 번호", SUM(ORD_CNT) AS "총 주문 수량"
FROM ORDERS GROUP BY ORD_PNO ORDER BY ORD_PNO ASC;

SELECT COMPANY AS 제조업체, COUNT(*) AS 제품수, MAX(PRICE) AS 최고가
FROM PRODUCT GROUP BY COMPANY ORDER BY COMPANY ASC;

SELECT COMPANY AS 제조업체, COUNT(*) AS 제품수, MAX(PRICE) AS 최고가
FROM PRODUCT GROUP BY COMPANY HAVING COUNT(*) >=2;

SELECT ORD_PNO ORD_CID, SUM(ORD_CNT) AS "총 주문수량" FROM ORDERS
GROUP BY ORD_PNO, ORD_CID ORDER BY ORD_PNO;

SELECT ORD_CID, PNAME FROM ORDERS A JOIN PRODUCT B
ON A.ORD_PNO = B.PNO WHERE ORD_CID = 'c102';


SELECT ORD_CID, NAME, PNAME, ORD_DATE FROM ORDERS A
JOIN CUSTOMER B ON A.ORD_CID = B.CID
JOIN PRODUCT C ON A.ORD_PNO = C.PNO
WHERE TO_CHAR(ord_date, 'YYYY-MM-DD') = '2022-07-03';
// WHERE SUBSTR(ORD_DATE, 1, 10) = '2022-07-03';
