module github.com/dependabot/git

- name: Cache
  uses: actions/cache@v3.2.1
  with:
    # A list of files, directories, and wildcard patterns to cache and restore
    path: 
    # An explicit key for restoring and saving the cache
    key: 
    # An ordered list of keys to use for restoring stale cache if no cache hit occurred for key. Note `cache-hit` returns false in this case.
    restore-keys: # optional
    # The chunk size used to split up large files during upload, in bytes
    upload-chunk-size: # optional

go 1.18
- name: Cache

  uses: actions/cache@v3.2.1
  with:
    # A list of files, directories, and wildcard patterns to cache and restore
    path: 
    # An explicit key for restoring and saving the cache
    key: 
    # An ordered list of keys to use for restoring stale cache if no cache hit occurred for key. Note `cache-hit` returns false in this case.
    restore-keys: # optional
    # The chunk size used to split up large files during upload, in bytes
    upload-chunk-size: # optional
    
    - name: Cache
  uses: actions/cache@v3.2.1
  with:
    # A list of files, directories, and wildcard patterns to cache and restore
    path: 
    # An explicit key for restoring and saving the cache
    key: 
    # An ordered list of keys to use for restoring stale cache if no cache hit occurred for key. Note `cache-hit` returns false in this case.
    restore-keys: # optional
    # The chunk size used to split up large files during upload, in bytes
    upload-chunk-size: # optional
    
    Zoho.com

DataPrep
CRM
Creator
Books
Desk
All Products
My Account
SIGN OUT
ZOHOAnalytics
My Account
SIGN OUT
Platform
Features
Solutions
Pricing
Success Stories
Resources
Analytics
Platform
Features
Solutions
Pricing
Success Stories
Resources
Overview
Getting Started with Zoho Analytics
What's New
Workspace
What is a Table?
Import/Connect to DataFrom Files
From Feeds
From Cloud Storage
From Cloud DatabasesAmazon RDSMySQL
SQL Server
Oracle
PostgreSQL
Maria DB
Amazon Aurora MySQL
Amazon Aurora PostgreSQL
Amazon Redshift
Amazon Athena
Microsoft Azure
Google BigQuery
Google Cloud SQL
Snowflake
Oracle Cloud
IBM Cloud
Heroku PostgreSQL
Panoply
Singlestore
MongoDB Atlas
Other Cloud Databases
From Local Databases
From Zoho Apps
From Business Apps
Enter Data Right Away
From Zoho Analytics Workspace
Using Zoho Analytics API
Business Apps Analytics
Data Modelling and Preparation
Creating Reports
Dashboards
Analyze Data
Ask Zia
Managing Users
Sharing and Publishing
Data StoryTelling
Mobile Apps
Zoho Analytics API
Embedded Analytics and White Label Solutions
Blogs and Solutions
Contact Us
Home
Import/Connect to Data
From Cloud Databases
Amazon RDS
MySQL
Import data from Amazon RDS MySQLIf you have your data stored in Amazon RDS MySQL Cloud Database, then you can easily import your data into Zoho Analytics for reporting & analysis. Zoho Analytics allows you to either import the data into Zoho Analytics or connect directly with the Amazon RDS MySQL server.

Data Import: Data in Amazon RDS MySQL will be imported and stored in Zoho Analytics. You can setup periodic schedules to fetch the latest data automatically from your Amazon RDS MySQL database. Report loading time will be faster as the data is stored in Zoho Analytics.
Live Connect: In this mode, data will not be fetched from Amazon RDS MySQL and stored in Zoho Analytics. Instead for the reports that you create Zoho Analytics will generate appropriate queries that will connect the required data live from Amazon RDS MySQL to Zoho Analytics and show you the report. In this case the loading time will directly depend on the performance of Amazon RDS MySQL.
Please note that the Live Connect option is exclusively available for paid plans and trials only. Refer to the Live Connect section to learn. 

Data ImportPreamble: Why should I allowlist Zoho Analytics IP address and how do I do it?
How do I import data from the Amazon RDS MySQL database?
How can I edit the setup?
How long does it take for the data to be imported into Zoho Analytics?
Can I import data from Views created in Amazon RDS MySQL (apart from Tables) into Zoho Analytics?
Will foreign keys defined between my tables in the Amazon RDS MySQL database be linked in Zoho Analytics as well?
Can I change the data type of the columns in Zoho Analytics?
I have connected to a database and imported a few tables into Zoho Analytics. Can I add more tables from the same source to the existing connection?
Can I import data from Amazon RDS MySQL database into an existing table in Zoho Analytics?
I have synced data from a database into a table. Can I change the data source of this table?
I have synced data from a database into multiple tables in this workspace? Can I remove the data source for a single table?
Can I import data from my Amazon RDS MySQL database into an existing Zoho Analytics workspace?
Can I synchronize the data from my Cloud Database instantly?
The Last Data Sync Status in Datasources page shows Sync Failed. How do I resolve it?
How do I remove the Setup?
Live ConnectPreamble: Why should I allowlist Zoho Analytics IP address and how do I do it?
How do I connect live with the Amazon RDS MySQL database?
How can I edit the live connect setup?
How is Live Connect different from Data Import?
How long does it take for me to visualize my data in Zoho Analytics?
Will the reports/dashboards query hit my database server every time I open it or can it be cached in Zoho Analytics?
Can I connect Views created in Amazon RDS MySQL (apart from Tables) to Zoho Analytics?
Will foreign keys defined between my tables in Amazon RDS MySQL database be linked in Zoho Analytics as well?
Can I link the related tables, connected from the Cloud Database using the Live Connect option, in Zoho Analytics?
I got an alert message "This view cannot be accessed due to some changes made in the table" while accessing my tables/reports in Zoho Analytics. What should I do?
What is a Mismatch?
When do Mismatches occur and how to resolve them?
Can I synchronize the meta data of the table from my Cloud Database instantly?
Can I connect the new columns added in my Amazon RDS MySQL database to Zoho Analytics?
Can I change the data type of the columns in Zoho Analytics?
Can I import data from other data sources into the same workspace that I have used to connect with Amazon RDS MySQL?
Can I create Query Tables over the Amazon RDS MySQL data?
What happens when I delete or rename the database in Amazon RDS MySQL?
How do I delete a view from a workspace?
How to restore a deleted view in the workspace?
How do I remove the Setup?
What are the limitations of Amazon RDS MySQL Live Connect?
Troubleshooting TipsI get an error message "Sorry, there is a problem in connecting to your cloud data source. Check your connection details and try again." What should I do?
I get an error message “Cannot connect to the specified endpoint/hostname. Please check if the specified endpoint/hostname is configured as publicly accessible” when trying to connect to Amazon RDS database. What should I do?
I am unable to find the Live Connect option while importing data into Zoho Analytics. What could be the possible reasons?
Data Import1. Preamble: Why should I allowlist Zoho Analytics IP addresses and How do I do it? Note: Click to view the entire list of IP addresses that needs to be allowlisted.
2. How do I import data from the Amazon RDS MySQL database?3. How can I edit the setup?4. How long does it take for the data to be imported into Zoho Analytics? After setup, you might have to wait sometime for the initial fetch to happen. This depends upon the amount of data to be imported into Zoho Analytics and also the response time of your Amazon RDS MySQL server. You will receive an email notification once the import is complete. Please note that, if you access the workspace before the initial fetch, it will not display any data.

5. Can I import data from Views created in Amazon RDS MySQL (apart from Tables) into Zoho Analytics?Yes, you can import data from Tables as well as Views available in your Amazon RDS MySQL database into your Zoho Analytics workspace.

6. Will foreign keys defined between my tables in the Amazon RDS MySQL database be linked in Zoho Analytics as well? When importing multiple tables, the foreign keys defined between the tables in Amazon RDS MySQL database will be linked in Zoho Analytics. The foreign keys will be created as Look-up columns in Zoho Analytics. 

If you import data from one table at a time (choosing single table option) then the foreign keys will not be defined. However, you can manually link the tables in Zoho Analytics using the Look-up column feature. Click here to learn about the Look-up column feature.

7. Can I change the data type of the columns imported in Zoho Analytics? Yes, you can change the data type of the columns imported into Zoho Analytics. However it is necessary that the data type of your column is compatible with the data type of the column in your Amazon RDS MySQL database for successful data synchronizations. It is always recommended that you change the data type in both your Amazon RDS MySQL database as well as your Zoho Analytics workspace.

8. I have connected to a database and imported a few tables into Zoho Analytics. Can I add more tables from the same source to the existing connection?Yes, you can add tables from the same source to the existing connection. Follow the below steps:

From your Amazon RDS MySQL workspace, navigate to Create > New Table / Import Data.
Click the Cloud Databases option. The Connect to Cloud Database wizard will open.
From the Connection name drop down menu, select the existing Amazon RDS MySQL database name.
The rest of the steps are similar to importing data from cloud database.
Note: In case you change the schedule interval while importing the tables, the same intervals will be applied to already imported tables as well.
9. Can I import data from Amazon RDS MySQL database into an existing table in Zoho Analytics?Yes, you can import data into an existing table if you are importing from the same source database as the imported table. 

From the required table, click Import Data > Import Data into this Table.
The Select Data to Import tab of the Import wizard will open. 
You can choose to import from the same table or a different table using the Select Table option, or import using the Custom Query.
 
The rest of the steps are similar to importing from a single table.
10. I have synced data from Amazon RDS MySQL database into a table. Can I change the data source of this table?Yes, you can change the data source of a table, into which the Amazon RDS MySQL database has been synced. To do this,

Open the workspace.
Click the Data Sources tab from the left bar. 
All the data sources for this workspace will be listed. Click the data source you want to edit.
The Data Sources page will open. Click the Edit Connection link.
In the Cloud Database - Edit Connection dialog that opens, modify the data source.
Click Save to implement the changes made.
11. I have synced data from a database into multiple tables in this workspace? Can I remove the data source for a single table?Yes, you can remove the data source for a single table from this data source. Follow the below steps to do this.

Open the workspace.
Click the Data Sources tab from the left bar. 
All the data sources for this workspace will be listed. Click the data source you want to edit.
The Data Sources page will open, listing all the tables synced from the data source. 
Hover the mouse over the table which you want to remove.  A contextual menu will open. 
Click Trash icon. Data synchronization will be removed for this table alone. You can choose to synchronize data from other sources, or manually import data into this table as needed. For the rest of the tables, the same data source will continue to be in sync. 
12. Can I import data from my Amazon RDS MySQL database into an existing Zoho Analytics workspace?Yes. Follow the below steps to import data into an existing workspace:

Open the workspace into which you wish to import the data.
Navigate through Create > New Table / Import Data. 
Click the Cloud Databases option.
Configuring the import will be similar to the steps followed in this presentation.
13. Can I synchronize the data from my Cloud Database instantly?  Yes, you can synchronize your data from Cloud Database instantly when needed. 

To synchronize your data instantly:

Open the required workspace.
From the home page, click the Data Sources tab. 
In the Data Sources page that opens, click the Sync Now link.
Note: This option can be used to a maximum of five times per day.
14. The Last Data Sync Status in Datasources page shows Sync Failed. How do I resolve it?You can resolve your sync failure by understanding the reason behind the failure. There are two methods to know the reason for the sync failure:

Method 1:

Open the required workspace.
Click the Data Sources tab from the left bar. 
All the data sources for this workspace will be listed. Click the data source that has failed to sync.
The Data Sources page will open. Click the View Last Import Details icon that appears on mouse over of each table row. 
The Import Details pop-up page will open. You will find the reason for your failure in the Details section. Take the necessary action based on the reason provided.
Method 2:

Open the corresponding table.
Navigate through Import Data > Last Import Details.
The Import Details pop-up page will open. You will find the reason for your failure in the Details section. Take the necessary action based on the reason provided.
15. How do I remove the Setup?To remove the setup,

Open the required workspace.
Click the Data Sources tab from the left bar.
All the data sources for this workspace will be listed. Click the Amazon RDS MySQL data source that you want to remove.
In the Data Sources tab that opens, click the Settings icon inline to the data source name on the right.
Click the Remove Data Source option from the drop-down menu.
Please note that the data source connection will be removed, but the tables and the data will be retained in the workspace. As the data source connected is removed, no further synchronization will happen.  

Live Connect1. Preamble: Why should I allowlist Zoho Analytics IP addresses and How do I do it? Note: Click to view the entire list of IP addresses that needs to be allowlisted.
2. How do I connect live with the Amazon RDS MySQL database?3. How can I edit the live connect setup? 
4. How is Live Connect different from Data Import?Tabulated below are the differences between the Data Import feature and Live Connect feature.

Data ImportLive ConnectData in Amazon RDS MySQL will be imported and stored in Zoho Analytics.Data from Amazon RDS MySQL will be fetched live using appropriate reporting queries whenever you create or access a report in Zoho Analytics.Filtered data set can be imported from Amazon RDS MySQL using customized queries.Custom Query feature is not available in Amazon RDS MySQL Live Connect. However, you can create Views in the source database and connect the same with Zoho Analytics.Multiple data sources (apart from Amazon RDS MySQL) can be imported into the same workspace and they can be combined for reporting & analysis purpose.Cannot import data from any other data source into the same workspace in which Live Connect from Amazon RDS MySQL is setup.Changes made to the columns such as addition/deletion will be synchronized automatically.Any changes such as column addition/deletion/renaming will not be reflected. You will have to manually map the data using the Sync Design option.When importing multiple tables, the foreign keys defined between the tables in the Amazon RDS MySQL database will not be linked in Zoho Analytics. However, you can manually link the tables in Zoho Analytics using the Look-up column feature.Look-up relationship will be automatically created for tables that are linked via foreign keys in the Amazon RDS MySQL database. You can also manually link the tables in Zoho Analytics using Look-up column feature.Users can create query tables.Users cannot create query tables.Report loading time will be fast as the data is stored in Zoho Analytics.Report loading time directly depends on the Amazon RDS MySQL server response time and the amount of data in Amazon RDS MySQL.
5. How long does it take for me to visualize my data in Zoho Analytics?As there is no data import process involved, the loading time depends upon the amount of data stored in your Amazon RDS MySQL database and also the response time of your Amazon RDS MySQL server.

6. Will the reports/dashboards query hit my database server every time I open it or can it be cached in Zoho Analytics?
(or) Can I store a cache of my data points in Zoho Analytics to get quick access to my views?Zoho Analytics allows you to create a local cache of reports, created over your live connect database. This will increase the speed of loading reports as it will reduce the data fetching time from your live databaseTo enable cache for your live connect workspace, please follow the below steps:

From your Workspace Explorer, click Settings from the side menubar.
In the General - Workspace Settings page that opens, choose Yes for Enable Cachefor this Workspace.
In Cache Refresh Interval in Minutes, specify the duration to refresh the report .
Click Save & Close.
A cache for the reports will be created for the Workspace.

Note:Enabling cache will help create a cache for your reports in the workspace. This data will get updated periodically based on the time provided in the Cache Refresh Interval in Minutes. 
You can create a cache only for the reports, and not for tables in the workspace.
This option is available only for Live Connect.
7. Can I connect Views created in Amazon RDS MySQL (apart from Tables) to Zoho Analytics?Yes, you can connect with both Views and Tables created in Amazon RDS MySQL to Zoho Analytics.

8. Will foreign keys defined between my tables in Amazon RDS MySQL database be linked in Zoho Analytics as well?Yes. In case you have linked two or more tables in your Amazon RDS MySQL database using foreign keys, they will be linked automatically using a Look-up column in Zoho Analytics as well. You can also manually create a lookup relationship among the imported tables in Zoho Analytics.

Note: The lookups created/modified in the added (linked with Zoho Analytics) tables will not be reflected in Zoho Analytics (even with Sync Design option). You need to manually create the lookup in Zoho Analytics. However, the lookup information will be created in Zoho Analytics when new tables are linked.
9. Can I link the related tables, connected from the Cloud Database using the Live Connect option, in Zoho Analytics?Yes, you can link the related tables in Zoho Analytics using the lookup column feature. Learn more.

Note: You will not be able to create Query Tables if you have setup the workspace using the Amazon RDS MySQL Live Connect option as this option does not fetch and store the data locally in Zoho Analytics.
The Join Tables (lookup column) option will not be available in the Import Wizard. You can create a lookup relation only on the imported tables.
10. I got an alert message "This view cannot be accessed due to some changes made in the table" while accessing my tables/reports in Zoho Analytics. What should I do?This alert message will be displayed when Zoho Analytics is not able to access the information from Amazon RDS MySQL. This could be because the tables/columns that you are trying to access in Zoho Analytics is deleted or renamed in Amazon RDS MySQL.

In this case, it is recommended that you remap the table/column. Refer to this presentation to know how to remap a table.

10. What is a Mismatch?When you have created reports in Zoho Analytics over the tables or columns which no longer have a direct mapping in Amazon RDS MySQL database, it will be listed as mismatch. 

So, ensure that the tables/columns in Zoho Analytics workspace and Amazon RDS MySQL database matches. The tables/columns that do not match will be listed in the Mismatch tab of the Amazon RDS ConnectionSettings page. Refer the next question to know more about mismatch.

11. When do Mismatches occur and how to resolve them?13. Can I synchronize the meta data of the table from my Cloud Database instantly?  Yes, you can synchronize the meta data of the table from Cloud Database instantly when needed. 

To synchronize the meta data instantly:

From the workspace explorer, click the Data Sources tab.
You will get navigated to the Amazon RDS MySQL Connection Settings page. All the tables available in the workspace will be listed.
Mouse over the required table. The option to sync the table will be displayed inline to the table name.
Click the Sync link inline to the table name.
The table meta data from the Cloud Database will get instantly synchronized in Zoho Analytics table. 
Note: You can also synchronize all the tables available in the workspace with your Amazon RDS MySQL data using the Sync Design button.
14. Can I connect new columns added in my Amazon RDS MySQL database to Zoho Analytics?Yes, you can connect the new columns that are added in your Amazon RDS MySQL database to Zoho Analytics from the Amazon RDS MySQL Connection Settings page. Refer to this presentation to know more.

Note: If there exists a mismatch between the already available data in your Zoho Analytics workspace and your Amazon RDS MySQL database, Zoho Analytics will NOT be able to fetch the new column information. In this case, you need to first resolve the mismatches to connect to the new columns.

15. Can I change the data type of the columns in Zoho Analytics?No, you cannot change the data type of the columns in Zoho Analytics.

16. Can I import data from other data sources into the same workspace that I have used to connect with Amazon RDS MySQL?No, you cannot import data from other data sources into the same workspace that you have used to connect with Amazon RDS MySQL.

17. Can I create Query Tables over the Amazon RDS MySQL data?No, you will not be able to create Query Tables if you have setup the workspace using the Amazon RDS MySQL Live Connect option. This is because this option does not fetch and store the data locally in Zoho Analytics. If you wish to create Query Tables, you can create the required query as a view in the data source and connect the same with Zoho Analytics.

18. What happens when I delete or rename the database in Amazon RDS MySQL?When you delete or rename a database in Amazon RDS MySQL, Zoho Analytics loses its connectivity with Amazon RDS MySQL. Thereafter, a warning message, as shown below, would be displayed. This error message will also be displayed if there are any connectivity issues or if your Amazon RDS MySQL credentials have expired.


For more information regarding the same, refer to the Edit Connection presentation.

19. How do I delete a view from a workspace?You can easily delete a view from a live connect workspace, by following the below steps:

Click the More Actions icon that appears on mouse-over the view name.
Click the Delete option from the drop-down menu.
You can also delete multiple views by selecting all the views that you want to delete and clicking the Delete option from the top.
The deleted views will be successfully removed from the workspace and placed in Trash. You can restore the views within 45 days of deletion from the Trash. After the mentioned timeframe, the views will get deleted permanently.

20. How to restore a deleted view in the workspace?You can restore a deleted view from the workspace trash. To restore a deleted view, 

Open the trash by clicking the Trash icon on the left menubar of the workspace.
All the deleted views will be listed here. You can restore the required view by clicking the Restore icon that appears on mouse-over the view.
You can restore multiple views by selecting the required views and clicking the Restore option from the top.
Note:You cannot have two or more of the same tables with the same name in a workspace, hence you cannot restore a table if you have connected to the same table from the source database.

When you have two or more of the same tables in the trash, you can restore only one table. This instance occurs when you import and delete the same table multiple times.

21. How do I remove the Setup?You have to delete the workspace in Zoho Analytics to remove the connection setup. 

To delete the workspace,

From your Zoho Analytics account, click the More Actions icon that appears on mouse hover adjacent to the workspace name that you want to delete.
Click the Delete Workspace option from the drop-down menu.
22. What are the limitations of using the Amazon RDS MySQL Live Connect?Given below are a few short comings that one might face while using the Amazon RDS MySQL Live Connect option.

Data from your Amazon RDS MySQL database will NOT be locally stored in Zoho Analytics. Zoho Analytics will generate appropriate queries to fetch the required data live from Amazon RDS MySQL and show you the report. Hence, the loading time will directly depend on the performance of Amazon RDS MySQL.
Any changes such as column addition/deletion/renaming will not be mapped automatically. The user must manually map the updates made.
Users cannot combine data from other data sources into the same workspace in which you have connected the Amazon RDS MySQL database. 
Users cannot create query tables.
Users cannot change the data type of the columns in Zoho Analytics.
Troubleshooting Tips1. I get an error message "Sorry, there is a problem in connecting to your cloud data source. Check your connection details and try again." What should I do?This error occurs in the following scenarios:

ScenarioSolutionIncorrect connection settings are specifiedEnsure that the correct Endpoint/Hostname, Port, and user credentials are specified.Your cloud database service does not recognise Zoho Analytics as an authenticated agent to fetch the dataTo import data from Amazon RDS you need to allowlist Zoho Analytics IP address.
2. I get an error message “Cannot connect to the specified endpoint/hostname. Please check if the specified endpoint/hostname is configured as publicly accessible” when trying to connect to Amazon RDS database. What should I do?This is because you have NOT enabled Public Accessibility while creating the RDS instance. Ensure to enable the public accessibility option in the Amazon RDS interface.


Note: If you don’t want to enable the Public accessibility option, you can connect to the Amazon RDS database using Zoho Databridge.
3. I am unable to find the Live Connect option while importing data into Zoho Analytics. What could be the possible reasons?You will be able to connect live in Zoho Analytics only if,

You have a paid or trial plan.
You are importing data into a new Workspace in Zoho Analytics.
Note: Zoho Analytics does not permit the import of data into an existing Workspace using the Live Connect option.
Did you find what you were looking for? Yes | No
Visually analyze any data.Create your own reports and dashboards in minutes.

ACCESS ZOHO ANALYTICS
BI & AnalyticsBusiness Intelligence (BI) Software
Reporting Software
Data Visualization Software
Data Analytics Software
Embedded Analytics
What is Business Intelligence?
What is Embedded Analytics?
What is Data Analytics?
What is Data Visualization?
What is Big Data Analytics?
DashboardsKPI Dashboards
Business Dashboards
Executive Dashboards
Business SolutionsSales Analytics
Marketing Analytics
Financial Analytics
Helpdesk Analytics
Social Media Analytics
CommunityUser Forums
Blogs
Press Corner
Analyst Reports
Articles
Newsletter
Events
ComparisonsTableau
Microsoft Power BI
Qlik Sense
Supportsupport@zohoanalytics.com
Call Toll Free
Submit Your Request
Help Center
FAQ
Register for Demo
3-day FREE Assist Program
Free Virtual Classroom Training
Webinars
Video Demos
Product Tour
DevelopersZoho Analytics for ISVs
Zoho Analytics API
Zoho Analytics Partner Program
Mobile BI AppsAndroid / iOS
Connect with us   
support@zohoanalytics.com
Zoho Home
Contact Us
Security
 Compliance
IPR Complaints
Anti-spam Policy
Terms of Service
Privacy Policy
Cookie Policy
GDPR Compliance
Abuse Policy
© 2023, Zoho Corporation Pvt. Ltd. All Rights Reserved.
:Build::
