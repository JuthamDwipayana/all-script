Create user di SELVIOTT (mindep)

CREATE USER ISADBOTT IDENTIFIED BY isadbott#2021
ALTER USER SYSTEM PROFILE LEVEL2;
GRANT CONNECT, RESOURCE to isadbott;

GRANT SELECT ON USR_510.PC_ACCT TO ISADBOTT;
GRANT SELECT ON USR_510.PC_PTN_PROP TO ISADBOTT;
GRANT SELECT ON USR_510.PC_PARTNER TO ISADBOTT;
GRANT SELECT ON BILL_651.BB_BILL_CHARGE_DAY TO ISADBOTT;

GRANT CREATE PROCEDURE TO ISADBOTT;
GRANT CREATE TABLE TO ISADBOTT;
GRANT CREATE VIEW TO ISADBOTT;


create tablespace TBS_SERVICE_DATA_ISA datafile '+DG_DATA' size 1M autoextend on next 100M maxsize 3G;
create tablespace TBS_META_DATA datafile '+DG_DATA' size 1M autoextend on next 100M maxsize 3G;

ALTER USER ISADBOTT QUOTA UNLIMITED ON TBS_META_DATA;
ALTER USER ISADBOTT QUOTA UNLIMITED ON TBS_SERVICE_DATA_ISA;


------- create user di opesb dan odpux
tr_user - > usr_tdw
tr_user - > usr_tdwpre
esbpapp - > usr_tdw
preprod_activeoffe - > usr_tdw_pre


ODUXP
tr_user - > usr_tdwdev
uat_activeoffer - > usr_tdwuat_activeoffer

---tracklogin

CREATE USER "usr_tdw" PROFILE "LEVEL2" IDENTIFIED BY "usr_tdw#2021" DEFAULT TABLESPACE "DATA_TRACK_LOGIN" TEMPORARY TABLESPACE "TEMP" QUOTA UNLIMITED ON "DATA_TRACK_LOGIN" QUOTA UNLIMITED ON "DATA_TRACK_LOGIN_2020" QUOTA UNLIMITED ON "DATA_TRACK_LOGIN_2021" ACCOUNT UNLOCK
GRANT CREATE ANY TABLE TO "usr_tdw"
GRANT CREATE VIEW TO "usr_tdw"
GRANT UNLIMITED TABLESPACE TO "usr_tdw"
GRANT READ ON DIRECTORY "SYS"."APPEXP" TO "usr_tdw"
GRANT WRITE ON DIRECTORY "SYS"."APPEXP" TO "usr_tdw"
GRANT "CONNECT" TO "usr_tdw"
GRANT "RESOURCE" TO "usr_tdw"

CREATE USER "usr_tdwpre" PROFILE "LEVEL2" IDENTIFIED BY "usr_tdwpre#2021" DEFAULT TABLESPACE "DATA_TRACK_LOGIN" TEMPORARY TABLESPACE "TEMP" QUOTA UNLIMITED ON "DATA_TRACK_LOGIN" QUOTA UNLIMITED ON "DATA_TRACK_LOGIN_2020" QUOTA UNLIMITED ON "DATA_TRACK_LOGIN_2021" ACCOUNT UNLOCK
GRANT CREATE ANY TABLE TO "usr_tdwpre"
GRANT CREATE VIEW TO "usr_tdwpre"
GRANT UNLIMITED TABLESPACE TO "usr_tdwpre"
GRANT READ ON DIRECTORY "SYS"."APPEXP" TO "usr_tdwpre"
GRANT WRITE ON DIRECTORY "SYS"."APPEXP" TO "usr_tdwpre"
GRANT "CONNECT" TO "usr_tdwpre"
GRANT "RESOURCE" TO "usr_tdwpre"

--- inbox---
CREATE USER "ESBPAPP" PROFILE "LEVEL2" IDENTIFIED BY "*******" DEFAULT TABLESPACE "DATA" TEMPORARY TABLESPACE "TEMP" ACCOUNT UNLOCK
GRANT CREATE TABLE TO "ESBPAPP"
GRANT UNLIMITED TABLESPACE TO "ESBPAPP"
GRANT DELETE ON "ACTIVEOFFER"."INBOX" TO "ESBPAPP"
GRANT INSERT ON "ACTIVEOFFER"."INBOX" TO "ESBPAPP"
GRANT SELECT ON "ACTIVEOFFER"."INBOX" TO "ESBPAPP"
GRANT UPDATE ON "ACTIVEOFFER"."INBOX" TO "ESBPAPP"
GRANT ALTER ON "ACTIVEOFFER"."SEQ_INBOX" TO "ESBPAPP"
GRANT SELECT ON "ACTIVEOFFER"."SEQ_INBOX" TO "ESBPAPP"
GRANT "CONNECT" TO "ESBPAPP"
GRANT "RESOURCE" TO "ESBPAPP"


CREATE USER "usr_tdw_pre" PROFILE "LEVEL2" IDENTIFIED BY "usr_tdw_pre#2021" DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP" ACCOUNT UNLOCK
GRANT UNLIMITED TABLESPACE TO "usr_tdw_pre"
GRANT SELECT ON "ACTIVEOFFER"."INBOX" TO "usr_tdw_pre"
GRANT "CONNECT" TO "usr_tdw_pre"
GRANT "RESOURCE" TO "usr_tdw_pre"

----bash PROFILE# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
 . ~/.bashrc
fi

# User specific environment and startup programs

ORACLE_HOME=/apps/oracle/client/12.1.0/client_1
LD_LIBRARY_PATH=$ORACLE_HOME/lib
PATH=$PATH:$HOME/.local/bin:$HOME/bin:$ORACLE_HOME/bin


CREATE USER apmdt PROFILE "LEVEL2" IDENTIFIED BY apmdt#202112 default tablespace USERS temporary tablespace TEMP ACCOUNT UNLOCK;

GRANT CREATE SESSION, SELECT_CATALOG_ROLE TO apmdt;