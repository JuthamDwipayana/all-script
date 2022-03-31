--EXACM
bastion 
sudo su - perdanar
ssh -o ServerAliveInterval=30 10.54.42.2 -l opc -i /home/perdanar/exacm_rsa
ssh -o ServerAliveInterval=30 10.54.42.4 -l opc -i /home/perdanar/exacm_rsa
welcome1
sudo su - oracle
. ODPOMC.env
--kalau dari oem langsung ssh


show pdbs;
ALTER SESSION SET CONTAINER=ODPOM;

#CEK DIRECTORY
set lines 300
col owner for a20
col directory_name for a30
col directory_path for a70
select owner, directory_name, directory_path from dba_directories where directory_name='NEW_DUMP';

/u02/dpump/lina 


--nohup impdp system/oracle@ODPOM directory=NEW_DUMP dumpfile=exdmp_PRO_PAYLOAD_V3_20210330_010504.dmp query=\"WHERE EVENT_ID =\'819568983\'\" logfile=imp_exdmp_PRO_PAYLOAD_V3_20210330_010504.log remap_schema=proapp:POMAPP remap_tablespace=DATAL03:DATAL01,IXL01:DATAL01 CONTENT=DATA_ONLY &


--nohup impdp system/oracle@ODPOM directory=NEW_DUMP dumpfile=exdmp_PRO_PAYLOAD_V3_20211027_010556.dmp query=\"WHERE EVENT_ID =\'855727588\'\" logfile=impdp_exdmp_PRO_PAYLOAD_V3_20211123.log remap_schema=proapp:POMAPP remap_tablespace=DATAL03:DATAL01,IXL01:DATAL01 CONTENT=DATA_ONLY &




--vi impdp_exdmp_PRO_PAYLOAD_V3_20210310_010500.par 
--directory=MIGRASI 
dumpfile=exdmp_PRO_PAYLOAD_V3_20210310_010500.dmp 
query="WHERE EVENT_ID in ('816291894','816291899','816351543','816351676','816352175','816352629')"
logfile=impdp_PRO_PAYLOAD_V3_20210310_010500.log 
remap_schema=proapp:POMAPP 
remap_tablespace=DATAL03:DATAL01,IXL01:DATAL01 
CONTENT=DATA_ONLY


--nohup impdp system/oracle@ODPOM directory=DUMP_NFS dumpfile=exdmp_PRO_PAYLOAD_V3_20210603_010505.dmp query=\"WHERE EVENT_ID =\'830824021\'\" logfile=impdp_exdmp_PRO_PAYLOAD_V3_20210603_010505.log remap_schema=proapp:POMAPP remap_tablespace=DATAL03:DATAL01,IXL01:DATAL01 CONTENT=DATA_ONLY &

 
--exdmp_PRO_PAYLOAD_V3_20210330_010504.dmp
 --query=\"WHERE EVENT_ID =\'819568983\'\"
 
 
 ------------------------------------
 (EXACM NODE 2 = TARGET | EXA42 node2 = SOURCE)
 PROSES IMPORT 
1. masuk ke ip exa 42 node 2
ssh oracle@10.250.192.102
pass: OR4cl3@3x4D4t4##_3x4pDb2


2. Copy file dari backup2 ke /dump
$> cd /zfssa/exapdb/backup2/OPPOM_PRO_PAYLOAD_V2
$> ls -lrth exdmp_PRO_PAYLOAD_V3_20211218_*.dmp
$> nohup cp exdmp_PRO_PAYLOAD_V3_20211218_010555.dmp /dump  &

cek proses copy
 ps -ef | grep cp ((exdmp_PRO_PAYLOAD_V3_20210822_010533.dmp))
$ cd /dump
$ ls
$ chmod 777 exdmp_PRO_PAYLOAD_V3_20211218_010555.dmp



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
select owner, directory_name, directory_path from dba_directories;


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
$>nohup impdp system/oracle@ODPOM directory=DUMP_NFS dumpfile=exdmp_PRO_PAYLOAD_V3_20211218_010555.dmp query=\"WHERE EVENT_ID =\'864664307\'\" logfile=impdp_exdmp_PRO_PAYLOAD_V3_20211218_010555.log remap_schema=proapp:POMAPP remap_tablespace=DATAL03:DATAL01,IXL01:DATAL01 CONTENT=DATA_ONLY &

--

nohup impdp system/oracle123@ODC2P3 directory=DUMP_NFS REMAP_SCHEMA=C2P_PROD:C2PODD_DEV11 dumpfile=opc2podd_tables_clone_%U.dmp logfile=imp_c2podd_clone_06012022_new.log TABLE_EXISTS_ACTION=APPEND parallel=4 &


nohup impdp system/oracle123@ODC2P3 directory=DUMP_NFS REMAP_SCHEMA=C2P_PROD:C2PEVEN_DEV11 dumpfile=opc2pevn_tables_clone_%U.dmp logfile=imp_c2pevn_clone_06012022.log parallel=4 &

vi imp_c2pevn_clone_06012022.log




---
nohup impdp system/oracle@ODPOM directory=DUMP_NFS dumpfile=exdmp_PRO_PAYLOAD_V3_20211204_010523.dmp query=\"WHERE EVENT_ID =\'862715434\',\'862715435\',\'862715422\',\'862716292\',\'862716150\'\" logfile=impdp_exdmp_PRO_PAYLOAD_V3_20211204_010523.log remap_schema=proapp:POMAPP remap_tablespace=DATAL03:DATAL01,IXL01:DATAL01 CONTENT=DATA_ONLY &
---
nohup cp exdmp_PRO_PAYLOAD_V3_20211204_010523.dmp /dump &

6. cek proses import 
$> tail -200f imp_c2podd_clone_06012022_new.log
atau
$> tailf nohup.out
ps -ef | grep impdp_exdmp_PRO_PAYLOAD_V3_20210825_010528.log
----------


----case jika file nya tidak di mounted
2. cek file dir
$> cd /zfssa/exapdb/backup2/OPPOM_PRO_PAYLOAD_V2 (data asli ada di datadump2)

3. cek file nya ada tidak?
$> ls -lrth exdmp_PRO_PAYLOAD_V3_20210330_*.dmp

4. di server oem cek df -kh, cek dir mana yg sizenya cukup
	- pastikan direktori di oem utk nampung file nya cukup (biasanya pakai /tmp)

5. dari server exa42 sekarang sftp ke server oem
$> sftp oracle@ ip oem  (10.49.46.3)

6. copy file ke oem
sftp> cd /tmp 
sftp> pwd 
sftp> put exdmp_PRO_PAYLOAD_V3_20210330_10056.dmp


8. di server exacm  ambil file dari oem
- masuk ke direktori datadump
$>cd /datadump
- masuk ke sftp oem
$> sftp oracle@10.49.46.3
sftp> cd /tmp
sftp> get exdmp_PRO_PAYLOAD_V3_20210330_10056.dmp
sftp>EXIT
 Note! 
 -pastikan filenya sudah di dir datadump
 -passtikan sizenya sama dengan yg di source 

9. ini masih di dir /datadump server exacm
$> chmod 777 exdmp_PRO_PAYLOAD_V3_20210330_10056.dmp (agar bisa di EXECUTE)


 import table PRO_PAYLOAD_V3 ke user POMAPP db ODPOMC
  source file : exdmp_PRO_PAYLOAD_V3_20211027_*.dmp
 dgn. parameter query=\"WHERE EVENT_ID =\'855727588\'\"
 
 nohup impdp system/oracle@ODPOM directory=DUMP_NFS dumpfile=exdmp_PRO_PAYLOAD_V3_20210330_010504.dmp query=\"WHERE EVENT_ID =\'819568983\'\" logfile=imp_exdmp_PRO_PAYLOAD_V3_20210330_010504.log remap_schema=proapp:POMAPP remap_tablespace=DATAL03:DATAL01,IXL01:DATAL01 CONTENT=DATA_ONLY &
 
 
 nohup impdp system/oracle@ODPOM directory=NEW_DUMP dumpfile=exdmp_PRO_PAYLOAD_V3_20211027_010556.dmp query=\"WHERE EVENT_ID =\'855727588\'\" logfile=impdp_exdmp_PRO_PAYLOAD_V3_20211027.log remap_schema=proapp:POMAPP remap_tablespace=DATAL03:DATAL01,IXL01:DATAL01 CONTENT=DATA_ONLY &
 
 =======
 
====TGL 26===
 import table PRO_PAYLOAD_V3 ke user POMAPP db ODPOMC
  source file : exdmp_PRO_PAYLOAD_V3_20210402_*.dmp
 dgn. parameter query=\"WHERE EVENT_ID =\'819939548\'\"
 
 nohup impdp system/oracle@ODPOM directory=NEW_DUMP dumpfile=exdmp_PRO_PAYLOAD_V3_20210402_010556.dmp query=\"WHERE EVENT_ID =\'819939548\'\" logfile=impdp_exdmp_PRO_PAYLOAD_V3_20210402.log remap_schema=proapp:POMAPP remap_tablespace=DATAL03:DATAL01,IXL01:DATAL01 CONTENT=DATA_ONLY &
 
 
 ====tgl 01/12
  import table PRO_PAYLOAD_V3 ke user POMAPP db ODPOMC
  source file : exdmp_PRO_PAYLOAD_V3_20211103_*.dmp
 dgn. parameter query=\"WHERE EVENT_ID =\'855964554\'\"

 nohup impdp system/oracle@ODPOM directory=NEW_DUMP dumpfile=exdmp_PRO_PAYLOAD_V3_20211103_010520.dmp query=\"WHERE EVENT_ID =\'855964554'\" logfile=impdp_exdmp_PRO_PAYLOAD_V3_20211103.log remap_schema=proapp:POMAPP remap_tablespace=DATAL03:DATAL01,IXL01:DATAL01 CONTENT=DATA_ONLY &
 
 ==tgl 04/12
 met malam tim DBA boleh mintol import table PRO_PAYLOAD_V3 ke user POMAPP db ODPOMC dari 5 source dump file berikut :
1. source FILE : exdmp_PRO_PAYLOAD_V3_20211116_*.dmp, 
   dgn query=\"WHERE EVENT_ID =\'859002205\'\"
   
   nohup impdp system/oracle@ODPOM directory=NEW_DUMP dumpfile=exdmp_PRO_PAYLOAD_V3_20211116_010520.dmp query=\"WHERE EVENT_ID =\'859002205'\" logfile=impdp_exdmp_PRO_PAYLOAD_V3_20211116.log remap_schema=proapp:POMAPP remap_tablespace=DATAL03:DATAL01,IXL01:DATAL01 CONTENT=DATA_ONLY & 
   
2. source FILE : exdmp_PRO_PAYLOAD_V3_20211117_.dmp, 
   dgn query=\"WHERE EVENT_ID = \'859043564\'\"
   
    nohup impdp system/oracle@ODPOM directory=NEW_DUMP dumpfile=exdmp_PRO_PAYLOAD_V3_20211117_010520.dmp query=\"WHERE EVENT_ID =\'859043564'\" logfile=impdp_exdmp_PRO_PAYLOAD_V3_20211117.log remap_schema=proapp:POMAPP remap_tablespace=DATAL03:DATAL01,IXL01:DATAL01 CONTENT=DATA_ONLY &
   
3. source FILE : exdmp_PRO_PAYLOAD_V3_20211118_.dmp, 
   dgn query=\"WHERE EVENT_ID in \(\'859014116\',\'859022868\',\'859022465\',\'859023178\',\'859022476\',\'859022845\',\'859022596\',\'859022462\',\'859022883\',\'859022861\',\'859032775\',\'859032440\',\'859031934\',\'859032462\',\'859032704\',\'859032413\',\'859032496\',\'859034661\',\'859037356\',\'859039055\',\'859039768\'\)\"
4. source FILE : exdmp_PRO_PAYLOAD_V3_20211119_.dmp, 
   dgn query=\"WHERE EVENT_ID in \(\'859053632\',\'859055555\',\'859057423\',\'859062848\'\)\"  
5. source FILE : exdmp_PRO_PAYLOAD_V3_20211120_.dmp, 
   dgn query=\"WHERE EVENT_ID in \(\'859010144\',\'859058395\'\)\"
   
6.
Met pagi tim dba boleh mintol import PRO_PAYLOAD_V3 ke user POMAPP db ODPOMC dgn source :
file : exdmp_PRO_PAYLOAD_V3_20211204_010523.dmp , parameter query=\"WHERE EVENT_ID in\(\'862715434\',\'862715435\',\'862715422\',\'862716292\',\'862716150\'\)\"


 
 nohup impdp system/oracle@ODPOM directory=DUMP_NFS dumpfile=exdmp_PRO_PAYLOAD_V3_20211204_010523.dmp query=\"WHERE EVENT_ID =\'862715434\',\'862715435\',\'862715422\',\'862716292\',\'862716150\'\" logfile=impdp_exdmp_PRO_PAYLOAD_V3_20211204_010523.log remap_schema=proapp:POMAPP remap_tablespace=DATAL03:DATAL01,IXL01:DATAL01 CONTENT=DATA_ONLY &
 
 7. met sore tim DBA boleh mintol import table PRO_PAYLOAD_V3 ke user POMAPP db ODPOMC
1.  source file : exdmp_PRO_PAYLOAD_V3_20210825_*.dmp
 dgn. parameter query=\"WHERE EVENT_ID =\'844532830\'\"
2.  source file : exdmp_PRO_PAYLOAD_V3_20210908_*.dmp
 dgn. parameter query=\"WHERE EVENT_ID =\'847471814\'\"
 
 
 nohup impdp system/oracle@ODPOM directory=DUMP_NFS dumpfile=exdmp_PRO_PAYLOAD_V3_20210822_010533.dmp query=\"WHERE EVENT_ID =\'844532830\'\" logfile=impdp_exdmp_PRO_PAYLOAD_V3_20210822_010533.log remap_schema=proapp:POMAPP remap_tablespace=DATAL03:DATAL01,IXL01:DATAL01 CONTENT=DATA_ONLY &
 
  nohup impdp system/oracle@ODPOM directory=DUMP_NFS dumpfile=exdmp_PRO_PAYLOAD_V3_20210908_010535.dmp query=\"WHERE EVENT_ID =\'847471814\'\" logfile=impdp_exdmp_PRO_PAYLOAD_V3_20210908_010535.log remap_schema=proapp:POMAPP remap_tablespace=DATAL03:DATAL01,IXL01:DATAL01 CONTENT=DATA_ONLY &
  
  select * from PROAPP.PRO_PAYLOAD_V3
WHERE event_ID='844532830';

8. met pagi tim DBA boleh mintol import table PRO_PAYLOAD_V3 ke user POMAPP db ODPOMC
  source file : exdmp_PRO_PAYLOAD_V3_20211223_*.dmp
 dgn. parameter query=\"WHERE EVENT_ID =\'865557158\'\"
 
9.
met siang tim DBA boleh mintol import table PRO_PAYLOAD_V3 ke user POMAPP db ODPOMC
  source file : exdmp_PRO_PAYLOAD_V3_20211218_*.dmp
 dgn. parameter query=\"WHERE EVENT_ID =\'864664307\'\"
 
Terima kasih