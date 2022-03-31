set linesize 200
set pagesize 600
col machine for a40
col username for a30
SELECT inst_id,MACHINE, USERNAME, PROGRAM, COUNT(*) FROM GV$SESSION GROUP BY MACHINE, USERNAME,inst_id, PROGRAM ORDER BY COUNT(*) DESC;
