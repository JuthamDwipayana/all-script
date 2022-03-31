---cek size segment tbs pake KB--

set linesize 300
set pagesize 999
col segment_name format a35
col owner format a20
col tablespace_name format a30
select * from ( select owner, segment_name, segment_type, tablespace_name, round(sum(bytes/1024),2) KB 
from dba_segments group by segment_name, owner, segment_type, tablespace_name order by 5 desc ) 
where tablespace_name='CI_DATA_LAKE'
order by tablespace_name;


=====--cek size tbs pake MB---========
select   ddf.TABLESPACE_NAME "TABLESPACE",
       ddf.MAXBYTES "MAXSIZE (MB)",
       (ddf.BYTES - dfs.bytes) "USED (MB)",
       ddf.MAXBYTES-(ddf.BYTES - dfs.bytes) "FREE (MB)",
       round(((ddf.BYTES - dfs.BYTES)/ddf.MAXBYTES)*100,2) "% USED"
  from    (select TABLESPACE_NAME,
       round(sum(BYTES)/1024/1024,2) bytes,
       round(sum(decode(autoextensible,'NO',BYTES,MAXBYTES))/1024/1024,2) maxbytes
       from   dba_data_files
       group  by TABLESPACE_NAME) ddf,
      (select TABLESPACE_NAME,
          round(sum(BYTES)/1024/1024,2) bytes
       from   dba_free_space
       group  by TABLESPACE_NAME) dfs
  where    ddf.TABLESPACE_NAME=dfs.TABLESPACE_NAME
  and  ddf.TABLESPACE_NAME in ('TBS_ESBSVOC','TBS_SCV_PP') order by 1 DESC;
 
  --------------------------------------------------------
  ------CEK TBS TEMP------------
  
  SELECT A.tablespace_name tablespace, D.mb_total,
    SUM (A.used_blocks * D.block_size) / 1024 / 1024 mb_used,
    D.mb_total - SUM (A.used_blocks * D.block_size) / 1024 / 1024 mb_free
   FROM v$sort_segment A,
    (
   SELECT B.name, C.block_size, SUM (C.bytes) / 1024 / 1024 mb_total
    FROM v$tablespace B, v$tempfile C
     WHERE B.ts#= C.ts#
      GROUP BY B.name, C.block_size) D
    WHERE A.tablespace_name = D.name
    GROUP by A.tablespace_name, D.mb_total;
  --------------------------------------------------------
  
  select   ddf.TABLESPACE_NAME "TABLESPACE",
       ddf.MAXBYTES "MAXSIZE (MB)",
       (ddf.BYTES - dfs.bytes) "USED (MB)",
       ddf.MAXBYTES-(ddf.BYTES - dfs.bytes) "FREE (MB)",
       round(((ddf.BYTES - dfs.BYTES)/ddf.MAXBYTES)*100,2) "% USED"
  from    (select TABLESPACE_NAME,
       round(sum(BYTES)/1024/1024,2) bytes,
       round(sum(decode(autoextensible,'NO',BYTES,MAXBYTES))/1024/1024,2) maxbytes
       from   dba_data_files
       group  by TABLESPACE_NAME) ddf,
      (select TABLESPACE_NAME,
          round(sum(BYTES)/1024/1024,2) bytes
       from   dba_free_space
       group  by TABLESPACE_NAME) dfs
  where    ddf.TABLESPACE_NAME=dfs.TABLESPACE_NAME
  and  ddf.TABLESPACE_NAME in ('CCM_DATA') order by 1 DESC;  
  
  ---

  
  alter tablespace TLOB_AEI_P201509_4K autoextend on next 100M maxsize 100G;


==================
--cek datafile--

COL status A30
COL FILE_NAME FOR A30
COL TABLESPACE_NAME FOR A30
COL AUTOEXTENSIBLE FOR A30
SET LINESIZE 300
select status,file_name, tablespace_name,autoextensible
from dba_data_files
where tablespace_name = 'TBS_PART_TBL_POIN_202203';

=======---CEK STATUS TBS---
Select status, tablespace_name
from DBA_TABLESPACES where tablespace_name like '%TRACK%';
select tablespace_name, status from dba_tablespaces where status ='ONLINE';
======

----CEK STATUS TBS BIGFILE OR NOT!----
select tablespace_name,bigfile from dba_tablespaces where tablespace_name ='TLOB_ACLINFO_P201505_2K';
--------

select tablespace_name from dba_tablespaces where status ='READ ONLY';
select status from dba_tablespaces where tablespace_name ='ci_audit';
STATUS COLUMN IN DBA_TABLESPACES FLAG FOR ONLINE,OFFLINE,READ ONLY.

alter tablespace TBS_PART_TBL_POIN_202203 add datafile '+DATA1' size 100M autoextend on next 512M maxsize 30G;
alter tablespace TS_IDX_TRX_2022Q1Q2 add datafile '+DATAC1' size 100M autoextend on next 512M maxsize 30G;

alter tablespace TBS_FTPAUDIT add datafile '+DATAC4' size 100M autoextend on next 512M maxsize 10G;

alter tablespace TB_LOAN add datafile '+DATAC5' size 100M autoextend on next 512M maxsize 30G;
alter tablespace TB_LOAN add datafile '+DATAC5' size 100M autoextend on next 512M maxsize 30G;
alter tablespace TB_LOAN add datafile '+DATAC5' size 100M autoextend on next 512M maxsize 30G;
alter tablespace TB_LOAN add datafile '+DATAC5' size 100M autoextend on next 512M maxsize 10G;

alter tablespace TBS_PART_TBL_POIN_202201 add datafile '+DATA1' size 100M autoextend on next 512M maxsize 30G;


--===SEGMENTset linesize 200 ---------------------------------------
  set linesize 200  
  col table_name for a32  
  col owner for a32  
  col tablespace_name for a32  
  select owner,tablespace_name,sum(bytes/1024/1024) MB   
  from dba_segments where owner in ('APPS')
  group by owner,tablespace_name;
  ====
   set linesize 200  
  col owner for a32   
  col segment_name for a32   
  select owner,sum(bytes/1024/1024) MB   
  from dba_segments where owner in ('TELKOMSEL')
  group by owner;
  =====
  -----CEK TOP OBJECT--------
  set linesize 200  
  col segment_type for a32  
  col owner for a32  
  col tablespace_name for a32
  col segment_name for a32
  select owner, tablespace_name, segment_type, segment_name, sum(bytes/1024/1024) MB   
  from dba_segments where tablespace_name in ('CCM_DATA')
  group by owner,segment_type,tablespace_name, segment_name;
  -======--CEK LOB----
 set linesize 800  
  col owner for a32  
  col segment_name for a32  
  col segment_type for a32  
  col tablespace_name for a32  
  select owner, tablespace_name, segment_type, segment_name,sum(bytes/1024/1024) MB   
  from dba_segments where segment_name in ('PENDING_TASK')
  --and owner='PROAPPNFT'
  --where tablespace_name in ('TLOB_ACLINFO_P201505_2K')
  group by owner,segment_name,tablespace_name, segment_type;
  =======
  set linesize 800  
  col owner for a32  
  col segment_name for a32  
  col table_name_type for a32  
  select owner,table_name,segment_name 
  from dba_lobs where table_name in ('PRO_PAYLOAD_V3')
  --where tablespace_name in ('TLOB_ACLINFO_P201505_2K')
  group by owner,segment_name,table_name;
  
  ===
set lines 300
set lines 300
col segment_name for a35
col owner for a35
select  a.owner, a.tablespace_name, a.segment_type, b.segment_name,b.table_name,sum(bytes/1024/1024) MB 
from dba_segments a, dba_lobs b
where a.segment_name=b.segment_name
and b.segment_name in ('SYS_LOB0000294492C00004$$','SYS_LOB0000310596C00004$$')
--and a.segment_type in ('LOB PARTITION')
group by a.owner, a.tablespace_name, b.segment_name, a.segment_type, b.table_name
order by a.segment_type, b.segment_name;
  
  ===
  set linesize 800  
  col table_name for a32  
  col owner for a32  
  col tablespace_name for a32  
  select owner,segment_name,tablespace_name,sum(bytes/1024/1024) MB   
  from dba_segments where owner in ('LOAN')
  group by owner,segment_name,tablespace_name;
  
  
  ====
  Select owner,object_name, object_type from dba_objects where owner like 'TELKOMSEL';
  --
set linesize 300
col owner for a30
col object_name for a40
col object_type for a40
select owner,object_name,object_type,status,CREATED,LAST_DDL_TIME 
from dba_objects where object_name in ('ROLE');

AAUTH_USERS, AAUTH_USER_TO_GROUP, AAUTH_GROUPS
  
  ---cek size per each PARTITION------------------------------------------
 col segment_name for a32 
  col owner for a32 
  col tablespace_name for a32 
  col partition_name for a32 
  SET LINESIZE 300
select
    owner,
    segment_name,
	tablespace_name
    partition_name
from
    dba_tab_partitions
where
    PARTITION_NAME = 'CMS_DELIVERYTRACKING'; 
	------
  select owner,segment_name,segment_type, tablespace_name, PARTITION_NAME,sum(bytes)/1024/1024/1024 GB from dba_segments where SEGMENT_NAME=upper('CAMPAIGN_TRACKING') and PARTITION_NAME=upper('CMS_DELIVERYTRACKING') group by owner,segment_name,segment_type,tablespace_name, PARTITION_NAME;
  
  
  
  ----
  ---Kalo ke tbs kasihnya quota unlimited
  ALTER USER xxxx QUOTA UNLIMITED ON (yyyy) ;
  
  
  ----default tbs------------------------------------------------------

COL username FOR A30
COL deafult_tablespace FOR A30
COL account_status FOR A30
SET LINESIZE 300
Select username, default_tablespace, account_status from dba_users where USERNAME='TELKOMSEL';

----DATAFILES------------------------------------------------
Select status,file_name, tablespace_name,autoextensible 
From dba_data_files 
Where tablespace_name = 'DATA_TABLES';


---
alter tablespace DATA_TABLES add datafile '+DATAC4' size 100M autoextend on next 512M maxsize 30G;
alter tablespace TBS_SETUP_IDX add datafile '+DATAC4' size 100M autoextend on next 512M maxsize 10G;
alter tablespace TBS_PART_TBL_POIN_202111 add datafile '+DATA1' size 100M autoextend on next 100M maxsize 30G;
alter tablespace DT_RATEDATA_202111 add datafile '+DATAC5' size 100M autoextend on next 100M maxsize 30G;
---
alter tablespace SYSTEM autoextend on next 100M maxsize 800G;

------------------------------------


set linesize 200  
  col table_name for a32  
  col owner for a32  
  col tablespace_name for a32  
  select owner,table_name,tablespace_name  
  from dba_tab_partitions where table_name in ('ACTIVE_OFFER_SPEC')
  group by owner,table_name,tablespace_name;
  
  ========
 --Cek size table include index

COLUMN TABLE_NAME FORMAT A32
COLUMN OBJECT_NAME FORMAT A32
COLUMN OWNER FORMAT A20

SELECT
   owner, 
   table_name, 
   TRUNC(sum(bytes)/1024/1024) Meg,
   ROUND( ratio_to_report( sum(bytes) ) over () * 100) Percent
FROM
(SELECT segment_name table_name, owner, bytes
 FROM dba_segments
 WHERE segment_type IN ('TABLE', 'TABLE PARTITION', 'TABLE SUBPARTITION')
 UNION ALL
 SELECT i.table_name, i.owner, s.bytes
 FROM dba_indexes i, dba_segments s
 WHERE s.segment_name = i.index_name
 AND   s.owner = i.owner
 AND   s.segment_type IN ('INDEX', 'INDEX PARTITION', 'INDEX SUBPARTITION')
 UNION ALL
 SELECT l.table_name, l.owner, s.bytes
 FROM dba_lobs l, dba_segments s
 WHERE s.segment_name = l.segment_name
 AND   s.owner = l.owner
 AND   s.segment_type IN ('LOBSEGMENT', 'LOB PARTITION')
 UNION ALL
 SELECT l.table_name, l.owner, s.bytes
 FROM dba_lobs l, dba_segments s
 WHERE s.segment_name = l.index_name
 AND   s.owner = l.owner
 AND   s.segment_type = 'LOBINDEX')
--WHERE owner = 'PESACN_ADMIN'
AND table_name in (
'TLOB_ACLINFO_P201504_2K'
)
GROUP BY table_name, owner
HAVING SUM(bytes)/1024/1024 > 1  /* Ignore really small tables */
ORDER BY SUM(bytes) desc;


==== 
 
alter tablespace ARSYSTEM add datafile '+DATA1' size 1G autoextend on next 1G maxsize 30G; 
alter tablespace ARSYSTEM add datafile '+DATA1' size 1G autoextend on next 1G maxsize 30G; 
alter tablespace ARSYSTEM add datafile '+DATA1' size 1G autoextend on next 1G maxsize 30G; 
alter tablespace ARSYSTEM add datafile '+DATA1' size 1G autoextend on next 1G maxsize 30G; 
alter tablespace ARSYSTEM add datafile '+DATA1' size 1G autoextend on next 1G maxsize 30G; 
alter tablespace ARSYSTEM add datafile '+DATA1' size 1G autoextend on next 1G maxsize 30G; 
alter tablespace ARSYSTEM add datafile '+DATA1' size 1G autoextend on next 1G maxsize 30G; 
alter tablespace ARSYSTEM add datafile '+DATA1' size 1G autoextend on next 1G maxsize 30G; 
alter tablespace ARSYSTEM add datafile '+DATA1' size 1G autoextend on next 1G maxsize 30G; 


grant select on loan.production_klop_ip_scoring to LOAN_READ;

====
  Path: /datadump8/opbibsd/dump
nohup expdp \'/ as sysdba\' DIRECTORY=DUMP_BI dumpfile=RECORD_SET_STAT_18012022_%U.dmp logfile=RECORD_SET_STAT_18012022.log tables=FTPAUDIT.RECORD_SET_STAT:SYS_P69705 parallel=4 &

tailf RECORD_SET_STAT_18012022.log

----

explain plan for UPDATE DOM.ACTIVE_OFFER_SPEC SET ST_CD = 4, LAST_UPDATED_DT=CURRENT_TIMESTAMP, LAST_UPDATED_BY=:B1 WHERE
TRANSACTION_ID IN (SELECT ACTIVE_OFFER.TRANSACTION_ID FROM ACTIVE_OFFER
INNER JOIN ACTIVE_OFFER_SPEC ON ACTIVE_OFFER.TRANSACTION_ID =
ACTIVE_OFFER_SPEC.TRANSACTION_ID AND ACTIVE_OFFER.MSISDN =
ACTIVE_OFFER_SPEC.MSISDN WHERE ACTIVE_OFFER.MSISDN=:B4 AND
ACTIVE_OFFER.OFFER_ID=:B3 AND ACTIVE_OFFER.ST_CD=4 AND
ACTIVE_OFFER.SUBSCRIPTION_FLAG=:B2 AND ACTIVE_OFFER.IS_CORP!='1');