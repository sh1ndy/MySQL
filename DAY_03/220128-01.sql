USE my_db;
-- 애완동물 펫호텔
-- 주인 이름 전화번호, 펫 이름, 나이, 종
CREATE TABLE owners (
	-- AUTO_INCREMENT row가 새로 생성될 때마다 고유의 번호 1부터 하나씩 생성해줌
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(10) NOT NULL,
    phoneNumber VARCHAR(20) NOT NULL
);

CREATE TABLE pets (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(10) NOT NULL,
    age INT NOT NULL,
    spec VARCHAR(20) NOT NULL,
    ownerId INT,
    -- 외래키 ownerId 는 owners 테이블의 id를 참조하고있다.
    FOREIGN KEY (ownerId) REFERENCES owners(id)
);

DESC owners;
DESC pets;

-- owners 테이블의 필드 값 설정
INSERT INTO owners (name, phoneNumber) VALUES ("이순신", "010-0000");
INSERT INTO owners (name, phoneNumber) VALUES ("김유신", "010-1111");
INSERT INTO owners (name, phoneNumber) VALUES ("연개소문", "010-2222");
SELECT * FROM owners;

-- pets 테이블의 필드 값 설정
INSERT INTO pets (name, age, spec, ownerId) VALUES ("사과", 3, "진돗개", 1);
INSERT INTO pets (name, age, spec, ownerId) VALUES ("포도", 2, "삽살개", 2);
INSERT INTO pets (name, age, spec, ownerId) VALUES ("자몽", 4, "진돗개", 1);
INSERT INTO pets (name, age, spec, ownerId) VALUES ("수박", 5, "포메라니안", 3);
SELECT * FROM pets;
