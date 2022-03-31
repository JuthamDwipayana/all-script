SELECT username FROM v$session 
WHERE username IS NOT NULL 
ORDER BY username ASC;


---chek jadwal gaterstat
SET lines 300
col OPERATION FOR a30
col TARGET FOR a35
col START_TIME FOR a40
col END_TIME FOR a40
col job_name for a30
SELECT id,operation,target,start_time,end_time,job_name,status FROM dba_optstat_operations where operation like '%gather%' order by start_time;


---cek sql text
set linesize 999
set pagesize 999
col INST_ID for 999
col osuser for a10
col TIME for a10
col MACHINE for a20
col USERNAME for a15
col osuser for a15
col event for a30
col sql_fulltext for a30
  select a.INST_ID,a.machine,a.status, a.osuser,a.username,a.sid,a.serial#,a.SQL_ID,a.EVENT, 
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
and users_executing>0 order by time desc;