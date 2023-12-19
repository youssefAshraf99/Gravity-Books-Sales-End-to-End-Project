|![Ein Bild, das Text, Schrift, Typografie enthält.

Automatisch generierte Beschreibung](Aspose.Words.701e3a42-106f-4012-95e2-6ed40b822364.001.png)|<p></p><p>Data Engineering Track, 2023</p><p>Data Warehouse and Lakehouse Fundamentals</p>|
| :- | -: |













# Table of Contents
[Section 1: Data Warehouse Fundamentals	2](#_toc148760610)

[Section 2: Data Lakehouse Fundamentals	6](#_toc148760611)

[Section 3: Practical project: Modeling, Building a Data Warehouse and BI Reports for Gravity Bookstore	7](#_toc148760612)

[Use-case Background	7](#_toc148760613)

[Requirements	8](#_toc148760614)



**	








*To be filled by ITI:*

*Reviewed by:*

*Review date:*

*Grade:***
## <a name="_toc148760610"></a>Section 1: Data Warehouse Fundamentals 

**Multiple Choice Questions** 

1\. Which of the following tools is used to help an organization towards building and enabling both Business Intelligence (BI) and advanced analytics use-cases? 

A) Data Lakehouse

B) Data Lake

C) Data Warehouse 

D) All of the above 

E)  A & C

2\. A data warehouse is which of the following?

A) Can be updated by end users

B) Contains numerous naming conventions and formats

C) Organized around business subject areas

D) Contains only current data

3\. \_\_\_\_\_\_\_\_ are slice-and-dice techniques that allow you to view multidimensional information from different perspectives.

A) OLAP 

B) OLTP 

C) A database 

D) An operational database 

4\. What is a subset of a data warehouse in which only a focused portion of the data warehouse information is kept? 

A) Data mining tool 

B) Data mart 

C) Data model 

D) None of the above 

5\. What do integrity constraint rules help you ensure? 

A) Governance of the data 

B) Quantity of the data 

C) Quality of the data 

D) Performance tuning 

6\. A goal of data mining includes which of the following?

A) To explain some observed event or condition

B) To confirm that data exists

C) To explore and categorize data with new patterns

D) To create a new data warehouse

E) A & C

F) All of the above


7\. All the features below describing the data warehouse, except:

A) Subject-oriented

B) Time variant

C) Encapsulated

D) Non-volatile

8\. Which of the following describes a data warehouse? 

A) Collection of information 

B) Information gathered from many different knowledge workers 

C) Used as a source for analytical processing

D) All of the above 

9\. A database that supports OLTP is often called a(n) \_\_\_\_\_ database. 

A) OLTP 

B) Operational 

C) Production 

D) Working 

10\. \_\_\_\_\_ is the manipulation of information to support decision making. 

A) Online transaction processing (OLTP)

B) Operational database 

C) Online data warehouse 

D) Online analytical processing (OLAP)

11\. Which of the following is supported by an operational database? 

A) Online transaction processing (OLTP)

B) Online analytical processing 

C) Online checking 

D) Online research processing (OLAP)

12\. A multidimensional representation of information is referred to as a: 

A) Database 

B) Data warehouse 

C) Hypercube 

D) Metadata 

13\. When is it appropriate to 'de-normalize' a relational database design for a Data Warehouse database?

A) When disk space is low.

B) When memory is low.

C) When the analysis requirements are understood.

D) When the database design is no longer expected to change.


14\. What is an Operational Data Store (ODS)?

A) A set of databases that serve as a 'staging' area to facilitate consolidating data from several, distributed-source systems.

B) A set of databases that support OLAP.

C) A set of databases that support reporting from an application system.

D) A set of databases that provide integrated operations data to serve the organization's day-to-day activities.

15\. What is a 'snowflake' schema?

A) The dimension tables are 'normalized'.

B) The dimension tables can refer to more than one fact table.

C) All recurring groups of attributes are completely removed from dimension tables.

D) A schema that can be implemented only with an MDDB Database Management

16\. The process of migrating the data from a source to other destination is known as:

A) Extract, Transform and Load (ETL)

B) Move, Transform and Load (MTL)

C) Extract, Transform and Save (ETS)

D) Extract, Migrate and Load (EML)

17\. Which of the following is a business benefit of a Data Warehouse?

A) Customers are happier

B) Reduction in governance interference

C) Decision makers will be able to make more decisions each day

D) Improves morale of the business analysts

18\. The two major tasks of the transformation are:

A) Data replication and redundancy

B) Date quality and cleansing

C) Data classification and verification

D) Data stability and modeling

19\. The dimension table in the data warehouse stores:

A) Business measures

B) Data about business perspectives

C) Metadata

D) Data dictionary

20\. The fact table in the data warehouse stores:

A) Metadata

B) Data about business perspectives

C) Business measures

D) Data dictionary

21\. Which of the following is NOT a Data Warehouse process:

A) Change Data Capture (CDC)

B) Transaction completion on operational systems

C) Data cleansing

D) Load the data warehouse and populate data marts

22\. Which of the following data type is the counterpart of ‘Reference Data’:

A) Metric Data

B) Derived Data

C) Event Data

D) Derived Data

23\. Which type of data transformation is most likely to create new information from existing data:

A) Derivation

B) Summarization

C) Translation

D) Conversion

24\. Source-to-Target mapping is a prerequisite activity for:

A) Choosing data sources

B) Design of target database

C) Design of data transformation

D) Data warehouse auditing

25\. Which of the following is NOT a significant consideration of Data Architecture for a DWH:

A) Fata flow

B) Data structure

C) Data purging and archiving

D) Data integration



## <a name="_toc148760611"></a>Section 2: Data Lakehouse Fundamentals 

Please create a community account and conduct the Databricks Lakehouse Fundamentals Accreditation[^1]: 

[Databricks Accredited Lakehouse Platform Fundamentals | Databricks](https://www.databricks.com/learn/certification/lakehouse-platform-fundamentals)

![A screenshot of a computer

Description automatically generated](Aspose.Words.701e3a42-106f-4012-95e2-6ed40b822364.002.png)![A certificate of completion

Description automatically generated](Aspose.Words.701e3a42-106f-4012-95e2-6ed40b822364.003.png)


Provide below a screenshot of the certificate or its URL from: <https://credentials.databricks.com/>







## <a name="_toc148760612"></a>Section 3: Practical project: Modeling, Building a Data Warehouse and BI Reports for Gravity Bookstore

### <a name="_toc148760613"></a>Use-case Background
Gravity Bookstore is a database for a fictional bookstore called that captures information about books, customers, and sales.

Please download the SQL files from the link below and run them in a new database named ‘gravity\_books’ in your local SQL Server DB engine:

[databasestar/sample_databases/sample_db_gravity/gravity_sqlserver · GitHub](https://github.com/bbrumm/databasestar/tree/main/sample_databases/sample_db_gravity/gravity_sqlserver)

ERD of ‘gravity\_books’ transactional database:

![erd_gravity](Aspose.Words.701e3a42-106f-4012-95e2-6ed40b822364.004.png)

Tables description:

- **book**: a list of all books available in the store.
- **book\_author**: stores the authors for each book, which is a many-to-many relationship.
- **author**: a list of all authors.
- **book\_language**: a list of possible languages of books.
- **publisher**: a list of publishers for books.
- **customer**: a list of the customers of the Gravity Bookstore.
- **customer\_address**: a list of addresses for customers, as a customer can have more than one address, and an address has more than one customer.
- **address\_status**: a list of statuses for an address, because addresses can be current or old.
- **address**: a list of addresses in the system.
- **country**: a list of countries that addresses are in.
- **cust\_order**: a list of orders placed by customers.
- **order\_line**: a list of books that are a part of each order.
- **shipping\_method**: the possible shipping methods for an order.
- **order\_history**: the history of an order, such as ordered, cancelled, delivered.
- **order\_status**: the possible statuses of an order.


<a name="_toc148760614"></a>Requirements

1. Model and develop ‘gravity\_books\_dwh’ Data Warehouse **figure1**
   1. Please provide the DDL statements of table creation and a screenshot from the DWH ERD.(

      ![](Aspose.Words.701e3a42-106f-4012-95e2-6ed40b822364.005.png)

*Figure 1**

1. Define which approach (star schema, snowflake) of data warehouse used in your solution, and why.

   I have used a star schema approach for the data warehouse. A star schema is a simple and efficient way of organizing data for analysis and reporting. It consists of a single fact table that contains the measures of interest and multiple dimension tables that describe the attributes of the fact table. Thate what I do one fact table **order\_fact** and all dimension tables this  is a start schema **figure2**

![A screenshot of a computer

Description automatically generated](Aspose.Words.701e3a42-106f-4012-95e2-6ed40b822364.006.png)

*Figure 2**

It reduces the number of joins required to query the data, which improves performance and simplifies queries.

It avoids redundancy and inconsistency in the dimension tables, which improves data quality and integrity.

It is easy to understand and maintain by business users and analysts.

1. Define a method to check and maintain the integrity between the fact and the dimensions (SQL).










1. Please, add a date dimension to the system to track the historical changes.

   ![A screenshot of a computer

Description automatically generated](Aspose.Words.701e3a42-106f-4012-95e2-6ed40b822364.007.png)



































1. Design an SSIS project to populate the data from ‘gravity\_books’ transactional database into the new target data warehouse ‘gravity\_books\_dwh’.

   Figure 3 show the DWH empty not transfer Data from source gravity\_books to destination gravity\_books\_DWH

![A screenshot of a computer

Description automatically generated](Aspose.Words.701e3a42-106f-4012-95e2-6ed40b822364.008.png)

Data Transfer successfully from source to destination In Figure4 

![A screenshot of a computer

Description automatically generated](Aspose.Words.701e3a42-106f-4012-95e2-6ed40b822364.009.png)


All Dimensions And Fact Tables The Solution In SSIS

![A screenshot of a computer

Description automatically generated](Aspose.Words.701e3a42-106f-4012-95e2-6ed40b822364.010.png)




1. Design an SSAS project (Tabular mode) and provide the main deliverables of the cube browsing.

   Loade Columns  Correctly from DWH

![A computer screen shot of a computer

Description automatically generated](Aspose.Words.701e3a42-106f-4012-95e2-6ed40b822364.011.png)


Model\_dim

![A screenshot of a computer

Description automatically generated](Aspose.Words.701e3a42-106f-4012-95e2-6ed40b822364.012.png)

Before Deploy SSAS Project

![A screenshot of a computer

Description automatically generated](Aspose.Words.701e3a42-106f-4012-95e2-6ed40b822364.013.png)

After Deploy SSAS Tabular MODE

![A screenshot of a computer

Description automatically generated](Aspose.Words.701e3a42-106f-4012-95e2-6ed40b822364.014.png)


1. Using either PowerPivot in Excel or Power BI Desktop, create BI self-service reporting 

   for exploring gravity books OLAP cube.

   1. Please use the self-service canvas to explore the data and get business insights from it.
   1. Create sample analytical reports and one dashboard.

      ![A screenshot of a computer

Description automatically generated](Aspose.Words.701e3a42-106f-4012-95e2-6ed40b822364.015.png)![A screenshot of a computer

Description automatically generated](Aspose.Words.701e3a42-106f-4012-95e2-6ed40b822364.016.png)

- Please provide screenshots from the output of each point above:
- Compress the entire solution files:
  - DWH DDL statements (format . sql)
  - ETL SSIS project
  - OLAP SSAS project
  - ` `PowerPivot Excel or Power BI (format . xlsx or .pbix)
2


[^1]: ` `*Hint: certificate issuing may take up to 24 hours after assessment completion until you have it via email.*
