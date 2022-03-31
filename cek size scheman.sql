set lines 300
col username for a35
select  username, 
from dba_users 
where username in ('RAFM_C2P')
group by username
order by username;