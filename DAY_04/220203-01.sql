-- 작은 것들을 위한 시 15300 나태주 slothzoo@email.com

INSERT INTO author (name, email) VALUES ("나태주", "slothzoo@email.com");

SELECT LAST_INSERT_ID();

SELECT * FROM author;
SELECT * FROM books;

-- 변수 (@) : 접속을 유지하는 동안 존재함.
SET @id_var := (SELECT LAST_INSERT_ID());
SELECT @id_var;

INSERT INTO books (title, price, booknum) VALUES ("작은 것들을 위한 시", 15300, @id_var);

SELECT * FROM books;
