SET hive.exec.dynamic.partition=true;
SET hive.exec.dynamic.partition.mode=nonstrict;

insert overwrite table CDW_SAPP_D_CREDIT_CARD
partition(TRANSACTION_TYPE)
SELECT CUST_CC_NO, TIMEID, CUST_SSN, BRANCH_CODE, TRANSACTION_VALUE, TRANSACTION_ID, TRANSACTION_TYPE
FROM CDW_SAPP_D_CREDIT_CARD_static;
