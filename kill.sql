set pages 999
  set lines 999
  select 'alter system kill session '''||sid||','||serial#||',@'||inst_id||''' IMMEDIATE;' 
  from gv$session 
  where last_call_et > (60*60) and status = 'INACTIVE' and username not like '%SYS%'
  order by inst_id;
  
  kalo misalkan ada case minta tolong kill session id 2747
step 1
select sid, serial# from gv$session where sid=2747;
kalau db dengan 2 instance
step 1
select SID,SERIAL#,INST_ID from gv$session where SID = 2747;
jika  SID, dan Serial sudah ada
step 2 
alter system kill session ‘SID,SERIAL#’ immediate;


select 'ALTER SYSTEM KILL SESSION '''||sid||','||serial#||',@'||inst_id||''' IMMEDIATE;' 
FROM gv$session 
--where sid =57
where sql_id ='5hxkgq2mcu336'
--and status = 'INACTIVE' 
ORDER BY inst_id;