select
   status,username,
   count(*)
from
   gv$session
where
   username is not null and username  not in ('SYS','DBSNMP')
group by
   status,username;