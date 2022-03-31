SELECT
  table_name, owner
FROM
  dba_tables
WHERE
  owner='BI_RAFM'
ORDER BY
  owner, table_name;
  
  ---
  DBA TABLES
  
   set linesize 200  
  col table_name for a32  
  col owner for a32  
  col tablespace_name for a32  
  select owner,table_name,tablespace_name  
  from dba_tables where table_name in ('ACTIVE_OFFER')
  group by owner,table_name,tablespace_name;
  
  ---
  service name
  show parameter services;