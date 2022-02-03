-- VIEW > 테이블을 다양한 관점으로 볼 수 있게
CREATE VIEW books_view AS
	SELECT title AS 제목, price AS 가격, A.name AS "저자 이름", A.email AS 이메일, C.name AS "출판사 이름", C.location AS 위치 
	FROM author AS A
	LEFT JOIN books AS B ON A.num = B.booknum
	LEFT JOIN publisher AS C ON C.num = B.lonum;
    
SELECT * FROM books_view;
