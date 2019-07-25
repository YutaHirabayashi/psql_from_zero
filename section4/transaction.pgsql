-- BEGIN TRANSACTION -> COMMIT まではひとまとまりの処理

BEGIN TRANSACTION;

UPDATE shohin
SET hanbai_tanka = hanbai_tanka - 1000
WHERE shohin_mei = 'カッターシャツ';

UPDATE shohin
SET hanbai_tanka = hanbai_tanka + 1000
WHERE shohin_mei = 'Tシャツ';

COMMIT;



