SET hive.exec.dynamic.partition=true;
SET hive.exec.dynamic.partition.mode=nonstrict;

insert overwrite table CDW_SAPP_D_CUSTOMER
partition(CUST_STATE)
SELECT CUST_F_NAME,CUST_M_NAME,CUST_L_NAME,CUST_SSN,CUST_CC_NO,CUST_STREET,CUST_CITY,CUST_COUNTRY,CUST_ZIP ,CUST_PHONE,CUST_EMAIL,LAST_UPDATED,CUST_STATE
FROM CDW_SAPP_D_CUSTOMER_static;

