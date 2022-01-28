-- 한명의 주인이 여러 동물을 보유할 때
SELECT * 
FROM owners AS A
LEFT JOIN pets AS B ON A.id = B.ownerId;
