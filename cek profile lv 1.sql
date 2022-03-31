set lines 200
col resource_name for a32
col profile for a32
col limit for a32
set pagesize 300
select profile, resource_name, limit from dba_profiles where profile like 'LEVEL1';