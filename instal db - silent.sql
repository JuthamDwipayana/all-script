dbca -silent -createDatabase \
  -templateName General_Purpose.dbc \
  -gdbname ODDGPOS -responseFile NO_VALUE \
  -characterSet WE8MSWIN1252 \
  -NATIONALCHARACTERSET AL16UTF16 \
  -sysPassword MyPassword123 \
  -systemPassword MyPassword123 \
  -databaseType MULTIPURPOSE \
  -automaticMemoryManagement false \
  -totalMemory 4024 \
  -redoLogFileSize 250 \
  -emConfiguration NONE \
  -ignorePreReqs \
  -nodelist crmbeddb1,crmbeddb2 \
  -storageType ASM \
  -diskGroupName +DATA \
  -recoveryGroupName +DATA
  
  ---
  COL PARAMETER FOR A30
COL VALUE FOR A30
SET LINESIZE 300
SELECT * FROM NLS_DATABASE_PARAMETERS;
  -----------
  
SQL> create pfile='/home/oracle/ssi/pfile_<database_name>_<yyyymmdd>.txt' from spfile;
contoh:
create pfile='/home/oracle/sscript/ssi/pfile_ODDGPOS_20213112.txt' from spfile;

2. Change SGA_MAX SIZE
alter system set sga_max_size=8G scope=spfile sid='*';

3. Change SGA_TARGET
alter system set sga_target=8G scope=spfile sid='*';

4. Change PGA_AGREGATE_TARGET
alter system set pga_aggregate_target=4G scope=spfile sid='*';

5. Change PGA_AGREGATE_LIMIT
alter system set pga_aggregate_limit=8G scope=both sid='*';

alter system set pga_aggregate_limit=8G scope=spfile sid='*';


6. Change Process and session on database
alter system set processes=1000 scope=spfile sid='*';
  ---------
  
  Restart Instance both node
date;
srvctl status database -d ODDGPOS
srvctl stop database -d ODDGPOS 
srvctl start database -d ODDGPOS

srvctl status database -d ODDGPOS
srvctl stop instance -d ODDGPOS -i ODDGPOS2
srvctl start instance -d ODDGPOS -i OODDGPOS2
date;
  