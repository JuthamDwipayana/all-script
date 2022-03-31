1. Contoh create Index OPCMC.

[oracle@exa62pdb1-mgt ~]$ more create_index.sql 
SPOOL output.log
set timing on
alter session set current_schema=CAMPAIGN_TRACKING;

CREATE INDEX camp_status_idx ON CMS_CAMPAIGNS_V4
(camp_status)
LOGGING
TABLESPACE CAMPAIGN_TRACKING
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;

SPOOL off
NOPARALLEL;

[oracle@exa62pdb1-mgt ~]$ 

------------------------------------------------------------------------------------------------------------------------------------------------

2. drop index

DROP INDEX SCHEMA.INDEX_NAME; ---> pakai ini kalau masuk pakai sys
DROP INDEX NAMA_INDEX; --> kalau masuk pakai usernya
drop index IDX_AO_RNFLG_LATFLG_STCD_RTRY; --contoh





CREATE INDEX TR_USER.TRACK_LOGIN_IX2 ON TR_USER.TRACK_LOGIN (MSISDN, CHANNEL) TABLESPACE DATA LOCAL PARALLEL (degree 16);

DROP INDEX TR_USER.TRACK_LOGIN_INDEX3;







