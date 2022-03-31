ALTER USER (username) QUOTA UNLIMITED ON (nama_tablespace) ;

CREATE TABLESPACE yana_tbs DATAFILE '+DATA' SIZE 1G AUTOEXTEND ON NEXT 100M MAKSIZE 1G;

 create tablespace DATA datafile '/oradata/oracle/ts_bak/data01.dbf' size 50m;


alter tablespace nama_tbs offline;

