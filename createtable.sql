CREATE TABLE SCHEMA.NAMA_TABLE
TABLESPACE DEFINE_TABLESPACE
AS
SELECT * QUERY SELECT NYA





SELECT sum(bytes)
  FROM dba_segments
 WHERE owner = 'cpssys';
 
 
----longoops--- 
set lines 500
set pages 500
COLUMN sid FORMAT 9999
COLUMN serial# FORMAT 9999999
COLUMN machine FORMAT A32
COLUMN progress_pct FORMAT 99999999.00
COLUMN elapsed FORMAT A10
COLUMN remaining FORMAT A10
col MESSAGE for a95

SELECT s.sid,
       s.serial#,
       s.machine,
     sl.message,
       ROUND(sl.elapsed_seconds/60) || ':' || MOD(sl.elapsed_seconds,60) elapsed,
       ROUND(sl.time_remaining/60) || ':' || MOD(sl.time_remaining,60) remaining,
       ROUND(sl.sofar/sl.totalwork*100, 2) progress_pct
FROM   gv$session s,
       gv$session_longops sl
WHERE  s.sid     = sl.sid
AND    s.serial# = sl.serial#
and sl.totalwork>sl.sofar;
----
col owner for a6
col segment_name for a26
select * from
(select owner,segment_name||'~'||partition_name segment_name,segment_type,bytes/(1024*1024) size_m
from dba_segments
ORDER BY BLOCKS desc) where rownum < 11;

--
  col segment_name for a32 
  col owner for a32 
  col tablespace_name for a32 
  select owner,segment_name,segment_type,tablespace_name,sum(bytes/1024/1024) MB  
  from dba_segments where tablespace_name='COPR_E2E' 
  group by owner,segment_name,segment_type,tablespace_name order by 5 asc;
  
  ---lob SEGMENT
set lines 300
set lines 300
col segment_name for a35
col owner for a35
  SELECT owner, b.tablespace_name, a.segment_type,table_name, column_name, segment_name, bytes/1024/1024 MB  FROM dba_segments a JOIN dba_lobs b USING (owner, segment_name) WHERE 
 b.table_name = 'ACTIVE_OFFER';
 --and b.tablespace_name='FOM_OMS_PRD_P12'
 --and owner in ('PESACN_ADMIN');
 -----
 set lines 300
set lines 300
col segment_name for a35
col owner for a35
  SELECT owner, b.tablespace_name, a.segment_type, table_name, column_name, segment_name, bytes/1024/1024 MB  FROM dba_segments WHERE 
 table_name = 'ACTIVE_OFFER';
 --and b.tablespace_name='FOM_OMS_PRD_P12'
 --and owner in ('PESACN_ADMIN');
--
set lines 300
set lines 300
col segment_name for a35
col owner for a35
select  a.owner, a.tablespace_name, a.segment_type, b.segment_name,b.table_name,sum(bytes/1024/1024) MB 
from dba_segments a, dba_lobs b
where a.segment_name=b.segment_name
--and a.owner in ('PESACN_ADMIN)
--and a.segment_type in ('LOBSEGMENT')
group by a.owner, a.tablespace_name, b.segment_name, a.segment_type, b.table_name
order by a.segment_type, b.segment_name;

---
SELECT owner, table_name, column_name, segment_name, bytes/1024/1024 MB  FROM dba_segments a JOIN dba_lobs b USING (owner, segment_name) WHERE 
  b.table_name in  ('TRANSACTION_MANAGER') and owner='PESACN_ADMIN';
  
  
  ---
  set lines 300
set lines 300
col segment_name for a35
col owner for a35
select  a.owner, a.tablespace_name, a.segment_type, b.segment_name,b.table_name,sum(bytes/1024/1024) MB from dba_segments a, dba_lobs b
where a.segment_name=b.segment_name
and b.segment_name = ‘TRANSACTION_MANAGER’
and a.segment_type in ('LOBSEGMENT')
group by a.owner, a.tablespace_name, b.segment_name, a.segment_type, b.table_name
order by a.segment_type, b.segment_name;


---CEK TABLE/SEGMENT NAME--- kalo mau isi size tbs nya
set linesize 200  
  col segment_name for a32  
  col owner for a32  
  col tablespace_name for a32  
  select owner,segment_name,tablespace_name,sum(bytes/1024/1024) MB   
  from dba_segments where segment_name='ACTIVE_OFFER'  
  group by owner,segment_name,tablespace_name order by 5 asc;
  
  
 