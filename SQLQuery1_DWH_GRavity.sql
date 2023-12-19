use gravity_books_dwh
 Create book_dim table
CREATE TABLE book_dim (
  book_key INT IDENTITY(1,1) PRIMARY KEY,
  book_id INT NOT NULL,
  book_title VARCHAR(255) NOT NULL,
  book_price DECIMAL(10,2) NOT NULL,
  publisher_id INT NOT NULL,
  language_id INT NOT NULL
);

 Create author_dim table
CREATE TABLE author_dim (
  author_key INT IDENTITY(1,1) PRIMARY KEY,
  author_id INT NOT NULL,
  author_name VARCHAR(255) NOT NULL
);

 Create language_dim table
CREATE TABLE language_dim (
  language_key INT IDENTITY(1,1) PRIMARY KEY,
  language_id INT NOT NULL,
  language_name VARCHAR(255) NOT NULL
);

 Create publisher_dim table
CREATE TABLE publisher_dim (
  publisher_key INT IDENTITY(1,1) PRIMARY KEY,
  publisher_id INT NOT NULL,
  publisher_name VARCHAR(255) NOT NULL
);

 Create customer_dim table
CREATE TABLE customer_dim (
  customer_key INT IDENTITY(1,1) PRIMARY KEY,
  customer_id INT NOT NULL,
  customer_name VARCHAR(255) NOT NULL,
  customer_email VARCHAR(255) NOT NULL
);

 Create address_dim table
CREATE TABLE address_dim (
  address_key INT IDENTITY(1,1) PRIMARY KEY,
  address_id INT NOT NULL,
  address_line_1 VARCHAR(255) NOT NULL,
  address_line_2 VARCHAR(255),
  city VARCHAR(255) NOT NULL,
  state VARCHAR(255),
  zip_code VARCHAR(255),
  country_id INT NOT NULL
);

 Create country_dim table
CREATE TABLE country_dim (
  country_key INT IDENTITY(1,1) PRIMARY KEY,
  country_id INT NOT NULL,
  country_name VARCHAR(255) NOT NULL
);

 Create shipping_method_dim table
CREATE TABLE shipping_method_dim (
  shipping_method_key INT IDENTITY(1,1) PRIMARY KEY,
  shipping_method_id INT NOT NULL,
  shipping_method_name VARCHAR(255) NOT NULL,
  shipping_cost DECIMAL(10,2) NOT NULL
);

 Create order_status_dim table
CREATE TABLE order_status_dim (
  order_status_key INT IDENTITY(1,1) PRIMARY KEY,
  order_status_id INT NOT NULL,
  order_status_name VARCHAR(255) NOT NULL
);

 Create order_fact table
CREATE TABLE order_fact (
  customer_key INT NOT NULL REFERENCES customer_dim(customer_key),
  address_key INT NOT NULL REFERENCES address_dim(address_key),
  shipping_method_key INT NOT NULL REFERENCES shipping_method_dim(shipping_method_key),
  order_status_key INT NOT NULL REFERENCES order_status_dim(order_status_key),
  book_key INT NOT NULL REFERENCES book_dim(book_key),
  author_key INT NOT NULL REFERENCES author_dim(author_key),
  quantity INT NOT NULL CHECK (quantity >0),
  dim_Date INT NOT NULL REFERENCES DimDate(DateSK)

);

CREATE TRIGGER order_fact_trigger
ON order_fact
AFTER UPDATE
AS
BEGIN
   Declare variables
  DECLARE @order_id INT,
          @old_status INT,
          @new_status INT,
          @change_date DATE;
   Get the order id, old status, new status, and change date from the inserted and deleted tables
  SELECT @order_id = i.order_id,
         @old_status = d.order_status_key,
         @new_status = i.order_status_key,
         @change_date = GETDATE()
  FROM inserted i
  INNER JOIN deleted d
  ON i.order_key = d.order_key;
   Insert a new record in the order_history table with the order id, old status, new status, and change date
  INSERT INTO order_history (order_id, old_status, new_status, change_date)
  VALUES (@order_id, @old_status, @new_status, @change_date);
