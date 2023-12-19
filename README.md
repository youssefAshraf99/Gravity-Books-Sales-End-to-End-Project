







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
