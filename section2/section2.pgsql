-- show columns
SELECT shohin_id, shohin_mei, shiire_tanka
FROM shohin;

-- show all columns
SELECT *
FROM shohin;

-- AS
SELECT shohin_id AS "商品ID",
        shohin_mei AS "商品名",
        shiire_tanka AS "仕入単価"
FROM shohin;


-- const
SELECT '商品' AS "文字列",
    38 AS "数",
    '2009-09-24' AS "日付",
    shohin_id AS "商品ID"
FROM shohin;


-- distinct(重複を避ける)
SELECT DISTINCT shohin_bunrui
FROM shohin;

-- WHERE（条件）
SELECT shohin_mei, shohin_bunrui
FROM shohin
WHERE shohin_bunrui='衣服';

-- 計算式
SELECT shohin_mei, hanbai_tanka, hanbai_tanka*2 AS "販売単価*2"
FROM shohin;

SELECT shohin_mei, hanbai_tanka
FROM shohin
WHERE hanbai_tanka<>500;


-- NULL
SELECT shohin_mei, shiire_tanka
FROM shohin
WHERE shiire_tanka IS NULL;

-- NOT
SELECT shohin_mei, shiire_tanka
FROM shohin
WHERE NOT shiire_tanka > 1000

/*
SQLでは3値論理表(TRUE,FALSE,UNKNOWN)が用いられる!
UNKNOWN-->NULLに一般の(IS NULL以外の)条件判定をさせた場合に現れる
*/

