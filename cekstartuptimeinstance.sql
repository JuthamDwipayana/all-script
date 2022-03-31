set lines 200;
select instance_name,status,to_char (startup_time,'dd-mon-yyyy hh24:mi:ss') from gv$instance order by instance_name;


---
GRANT UPDATE ON "PROAPP"."TBAUTO_REQUEST" TO "PROL1"

GRANT UPDATE ON PROAPP.TBAP_PRICE_PLAN TO PROL1;
GRANT UPDATE ON PROAPP.TBAP_ITEM TO PROL1:


set lines 300
set lines 300
col segment_name for a35
col owner for a35
select  a.owner, a.tablespace_name, a.segment_type, b.segment_name,b.table_name,sum(bytes/1024/1024) MB 
from dba_segments a, dba_lobs b
where a.segment_name=b.segment_name
and b.segment_name = ‘TBAP_PRICE_PLAN’
--and a.segment_type in ('LOBSEGMENT')
group by a.owner, a.tablespace_name, b.segment_name, a.segment_type, b.table_name
order by a.segment_type, b.segment_name;