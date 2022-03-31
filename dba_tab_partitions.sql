=====dba_tab_partitions=====


set lines 300
set pages 100
col TABLE_NAME for a30
col TABLE_OWNER for a30
col TABLESPACE_NAME for a30
col PARTITION_NAME for a40
select TABLE_OWNER, TABLE_NAME, TABLESPACE_NAME, count (PARTITION_NAME) as "JUMLAH PARTISI"
from dba_tab_partitions
--where TABLE_OWNER='TABLE_OWNER' 
--and TABLE_OWNER = 'OWNER'
where TABLESPACE_NAME in ('TRACKINGSTREAM_022022','DELIVERYTRACKING_022022')
group by TABLE_OWNER, TABLE_NAME, TABLESPACE_NAME;


===cek detail===
set lines 300
col HIGH_VALUE for a35
col table_owner for a30
col table_name for a30
col partition_name for a30
select TABLE_OWNER, TABLE_NAME, PARTITION_NAME, HIGH_VALUE 
from DBA_TAB_PARTITIONS
where TABLESPACE_NAME='DELIVERYTRACKING_022022'
order by PARTITION_NAME desc;