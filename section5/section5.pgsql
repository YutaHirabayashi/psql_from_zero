-- VIEW
SELECT shohin_bunrui, cnt_shohin
FROM ShohinSum;

-- サブクエリ
SELECT shohin_bunrui, cnt_shohin
FROM (
    SELECT shohin_bunrui, COUNT(*) AS cnt_shohin
    FROM shohin
    GROUP BY shohin_bunrui
    ) AS ShohinSum;

-- スカラサブクエリ
SELECT shohin_id, shohin_mei, hanbai_tanka
FROM shohin
WHERE hanbai_tanka>(
    SELECT AVG(hanbai_tanka)
    FROM shohin
    );

SELECT shohin_id, (
    SELECT AVG(hanbai_tanka)
    FROM shohin
) AS avg
FROM shohin;

-- 相関サブクエリ
SELECT shohin_bunrui, hanbai_tanka
FROM shohin AS S1
WHERE hanbai_tanka > (
    SELECT AVG(hanbai_tanka)
    FROM shohin AS S2
    WHERE S1.shohin_bunrui=S2.shohin_bunrui
    GROUP BY shohin_bunrui
)