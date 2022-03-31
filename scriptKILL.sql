script kill:
-----------
select 'ALTER SYSTEM KILL SESSION '''||sid||','||serial#||',@'||inst_id||''' IMMEDIATE;' 
FROM gv$session where last_call_et > (60*60); 
AND status = 'INACTIVE';


select 'ALTER SYSTEM KILL SESSION '''||sid||','||serial#||',@'||inst_id||''' IMMEDIATE;' 
FROM gv$session 
where sid =2747
--where sql_id ='apkvtkgsprsmv'
--and status = 'INACTIVE' 
ORDER BY inst_id;


alter system kill session ‘2747,36755,@1’ immediate;


select 'ALTER SYSTEM KILL SESSION '''||sid||','||serial#||',@'||inst_id||''' IMMEDIATE;' 
FROM gv$session 
where sid =12816
and serial#=36755
--where sql_id ='5hxkgq2mcu336'
--and status = 'INACTIVE' 
ORDER BY inst_id;


-- cek sesudah dikill
select sid, serial#, inst_id, status, sql_id from gv$session 
where sid in (6462);