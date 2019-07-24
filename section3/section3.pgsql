SELECT COUNT(shiire_tanka) --NULLは除外
FROM Shohin;

SELECT COUNT(*) --NULLも含む
FROM shohin;

SELECT SUM(shiire_tanka) AS "仕入計", SUM(hanbai_tanka) AS "販売計"
FROM shohin;

SELECT MAX(torokubi),MIN(torokubi)
FROM shohin;

--重複をのぞいてcount
SELECT COUNT(DISTINCT shohin_bunrui)
FROM shohin;

SELECT shohin_bunrui, COUNT(*)
FROM shohin
GROUP BY shohin_bunrui;

--GROUP BYに指定したcolumnにNULLがある場合->NULLのグループができる
SELECT shiire_tanka, COUNT(*)
FROM shohin
GROUP BY shiire_tanka;

-- WHERE+GROUP BY
SELECT shiire_tanka,COUNT(*)
FROM shohin
WHERE shohin_bunrui='衣服'
GROUP BY shiire_tanka;

/*集約関数(COUNTとか)を使う場合、SELECTには以下の３つしかかけない
- 定数
- 集約関数
- GROUP BY で指定したキー
*/

-- HAVING:グループ(行数:COUNTとか平均:AVGとか)に対する条件指定
-- 行数が2の分類を出力する
SELECT shohin_bunrui,COUNT(*)
FROM shohin
GROUP BY shohin_bunrui
HAVING COUNT(*)=2;

SELECT shohin_bunrui, AVG(hanbai_tanka)
FROM shohin
GROUP BY shohin_bunrui
HAVING AVG(hanbai_tanka)>=2000;

SELECT shohin_id, shohin_mei, hanbai_tanka
FROM shohin
ORDER BY hanbai_tanka DESC, shohin_id ASC;

-- NULLは先頭もしくは末尾にまとめられる

SELECT shohin_bunrui, COUNT(*)
FROM shohin
GROUP BY shohin_bunrui
ORDER BY COUNT(*)
