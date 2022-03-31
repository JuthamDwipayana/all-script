--Check INDEX
set linesize 200
set pagesize 200
col index_name for a30
col table_name for a30
select owner,table_name,index_name, status,TABLESPACE_NAME
from dba_indexes 
where index_name in 
(
'SYS_C0010456'
)
order by 2 desc;

SYS_C0010456


select INDEX_OWNER, INDEX_NAME, count(PARTITION_NAME)
from dba_ind_partitions 
where INDEX_NAME in (
'IDX_PAYLOAD_MSISDN',
'PK_PAYLOAD',
'IDX_PAYLOAD_STCD_RETRY',
'SYS_IL0000109303C00005$$',
'PK_PAYLOAD',
'IDX_PAYLOAD_STCD_RETRY',
'SYS_IL0000112279C00005$$')
group by INDEX_OWNER, INDEX_NAME, PARTITION_NAME
;



------------------------------------------------------------------------------------------------------------------------------------------------------
COLUMN TABLE_NAME FORMAT A32
COLUMN OBJECT_NAME FORMAT A32
COLUMN OWNER FORMAT A10

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
WHERE owner in UPPER('&owner')
WHERE table_name in UPPER('&table_name')
GROUP BY table_name, owner
HAVING SUM(bytes)/1024/1024 > 10  /* Ignore really small tables */
ORDER BY SUM(bytes) desc
;

------------------------------------------------------------------------------------------------------------------------------------------------------

--Check INDEX COLUMN
set lines 200
col table_owner for a30
col table_name for a30
col index_name for a30
col column_name for a30
select table_owner, table_name, index_name, column_name
from dba_ind_columns 
where TABLE_NAME in ('KPI_REVENUE_2')
;


ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MON-YYYY HH24:MI:SS';
select created from dba_objects where object_type = 'INDEX' and object_name='TRX_NO_TCASH_REQ_IDX';



------------------------------------------------------------------------------------------------------------------------------------------------------

--Check SIZE INDEX
select owner,index_type,index_name,bytes/1024/1024 "MB" 
from dba_indexes 
where table_name='IDX_RS_CT';
group by??

kalu tak bisa, Check nya pake top object ajaa wkwkwk






------------------------------------------------------------------------------------------------------------------------------------------------------


--Check INDEX UNUSABLE
select owner, index_name, status from dba_indexes 
where status like '%USABLE%';
and TABLE_NAME='VW_ERIN '
;

select table_name, owner, index_name, status 
from dba_indexes 
where table_name in ('TABLE_INTRXN_P1',
'TABLE_INTRXN_J1',
'TABLE_INTRXN_U1',
'TABLE_INTRXN_P2',
'TABLE_CASE_U1')
;

select table_name, index_name,index_type,tablespace_name,status, index_type from DBA_INDEXES where status='UNUSABLE';

4. Check USABLE

#ind_partition:
select index_owner,index_name,partition_name, tablespace_name,status from dba_ind_partitions where status ='UNUSABLE';

#index:
select OWNER, index_name,index_type,tablespace_name,status, index_type from dba_indexes where status='UNUSABLE';

#Index subpartitions:
select index_owner, index_name, partition_name, subpartition_name, tablespace_name from dba_ind_subpartitions where  status = 'UNUSABLE';

------------------------------------------------------------------------------------------------------------------------------------------------------

--Check LOCALITY
select index_name, table_name, locality 
from user_part_indexes
where table_name='TRACK_LOGIN';

------------------------------------------------------------------------------------------------------------------------------------------------------


--Check INVALID INDEX
select owner, index_name, partitioned
from all_indexes
where owner not in ('SYS','SYSTEM')
and status != 'VALID'
and ( status !='N/A' 
or index_name in (
	select index_name 
	from all_ind_partitions 
	where status != 'USABLE' 
	and (
		status != 'N/A'	
		or index_name in (
			select index_name 
			from all_ind_subpartitions 
			where status !='USABLE'
			)
		)
	)
);

--------------------------------------------------------------------------------------------------------------------------------------------

--Check REBUILD LAST ANALYSED
alter session set nls_date_format = 'DD-MON-YYYY HH24:MI:SS';
set lines 999
col owner for a30
col index_name for a30
select OWNER, INDEX_NAME, LAST_ANALYZED, DEGREE, LOGGING, STATUS from dba_indexes
where INDEX_NAME ='RECHARGE_CREATED_STATUS_INDEX'
and OWNER='DGPOS';