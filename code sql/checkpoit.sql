show databases;
use db1 ;
create table  Product01(
product_id varchar(20) primary key,
product_Name varchar(20) Not null ,
price int check (price > 0 )
);
create table  Customer01(
customer_id varchar(20) primary key ,
customer_Name char(20) not null , 
customer_tel  int check (customer_tel>=0)
);
create table Orders(
customer_id varchar(20) ,
Product_id  varchar(20), 
Quantity int ,
Total_amount int ,
foreign key(customer_id) references Customer01(customer_id),
foreign key(Product_id) references Product01(product_id)


);


ALTER TABLE Product01 ADD Category VARCHAR(20);
ALTER TABLE Orders ADD OrderDate DATETIME default CURRENT_TIMESTAMP;
describe Orders;
describe Product01;
describe Customer01