
-- shohin2 create
create table shohin2
(shohin_id char(4) not null,
 shohin_mei varchar(100) not null,
 shohin_bunrui varchar(32) not null,
 hanbai_tanka integer ,
 shiire_tanka integer ,
 torokubi date ,
 primary key(shohin_id)
);
begin transaction;
insert into shohin2 values('0001','Tシャツ','衣服',1000,500,'2008-09-20');
insert into shohin2 values('0002','穴あけパンチ','事務用品',500,320,'2009-09-11');
insert into shohin2 values('0003','カッターシャツ','衣服',4000,2800,null);
insert into shohin2 values('0009','手袋','衣服',800,500,null);
insert into shohin2 values('0010','やかん','キッチン用品',2000,1700,'2009-09-20');
commit;

-- shohin create(from section1)
CREATE TABLE Shohin
(
    shohin_id   CHAR(4) NOT NULL,
    shohin_mei  VARCHAR(100)    NOT NULL,
    shohin_bunrui   VARCHAR(32) NOT NULL,
    hanbai_tanka    INTEGER ,
    shiire_tanka    INTEGER ,
    torokubi        DATE    ,
    PRIMARY KEY (shohin_id)
);
BEGIN TRANSACTION;
INSERT INTO shohin VALUES('0001', 'Tシャツ', '衣服', 1000, 500, '2009-09-20');
INSERT INTO shohin VALUES('0002', '穴あけパンチ', '事務用品', 500, 320, '2009-09-11');
INSERT INTO shohin VALUES('0003', 'カッターシャツ', '衣服', 4000, 2800, NULL);
INSERT INTO shohin VALUES('0004', 'フォーク', 'キッチン用品', 500, NULL, '2009-09-20');
COMMIT;

--union(または)
select shohin_id,shohin_mei
from shohin
union
select shohin_id,shohin_mei
from shohin2

--intersect(かつ)
select shohin_id,shohin_mei
from shohin
intersect
select shohin_id,shohin_mei
from shohin2

-- except(除集合)
select shohin_id,shohin_mei
from shohin
except
select shohin_id,shohin_mei
from shohin2

-- create table(tenpo shohin)
create table tenposhohin(
	tenpo_id	char(4)	not null,
	tenpo_mei	varchar(100)	not null,
	shohin_id	char(4) ,
	suryo	integer
);

-- primary key
ALTER TABLE tenposhohin ADD CONSTRAINT tenposhohin_key PRIMARY KEY(tenpo_id, shohin_id);

-- insert(tenpo shohin)
begin transaction;
insert into tenposhohin values('000A','東京','0001',30);
insert into tenposhohin values('000A','東京','0002',50);
insert into tenposhohin values('000B','名古屋','0002',30);
insert into tenposhohin values('000C','大阪','0003',20);
commit;

-- 内部結合
select ts.tenpo_id, ts.tenpo_mei, ts.shohin_id, s.shohin_mei, s.hanbai_tanka
from tenposhohin as ts inner join shohin as s
on ts.shohin_id = s.shohin_id
where ts.tenpo_id = '000A';

