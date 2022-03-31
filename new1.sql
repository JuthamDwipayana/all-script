3. ke server exacm node 2
ini di server exacm odpom
cek dulu direktorinya ada atau tidak
$> . ODB2BOP.env
$> sqlplus /as sysdba
SQL>show pdbs;
SQL> alter session set container = nama container;

cek direktori -- pastikan sudah ada dir name mengarah ke /nfs_dump
SQL> set lines 300
col owner for a20
col directory_name for a30
col directory_path for a70
select owner, directory_name, directory_path from dba_directories


(ini kalo direktorinya belum ada)
pastikan dir name dan dir path sudah ada, kalau belum ada contohnya seperti dibawah ini:
SQL> create or replace directory DUMP_NFS as '/nfs_dump';
SQL> grant read, write on directory DUMP_NFS to SYS;




4. NOTE sebelum EXECUTE import (berlaku semua expdp impdp)!
- pastikan sudah masuk ke dir /nfs_dump dengan pwd
- pastikan file nya sudah ada di /nfs_dump
$> ls-lrth
- pastikan script import benar.
- pastikan sudah di profil dbnya 
$> echo $ORACLE_SID

5. run script import. 
NOTE!
- pastikan run script background dan ada & 
- selalu nohup
- run scrip satu baris.
- pastikan yang di input di script import itu nama pdb bukan nama db.

----
CREATE TABLESPACE tdirectbe DATAFILE '+DATA1' SIZE 1G AUTOEXTEND ON NEXT 100M MAXSIZE 30G;
CREATE USER "tdirectbe" PROFILE "LEVEL2" IDENTIFIED BY "tdirectbe#2021" DEFAULT TABLESPACE "tdirectbe" 