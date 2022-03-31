select index_name,index_type,tablespace_name,status, index_type 
from DBA_INDEXES where status='UNUSABLE';

select index_owner,index_name,partition_name, tablespace_name,status 
from DBA_IND_PARTITIONS where status ='UNUSABLE';

select index_owner, index_name, partition_name, subpartition_name, tablespace_name 
from DBA_IND_SUBPARTITIONS where status = 'UNUSABLE';


---------------------------------------------------------------------------------------------------------------------

select owner,index_name,PARTITIONED,TABLESPACE_NAME
from dba_indexes
where owner not in ('SYS', 'SYSTEM')
and status != 'VALID'
and (status != 'N/A' or index_name in
(select index_name from dba_ind_partitions
where
status != 'USABLE'
and (status != 'N/A' or index_name in 
(select index_name from dba_ind_subpartitions
where status != 'USABLE')))
);

---------------------------------------------------------------------------------------------------------------------

select 'alter index '||owner||'.'||index_name||' rebuild online;' 
from dba_indexes 
where status='UNUSABLE' union all 
select 'alter index '||index_owner||'.'||index_name|| ' rebuild partition '||partition_name||' online;' 
from dba_ind_partitions 
where status='UNUSABLE';