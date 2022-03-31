. Contoh membuat permanent tablespace dengan nama DATA, datafile
/oradata/oracle/ts_bak/data01.dbf, ukuran file sebesar 10M

SQL> create tablespace DATA
datafile '/oradata/oracle/ts_bak/data01.dbf' size 10m;

1. CREATE NEW TABLESPACES
Note!
New Tablespaces : DATA_TRACK_LOGIN_2021
Old Tablespaces : DATA_TRACK_LOGIN

SQL> CREATE TABLESPACE DATA_TRACK_LOGIN_2021 DATAFILE '+DATAC5' SIZE 100M AUTOEXTEND ON NEXT 512M MAXSIZE 31G;

3. add datafile to tablespace DATA_TRACK_LOGIN_2021
SQL> ALTER TABLESPACE DATA_TRACK_LOGIN_2021 ADD DATAFILE '+DATAC5' SIZE 100M AUTOEXTEND ON NEXT 512M MAXSIZE 30G;

CREATE TABLESPACE COMBO_SAKTI_TAKER_TBS DATAFILE '+DATAIMC' size 100M autoextend on next 512M maxsize 30G;
alter user DGPOS QUOTA unlimited on COMBO_SAKTI_TAKER_TBS;

nohup impdp \"/ as sysdba\" 
directory=datadump 
dumpfile=exdmp_PRO_PAYLOAD_V3_20211027_010556.dmp query=\"WHERE EVENT_ID =\'855727588\'\"
logfile=impdp_exdmp_PRO_PAYLOAD_V3_20211027.log
remap_schema=proapp:POMAPP remap_tablespace=DATAL03:DATAL01,IXL01:DATAL01 CONTENT=DATA_ONLY &

nohup impdp \"/ as sysdba\" parfile = impdp_exdmp_PRO_PAYLOAD_V3_20210310_010500.par &
nohup expdp \"/ as sysdba\" parfile = impdp_exdmp_PRO_PAYLOAD_V3_20210310_010500.par &


