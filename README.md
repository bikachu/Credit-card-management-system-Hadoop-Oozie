# Credit-card-management-system-Hadoop-Oozie
This project use Oozie to automate the importing used by Sqoop &amp; Hive

Ooize will automate the jobs completed by Sqoop and Hive: 
 - import data from RMDBS to HDFS
 - Create table in Hive
 - update and run at set frequency
 
 --------------------
 Before running oozie job:
  -create sqoop jobs
 
-------------------
Each folder contains six files:
1. static table:

   This file contain the Hive query to build a static table in HIVE.
   
   
2. Dynamic table:

   This file contain the Hive query to build a dynamic partitioned table from static stable.


3. workflow:

   This file contains the jobs information for sqoop job. hive tables etc.
   
4. copydata:

   This is the insert statement to load the data from static table to dynamic table.
   
5. coordinator:

   This is the file to set the update frequency and running time.
   
6. job.properties:

   This is the configration for the whole task.
   
   
