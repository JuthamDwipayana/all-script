 (EXACM = TARGET | Exa62bsdpdb1 = SOURCE)
 PROSES IMPORT 
1. masuk ke ip Exa62bsdpdb1
ssh oracle@10.54.128.6


2. Copy file dari DUMP10 ke /nfs_dump
$ cd /datadump10/opb2bop/expdp
$ ls -lrth expdp_OPB2BOP_PESACN_ADMIN_07122021*.dmp
$ nohup cp expdp_OPB2BOP_PESACN_ADMIN_07122021_01.dmp /dump &
cek proses copy ps -ef | grep cp
$ cd /nfs_dump
$ ls
$ chmod 777 expdp_OPB2BOP_PESACN_ADMIN_07122021_10056.dmp


3. ke server exacm 
ini di server exacm ODB2BOPC
cek dulu direktorinya ada atau tidak
$> . ODPOM.env
$> sqlplus /as sysdba
SQL>show pdbs;
SQL> alter session set container = nama container;

cek direktori -- pastikan sudah ada dir name mengarah ke /nfs_dump
SQL> set lines 300
col owner for a20
col directory_name for a30
col directory_path for a70
select owner, directory_name, directory_path from dba_directories






4. NOTE sebelum EXECUTE import (berlaku semua expdp impdp)!
- pastikan sudah masuk ke dir /nfs_dump dengan pwd
- pastikan file nya sudah ada di /nfs_dump
$> ls-lrth
- pastikan script import benar.
- pastikan sudah di profil dbnya 
$> echo $ORACLE_SID

5.run script import. 
NOTE!
- pastikan run script background dan ada & 
- selalu nohup
- run scrip satu baris.
- pastikan yang di input di script import itu nama pdb bukan nama db.

nohup impdp system/oracle@ODB2BOPC directory=DUMP_NFS REMAP_TABLESPACE=DATA_TABLES:CFG_TABLES remap_schema=PESACN_ADMIN:PES_PREPROD2 dumpfile=expdp_OPB2BOP_PESACN_ADMIN_07122021_%U.dmp logfile=impdp_OPB2BOP_PESACN_ADMIN_07122021.log parallel=4 &




---(ini kalo direktorinya belum ada)
--pastikan dir name dan dir path sudah ada, kalau belum ada contohnya seperti dibawah ini:
--SQL> create or replace directory DUMP_NFS as '/nfs_dump';
--SQL> grant read, write on directory DUMP_NFS to SYS;