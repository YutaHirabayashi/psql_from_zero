BEGIN TRANSACTION;
INSERT INTO shohin VALUES(
    '0001', 'Tシャツ', '衣服', 1000, 500, '2009-09-20'
);
INSERT INTO shohin VALUES(
    '0002', '穴あけパンチ', '事務用品', 500, 320, '2009-09-11'
);
INSERT INTO shohin VALUES(
        '0003', 'カッターシャツ', '衣服', 4000, 2800, NULL
);

INSERT INTO shohin VALUES(
    '0004', 'フォーク', 'キッチン用品', 500, NULL, '2009-09-20'
);

COMMIT;