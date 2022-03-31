---generate ddl
 SELECT OBJECT_TYPE, OBJECT_NAME,DBMS_METADATA.GET_DDL(OBJECT_TYPE, OBJECT_NAME, OWNER)
  FROM ALL_OBJECTS 
  WHERE (OWNER = 'ACTIVEOFFER') AND OBJECT_TYPE NOT IN('LOB','MATERIALIZED VIEW', 'TABLE PARTITION') ORDER BY OBJECT_TYPE, OBJECT_NAME;
  
  SELECT DBMS_METADATA.GET_DDL('INBOX', TABLE_NAME) FROM USER_TABLES;
  
  ---create tabel--
  select dbms_metadata.get_ddl( 'TABLE', 'TABLE_NAME','SCHEMA_NAME' ) from dual;
  contoh:
  select dbms_metadata.get_ddl('TABLE', 'INBOX','ACTIVEOFFER') from dual;
  
  ---index create script
  select dbms_metadata.get_ddl( 'INDEX', 'INDEX_NAME','SCHEMA_NAME' ) from dual;
  
  ---TABLESPACE create script--
  set head off echo off
select 'select dbms_metadata.get_ddl(''TABLESPACE'','''
|| tablespace_name || ''') from dual;' from dba_tablespaces;
--output:
select dbms_metadata.get_ddl('TABLESPACE','USERS') from dual;