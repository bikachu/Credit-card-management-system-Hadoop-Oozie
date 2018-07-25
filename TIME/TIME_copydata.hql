SET hive.exec.dynamic.partition=true;
SET hive.exec.dynamic.partition.mode=nonstrict;

insert overwrite table CDW_SAPP_D_TIME
partition(QUARTER)
SELECT TIMEID, DAY, MONTH, YEAR, QUARTER
FROM CDW_SAPP_D_TIME_static;

