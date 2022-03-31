set linesize 999
set pagesize 999
col inst_id for 999
col time for a10
col machine for a35
col username for a10
col osuser for a15
col event for a30
select a.INST_ID,a.machine, 
--a.PROGRAM, 
a.status, 
a.osuser,a.username,a.sid,a.serial#,a.SQL_ID,a.EVENT,
(case
   when trunc(last_call_et)<60 then to_char(trunc(last_call_et))||' Sec(s)'
   when trunc(last_call_et/60)<60 then to_char(trunc(last_call_et/60))||' Min(s)'
   when trunc(last_call_et/60/60)<24 then to_char(trunc(last_call_et/60/60))||' Hour(s)'
   when trunc(last_call_et/60/60/24)>=1  then to_char(trunc(last_call_et/60/60/24))||' Day(s)'
end) as time,sql_fulltext
from gv$session a,gv$sqlarea b
where a.sql_address=b.address
and a.sql_hash_value=b.hash_value 
and a.username is not null
--and a.SQL_ID = '05dqyptcsxxug'
--and a.sid =2747
and users_executing>0 order by time desc;


----
select S.USERNAME, s.sid, s.osuser, t.sql_id, sql_text
from v$sqltext_with_newlines t,V$SESSION s
where table_name ='USER_MESSAGES'
and t.hash_value = s.sql_hash_value
and s.status = 'ACTIVE'
and s.username <> 'SYSTEM'
order by s.sid,t.piece;
------

set lines 300
set lines 300
col segment_name for a35
col owner for a35
select  a.owner, a.tablespace_name, a.segment_type, b.segment_name,b.table_name,sum(bytes/1024/1024) MB 
from dba_segments a, dba_lobs b
where a.segment_name=b.segment_name
and b.segment_name = ‘DO_SAP_INTERFACE’
and a.segment_type in ('table')
group by a.owner, a.tablespace_name, b.segment_name, a.segment_type, b.table_name
order by a.segment_type, b.segment_name;

SELECT owner,Table_name FROM all_tables WHERE Table_name='DO_SAP_INTERFACE' ORDER BY owner,Table_name;

select max(ora_rowscn), scn_to_timestamp(max(ora_rowscn)) from TELKOMSEL.DO_SAP_INTERFACE; 


----
set lines 700 pages 10000 long 10000
col sql_id from a30
col snaptime for a30 
select to_char(begin_interval_time,'yy-mm-dd hh24:mi')|| ' - ' || to_char(end_interval_time,'hh24:mi') snaptime,sql_id,PLAN_HASH_VALUE PLAN_HASH,
(CASE EXECUTIONS_DELTA WHEN 0 THEN 1 ELSE EXECUTIONS_DELTA END) EXEC_DELTA,
TRUNC((ELAPSED_TIME_DELTA/1000000)) ELAP_DELTA_SEC,
TRUNC((ELAPSED_TIME_DELTA/1000000)/(CASE EXECUTIONS_DELTA WHEN 0 THEN 1 ELSE EXECUTIONS_DELTA END),3) AVG_ELAP_SEC,
ROWS_PROCESSED_DELTA ROWS_DELTA,
TRUNC(ROWS_PROCESSED_DELTA/(CASE EXECUTIONS_DELTA WHEN 0 THEN 1 ELSE EXECUTIONS_DELTA END)) AVG_ROW,TRUNC(DISK_READS_DELTA/(CASE EXECUTIONS_DELTA WHEN 0 THEN 1 ELSE EXECUTIONS_DELTA END)) DISK_READS
from dba_hist_sqlstat a join dba_hist_snapshot b on (a.snap_id=b.snap_id and a.instance_number=b.instance_number)
and begin_interval_time > trunc(sysdate-7) and sql_id= '05dqyptcsxxug' and b.instance_number=1 order by 1;