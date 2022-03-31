--Check the database size physical consume on disk.

select sum(bytes)/1024/1024 size_in_mb from dba_data_files;
select sum (bytes/1024/1024/1024) "Datafile (GB)" from dba_data_files;

--cek the total space used by data.

select sum(bytes)/1024/1024 size_in_mb from dba_segments;

--Check the size of User or Schema in Oracle.

select owner, sum(bytes)/1024/1024 Size_MB from dba_segments group by owner;

---Check free space and used space in database.

select
"Reserved_Space(MB)", "Reserved_Space(MB)" - "Free_Space(MB)" "Used_Space(MB)","Free_Space(MB)"
from(
select
(select sum(bytes/(1014*1024)) from dba_data_files) "Reserved_Space(MB)",
(select sum(bytes/(1024*1024)) from dba_free_space) "Free_Space(MB)"
from dual );

--Check overall size of database plus tempfiles plus redo file. yg biasa dipake temen2--

select
( select sum(bytes)/1024/1024/1024 data_size from dba_data_files ) +
( select nvl(sum(bytes),0)/1024/1024/1024 temp_size from dba_temp_files ) +
( select sum(bytes)/1024/1024/1024 redo_size from sys.v_$log ) +
( select sum(BLOCK_SIZE*FILE_SIZE_BLKS)/1024/1024/1024 controlfile_size from v$controlfile) "Size in GB"
from
dual;
--

--Following Queries for CDB and PDB databases

--Check the PDB Size of database

select con_id, name, open_mode, total_size from v$pdbs;

--Check the CDB Size of database

select sum(size)/1024/1024/1024 from cdb_data_files;

--check size TABLE
select segment_name,segment_type, sum(bytes/1024/1024/1024) GB
 from dba_segments
 where segment_name='PRO_PAYLOAD_V3' 
group by segment_name,segment_type; 

---cek owner
select owner, object_name from dba_objects where object_name='TRACK_LOGIN_SEQ';

---cek size table partition

 You can get partition sizing information from dba_segments:

select
    sum(bytes/1024/1024)
from
    dba_segments
where
    segment_name='RECORD_SET_STAT';

select
    owner,
    segment_name,
    partition_name,
    segment_type,
    bytes / 1024/1024 "MB"
from
    dba_segments
where
    segment_name= 'ACTIVE_OFFER';  

select
    owner,
    segment_name,
    partition_name,segment_type,bytes/1024/1024 "MB"
from
    dba_segments
where
    segment_type = 'TABLE PARTITION';  