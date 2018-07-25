SET hive.exec.dynamic.partition=true;
SET hive.exec.dynamic.partition.mode=nonstrict;

insert overwrite table CDW_SAPP_D_BRANCH
partition(BRANCH_STATE)
SELECT BRANCH_CODE,BRANCH_NAME, BRANCH_STREET, BRANCH_CITY, BRANCH_ZIP, BRANCH_PHONE, LAST_UPDATED, BRANCH_STATE
FROM CDW_SAPP_D_BRANCH_static;
