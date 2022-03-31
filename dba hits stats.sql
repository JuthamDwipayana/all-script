set echo off hea on
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
  and begin_interval_time > trunc(sysdate-30) and sql_id='8gn2rq7un1zvz' order by 1 asc;
  
  --
  SELECT * FROM table(DBMS_XPLAN.DISPLAY_AWR ('8gn2rq7un1zvz'));
  

  
  --cek tbs di container
  SET LINES 132 PAGES 100 
COL con_name FORM A15 HEAD "Container|Name" 
COL tablespace_name FORM A30
COL fsm FORM 999,999,999,999 HEAD "Free|Space Meg." 
COL apm FORM 999,999,999,999 HEAD "Alloc|Space Meg." 
WITH x AS (SELECT c1.con_id, cf1.tablespace_name, SUM(cf1.bytes)/1024/1024 fsm FROM cdb_free_space cf1 ,v$containers c1
WHERE cf1.con_id = c1.con_id GROUP BY c1.con_id, cf1.tablespace_name), 
y AS (SELECT c2.con_id, cd.tablespace_name, SUM(cd.bytes)/1024/1024 apm 
FROM cdb_data_files cd ,v$containers c2 WHERE cd.con_id = c2.con_id GROUP BY c2.con_id ,cd.tablespace_name) 
SELECT x.con_id, v.name con_name, x.tablespace_name, x.fsm, y.apm FROM x, y, 
v$containers v WHERE x.con_id = y.con_id AND x.tablespace_name = y.tablespace_name 
AND v.con_id = y.con_id UNION SELECT vc2.con_id, vc2.name, tf.tablespace_name, null, 
SUM(tf.bytes)/1024/1024 FROM v$containers vc2, cdb_temp_files tf 
WHERE vc2.con_id = tf.con_id GROUP BY vc2.con_id, vc2.name, tf.tablespace_name ORDER BY 1, 2;


Select status,file_name, tablespace_name,autoextensible 
From dba_data_files 
Where tablespace_name = 'SYSTEM';
---
alter tablespace SYSTEM add datafile '+DATAC1' size 100M autoextend on next 100M maxsize ??G;

alter tablespace SYSTEM autoextend on next 100M maxsize 700G;


---
select 'ALTER SYSTEM KILL SESSION '''||sid||','||serial#||',@'||inst_id||''' IMMEDIATE;' 
FROM gv$session 
--where sid =57
where sql_id ='4rm5mf1t7vcb5'
--and status = 'INACTIVE' 
ORDER BY inst_id;
---
select 'ALTER SYSTEM KILL SESSION '''||sid||','||serial#||',@'||inst_id||''' IMMEDIATE;' 
FROM gv$session 
where sid =9238
--where sql_id ='8qsu51scnm1n3'
--and status = 'INACTIVE' 
ORDER BY inst_id;
-------
ALTER SYSTEM KILL SESSION '9238,45713,@1' IMMEDIATE;
OPBNP
-----------
--------
select 'ALTER SYSTEM KILL SESSION '''||sid||','||serial#||',@'||inst_id||''' IMMEDIATE;' 
FROM gv$session 
where sid =12816
and serial#=36755
--where sql_id ='5hxkgq2mcu336'
--and status = 'INACTIVE' 
ORDER BY inst_id;


--
