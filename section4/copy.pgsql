INSERT INTO ShohinCopy(
    shohin_id, shohin_mei, shohin_bunrui,
    hanbai_tanka, shiire_tanka, torokubi
)
SELECT shohin_id, shohin_mei, shohin_bunrui,
hanbai_tanka, shiire_tanka, torokubi
FROM shohin;


-- SELECT文にはWHERE,HAVINGも使える！（集約でーたをコピーしてTableにできる）