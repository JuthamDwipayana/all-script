
RECOC5, DATAC5 = exareflxtbs
RECOC4, DATAC4 = exareflexbsd
RECOIMC, DATAIMC = exaimc
RECOC2, DATAC2 = exa62b 
RECOC1, DATAC1 = exa62a


DB STAND BY:
delete force noprompt archivelog until time 'SYSDATE-1/4';

DELETE FOREIGN ARCH
delete force noprompt foreign archivelog until time 'SYSDATE-1';

DB PRIMARY INCREMENTAL:
DELETE force archivelog until time '(sysdate-1/4)' backed up 1 times to device type SBT_TAPE;


crosscheck archivelog all;


Cek Flashback database
SELECT FLASHBACK_ON FROM V$DATABASE;

Cek pemakaian FRA
set lines 999
set pages 999
SELECT * FROM V$RECOVERY_AREA_USAGE;


show parameter DB_RECOVERY_FILE_DEST_SIZE;


alter system set db_recovery_file_dest_size = 1000G scope=both sid='*';


Select status,file_name, tablespace_name,autoextensible 
From dba_data_files 
Where tablespace_name = 'Nama_Tablespace';

alter system set db_recovery_file_dest_size =1000G scope=both sid='*';

---cek status error atau tidak dest idnya----------------------------------------------------------------
set linesize 200
set pagesize 200
select inst_id, dest_id, status, error from gv$archive_dest_status where dest_id in (1,2,3);


----------------------------------------------------------------------------
find /zfssa/exapdb/backup*/prod/arch/PROD_arch_*.bk -mtime +7

find /zfssa/exapdb/backup2/prod/arch/PROD_arch_*.bk -mtime +7 


find /zfssa/exapdb/backup*/prod/arch/PROD_arch_*.bk -mtime +7 -exec rm -fr {} \;



set lines 200
col username for a32
col profile for a32
col account_status for a32
col expiry_date for a32
select username,profile,account_status,created, expiry_date from dba_users order by account_status,username;

----------ganti ke user SYS------=jika gap
alter system set redo_transport_user='SYS' sid='*' scope=both;

---
set lines 200
col resource_name for a32
col profile for a32
col limit for a32
set pagesize 300
select profile, resource_name, limit from dba_profiles where profile like 'LEVEL1';
