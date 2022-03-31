4. CEK USABLE

#ind_partition:
select index_owner,index_name,partition_name, tablespace_name,status from dba_ind_partitions where status ='UNUSABLE';

#index:
select OWNER, index_name,index_type,tablespace_name,status, index_type from dba_indexes where status='UNUSABLE';

#Index subpartitions:
select index_owner, index_name, partition_name, subpartition_name, tablespace_name from dba_ind_subpartitions where  status = 'UNUSABLE';

5. --cek last ANALYZE--

col owner for a30
col table_name for a30
ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MM-YYYY HH24:MI:SS';
select owner,table_name,last_analyzed,stale_stats 
from dba_tab_statistics 
where table_name='COMBO_SAKTI_TAKER';


--hk u01--
find /u01/app/oracle/admin/OP*/adump -name "*.aud" -mtime +7 -print -delete
---

--copy file to another server--
scp file_log_audit_OPSMSICA19_new.log oracle@10.49.46.3:/home/oracle

nohup sqlplus / as sysdba @collect_audit.sql > /home/oracle/file_log_audit_OPOTTWBS_new1.log &

ps -ef | grep file_log_audit_OPSCM19_new.log

tail -100f /home/oracle/file_log_audit_OPSMSICA19_new.log

sftp -oPort=1521 user@10.39.64.38


sftp oracle@10.39.64.38

put /home/oracle/file_log_audit_PRODHR1_new.log /home/oracle

get /home/oracle/file_log_audit_PRODHR1_new.log

---instance set caging
alter system set cpu_count=36 scope=both sid='*';

alter system set resource_manager_plan='default_plan' scope=both sid='*';

---
