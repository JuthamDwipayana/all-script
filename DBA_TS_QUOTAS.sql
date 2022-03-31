select tablespace_name, username, bytes, max_bytes from dba_ts_quotas where tablespace_name = 'USERS' and username = 'FOOBAR';

