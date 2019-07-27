CREATE VIEW ShohinSum(shohin_bunrui, cnt_shohin)
AS
SELECT shohin_bunrui, COUNT(*)
FROM shohin
GROUP　BY shohin_bunrui;