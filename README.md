# Credit-card-management-system-Hadoop-Oozie
This project use Oozie to automate the importing used by Sqoop &amp; Hive

Ooize will automate the jobs completed by Sqoop and Hive: 
 - import data from RMDBS to HDFS
 - Create table in Hive
 - update and run at set frequency
 
 --------------------
 
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
   
   
   -------------

To test this project:

1. Please create a directory CREDIT_CARD_OOZIE_FILES under maria_dev, and 4 subdirectories under CREDIT_CARD_OOZIE_FILES.

The 4 subdirectories are:
 
                                     BRANCH
                                     CREDITCARD
                                     CUSTOMER
                                     TIME
                                     
                                     
Under each subdirectory, take BRANCH as an example, has 7 files, which are :
                                      
                                      BRANCH_coordinator.xml
                                      BRANCH_copydata.hql
                                      BRANCH_job.properties
                                      BRANCH_workflow.xml
                                      BranchJob.txt
                                      CDW_SAPP_D_BRANCH.hive
                                      CDW_SAPP_D_BRANCH_static.hive
 
 You can put BRANCH_job.properties in a different folder.
 
 2. Open sqoop metastore and create sqoop jobs. Each table should have its own sqoop jobs, therefore 4 sqoop jobs need be created,
 The job detail is in the following files:
 
                                      Branchjob.txt
                                      Creditcardjob.txt
                                      Customerjob.txt
                                      Timejob.txt
  
  3. After you create the jobs, then you can run it in oozie:
                                      
                                       
                                      oozie job --oozie http://localhost:11000/oozie -config BRANCH_workflow.xml -run
                                      oozie job --oozie http://localhost:11000/oozie -config CREDITCARD_workflow.xml -run
                                      oozie job --oozie http://localhost:11000/oozie -config CUSTOMER_workflow.xml -run
                                      oozie job --oozie http://localhost:11000/oozie -config TIME_workflow.xml -run

   
   
