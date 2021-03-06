explain plan for UPDATE USR_TDWUATOFFER.INBOXPRE SET READ = 'TRUE' WHERE MSISON '6281211063979' AND ID IN ('12803161328');

find /data/oracle/diag/rdbms/OP*/trace -name "*.tr*" -mtime +7 -print -delete

find /u01/app/oracle/admin/OP*/adump -name "*.aud" -mtime +7 -print -delete


find /u01/app/oracle/diag/rdbms/o*/O*/trace -name "*.tr*" -mtime +7 -print -delete

find /u01/app/oracle/admin/O*/adump -name "*.aud" -mtime +7 -print -delete

-----------------
set echo off hea on
  set lines 700 pages 10000 long 10000
  col sql_id from a30
  col snaptime for a30 
  select to_char(begin_interval_time,'yy-mm-dd hh24:mi') ' - '  to_char(end_interval_time,'hh24:mi') snaptime,sql_id,PLAN_HASH_VALUE PLAN_HASH,
  (CASE EXECUTIONS_DELTA WHEN 0 THEN 1 ELSE EXECUTIONS_DELTA END) EXEC_DELTA,
  TRUNC((ELAPSED_TIME_DELTA/1000000)) ELAP_DELTA_SEC,
  TRUNC((ELAPSED_TIME_DELTA/1000000)/(CASE EXECUTIONS_DELTA WHEN 0 THEN 1 ELSE EXECUTIONS_DELTA END),3) AVG_ELAP_SEC,
  ROWS_PROCESSED_DELTA ROWS_DELTA,
  TRUNC(ROWS_PROCESSED_DELTA/(CASE EXECUTIONS_DELTA WHEN 0 THEN 1 ELSE EXECUTIONS_DELTA END)) AVG_ROW,TRUNC(DISK_READS_DELTA/(CASE EXECUTIONS_DELTA WHEN 0 THEN 1 ELSE EXECUTIONS_DELTA END)) DISK_READS
  from dba_hist_sqlstat a join dba_hist_snapshot b on (a.snap_id=b.snap_id and a.instance_number=b.instance_number)
  and begin_interval_time > trunc(sysdate-30) and sql_id='dyfbb0axbb520' order by 1 asc;