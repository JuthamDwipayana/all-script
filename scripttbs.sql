PART DBA.

1. PRE-CHECK
Perform healthcheck database

1. CREATE NEW TABLESPACES
Note!
New Tablespaces : DATA_TRACK_LOGIN_2021
Old Tablespaces : DATA_TRACK_LOGIN

SQL> CREATE TABLESPACE DATA_TRACK_LOGIN_2021 DATAFILE '+DATAC5' SIZE 100M AUTOEXTEND ON NEXT 512M MAXSIZE 31G;

3. add datafile to tablespace DATA_TRACK_LOGIN_2021
SQL> ALTER TABLESPACE DATA_TRACK_LOGIN_2021 ADD DATAFILE '+DATAC5' SIZE 100M AUTOEXTEND ON NEXT 512M MAXSIZE 30G;

4. Grant quota unlimited user TR_USER to DATA_TRACK_LOGIN_2021
SQL> ALTER USER TR_USER QUOTA UNLIMITED ON DATA_TRACK_LOGIN_2021;

5. Create New Table (Temporary)
. .OPESB_profile
nohup sqlplus / as sysdba @01CreateTableTRACK_LOGIN_2021.sql > /home/oracle/new_table_opesb.log &
—querynya sudah dibuatkan file .sql di /home/oracle
Cek hasilnya.
select owner, table_name, tablespace_name , SEGMENT_CREATED from DBA_TABLES where table_name='TRACK_LOGIN_2021';


5. Export Full Data from Table TRACK_LOGIN (/datadump16/opesb/dump)
$> nohup expdp \"/ as sysdba\" TABLES=TR_USER.TRACK_LOGIN directory=DUMP_OPESB dumpfile=TRACK_LOGIN_101121_%U.dmp logfile=exp_TRACK_LOGIN_101121.log parallel=4 &


6. Import data .dmp to Table TRACK_LOGIN_2021 (/datadump16/opesb/dump)
$> nohup impdp \"/ as sysdba\" directory=DUMP_OPESB TABLES=TR_USER.TRACK_LOGIN REMAP_TABLESPACE=DATA_TRACK_LOGIN:DATA_TRACK_LOGIN_2021 REMAP_TABLE=TR_USER.TRACK_LOGIN:TRACK_LOGIN_2021 CONTENT=DATA_ONLY dumpfile=TRACK_LOGIN_101121_%U.dmp logfile=imp_TRACK_LOGIN_101121.log parallel=4 &


7. Gather Stats Table TRACK_LOGIN_2021
SQL>
set lines 500 pages 500
col table_name for a40
col last_analyzed for a20
SELECT table_name,num_rows,last_analyzed FROM user_tables WHERE table_name = 'TRACK_LOGIN_2021';

SQL>
exec dbms_stats.gather_table_stats(ownname => 'TR_USER', tabname => 'TRACK_LOGIN_2021', estimate_percent => 80, method_opt => 'FOR ALL COLUMNS SIZE AUTO', degree => 8, cascade => TRUE);


8. Set OFFLINE Tablespace DATA_TRACK_LOGIN
SQL> ALTER TABLESPACE DATA_TRACK_LOGIN OFFLINE;


10. Drop Table TRACK_LOGIN_20211110 / Drop Tablespace DATA_TRACK_LOGIN (NEXT WEEK)
SQL> DROP TABLE TRACK_LOGIN_20211110 CASCADE CONSTRAINTS PURGE;
SQL> DROP TABLESPACE DATA_TRACK_LOGIN INCLUDING CONTENTS;

CREATE TABLESPACE nama_tbs DATAFILE '+DATA' SIZE 1G AUTOEXTEND ON NEXT 100M MAKSIZE 1G;

 create tablespace DATA datafile '/oradata/oracle/ts_bak/data01.dbf' size 50m;


alter tablespace nama_tbs offline;