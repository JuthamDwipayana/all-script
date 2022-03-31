set lines 500 pages 500
col INST_ID for a40
col resource_name for a20
col current_utilization for a20
col max_utilization for a20
col limit_value for a20
select INST_ID,resource_name, current_utilization, max_utilization, limit_value from gv$resource_limit where resource_name in ('sessions', 'processes');