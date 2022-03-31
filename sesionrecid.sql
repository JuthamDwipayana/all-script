set lines 200
 set pages 1000
select output
from GV$RMAN_OUTPUT
where session_recid = &SESSION_RECID
and session_stamp = &SESSION_STAMP
order by recid;


----cek listener usable-
select owner,index_name,status,PARTITIONED,TABLESPACE_NAME
  from all_indexes
  where owner not in ('SYS', 'SYSTEM')
  and status != 'VALID'
  and (status != 'N/A' or index_name in
  (select index_name from all_ind_partitions
  where
  status != 'USABLE'
  and (status != 'N/A' or index_name in 
  (select index_name from all_ind_subpartitions
  where status != 'USABLE')))
  );
  
  ------cek startup time----
  select instance_name, status, to_char (startup_time, 'dd-mon-yyyy hh24:mi:ss') from gv$instance order by instance_name;
  
  
  
  ----ROLLBACK
  change parameter di db OPB2BOP
script alter:
-------------
alter system set optimizer_dynamic_sampling=0 scope=both sid='*';
alter system set cursor_sharing='force' scope=both sid='*';

script rollback:
----------------
alter system set optimizer_dynamic_sampling=2 scope=both sid='*';
alter system set cursor_sharing='EXACT' scope=both sid='*';


----
nanti liatin rebalancenya di exa82tbs 
1. . .grid_profile
2. sqlplus / as sysasm
3. running 
select group_number,pass,state,power,(sofar/est_work)*100,est_rate,est_minutes 
from gv$asm_operation 
where state='RUN';
 
make sure sampai no row ya


---
srvctl status database -d OPPRN
---
set lines 200;
select instance_name, status, DATABASE_STATUS, to_char(startup_time, 'mm/dd/yyyy hh24:mi:ss') as startup_time from gv$instance;
!date;hostname;