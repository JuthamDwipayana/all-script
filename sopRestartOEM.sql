sop restart oms 13c:
---------------------
steps restart oms oem:
cd /data/OEM12C/middleware_new/bin/
./emctl status oms
./emctl stop oms -all
nb: makesure db dan listener up
./emctl start oms 
./emctl status oms