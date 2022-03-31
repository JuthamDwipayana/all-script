-----------cek sql2 yang offload 

select database_id,sql_id count(1) from V$CELL_OFL_THREAD_HISTORY where group_name<>'CELLSRV' and SNAPSHOT_TIME > sysdate-1/1440 group by database_id, sql_id;


--------------------count
select database_id, count(1) from V$CELL_OFL_THREAD_HISTORY where group_name<>'CELLSRV' and SNAPSHOT_TIME > sysdate-1/1440 group by database_id;

=============



select 'ALTER SYSTEM KILL SESSION '''||sid||','||serial#||',@'||inst_id||''' IMMEDIATE;' 
FROM gv$session 
--where sid =57
where sql_id ='30p3mh3brvpt9'
--and status = 'INACTIVE' 
ORDER BY inst_id;




=========
0za9fv0j1vgkk

select SID,SERIAL#,INST_ID from gv$session where SID=4037;

ALTER SYSTEM KILL SESSION '12816,36755,@2' IMMEDIATE;

=========

-rw-rw-rw-+ 1 oracle dba  76G Dec  4 08:04 
-rw-rw-rw-+ 1 oracle dba 118G Dec  4 11:07 
-rw-rw-rw-+ 1 oracle dba  96G Dec  4 13:12 
-rw-rw-rw-+ 1 oracle dba  72G Dec  4 14:41 
-rw-rw-rw-+ 1 oracle dba  76G Dec 11 09:13 
-rw-rw-rw-+ 1 oracle dba 118G Dec 11 13:13 OPTOIP_db_20211211_9e0gembb_85294_1_1.bk
-rw-rw-rw-+ 1 oracle dba  97G Dec 11 16:13 
-rw-rw-rw-+ 1 oracle dba  73G Dec 11 18:22 OPTOIP_db_20211211_a20gfev0_85314_1_1.bk
-rw-rw-rw-+ 1 oracle dba 107G Dec 18 09:17 OPTOIP_db_20211218_bf0h0kng_85359_1_1.bk
-rw-rw-rw-+ 1 oracle dba  80G Dec 18 11:04 OPTOIP_db_20211218_bp0h155p_85369_1_1.bk
-rw-rw-rw-+ 1 oracle dba  59G Dec 18 12:23 OPTOIP_db_20211218_c00h1bfp_85376_1_1.bk
-rw-rw-rw-+ 1 oracle dba  84G Dec 18 14:13 OPTOIP_db_20211218_c70h1g29_85383_1_1.bk

rm OPTOIP_db_20211211_9o0gf4cn_85304_1_1.bk