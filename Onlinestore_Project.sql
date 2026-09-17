-- Online Store Database System (MySQL)
-- • Designed a normalized (3NF) relational database schema featuring 300+ unique 
--   customer records, product categories, and transaction logs.
-- • Developed optimized SQL queries using multi-table JOINs, GROUP BY clauses, 
--   and Aggregation functions (SUM, AVG, COUNT, MIN/MAX) for sales analytics.
-- • Created data-driven business insight reports to track regional sales performance, 
--   product category revenue, and customer ordering patterns.


-- DATABASE CREATION AND INITIALIZATION

CREATE DATABASE OnlineStore;
USE OnlineStore;
-- TABLE STRUCTURES (Professional Relational Design)

-- Customer Table -
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL
);

-- Product Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);

-- Order Table -
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT NOT NULL,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- INSERTING PROFESSIONAL DATA PACKS
-- Inserting into customers -

INSERT INTO customers VALUES 
(1,'Aarav Sharma','Delhi'), (2,'Vivaan Patel','Mumbai'), (3,'Aditya Verma','Bangalore'), (4,'Sai Reddy','Hyderabad'), (5,'Arjun Rao','Chennai'),
(6,'Reyansh Gupta','Delhi'), (7,'Krishna Joshi','Pune'), (8,'Ishaan Mishra','Kolkata'), (9,'Shaurya Singh','Lucknow'), (10,'Aaryan Nair','Kochi'),
(11,'Ananya Sen','Kolkata'), (12,'Diya Iyer','Chennai'), (13,'Pari Choudhury','Guwahati'), (14,'Pihu Saxena','Delhi'), (15,'Isha Kapoor','Mumbai'),
(16,'Aadhya Bhat','Bangalore'), (17,'Saanvi Das','Kolkata'), (18,'Prisha Mehra','Delhi'), (19,'Aanya Malhotra','Mumbai'), (20,'Navya Gill','Chandigarh'),
(21,'Kabir Malhotra','Mumbai'), (22,'Tushar Shah','Ahmedabad'), (23,'Rohan Das','Kolkata'), (24,'Sneha Paul','Patna'), (25,'Meera Nair','Kochi'),
(26,'Yash Vardhan','Jaipur'), (27,'Alok Ranjan','Ranchi'), (28,'Riya Sen','Kolkata'), (29,'Kunal Jha','Dhanbad'), (30,'Amit Tripathi','Varanasi'),
(31,'Kiran Verma','Jodhpur'), (32,'Rakesh Pillai','Goa'), (33,'Kiran Sharma','Pune'), (34,'Vikas Kulkarni','Indore'), (35,'Sanjeev Pillai','Mangalore'),
(36,'Sanjeev Tiwari','Mumbai'), (37,'Preeti Basu','Delhi'), (38,'Rahul Verma','Mumbai'), (39,'Aarti Pillai','Noida'), (40,'Karan Gupta','Chandigarh'),
(41,'Vijay Das','Gurgaon'), (42,'Abhishek Verma','Patna'), (43,'Manoj Prasad','Delhi'), (44,'Manish Reddy','Mumbai'), (45,'Aditya Mehta','Jaipur'),
(46,'Manoj Dubey','Patna'), (47,'Sanjeev Naidu','Mumbai'), (48,'Ajay Kulkarni','Delhi'), (49,'Amit Naidu','Bangalore'), (50,'Sachin Naidu','Mumbai'),
(51,'Abhishek Singh','Delhi'), (52,'Vinod Sen','Bhopal'), (53,'Lalit Pandey','Ludhiana'), (54,'Dinesh Reddy','Mumbai'), (55,'Vivek Verma','Noida'),
(56,'Jyoti Sharma','Bangalore'), (57,'Vijay Singh','Mumbai'), (58,'Rohit Jha','Mumbai'), (59,'Sachin Menon','Pune'), (60,'Abhishek Sen','Mangalore'),
(61,'Tarun Pandey','Mumbai'), (62,'Karan Naidu','Delhi'), (63,'Anjali Kulkarni','Mumbai'), (64,'Rakesh Pillai','Mumbai'), (65,'Ramesh Rao','Mumbai'),
(66,'Jyoti Patel','Delhi'), (67,'Ashok Nair','Mumbai'), (68,'Rahul Yadav','Mumbai'), (69,'Pankaj Desai','Mumbai'), (70,'Vijay Verma','Mumbai'),
(71,'Sunil Pillai','Mumbai'), (72,'Sachin Yadav','Mumbai'), (73,'Sunita Naidu','Mumbai'), (74,'Ramesh Menon','Mumbai'), (75,'Arun Prasad','Mumbai'),
(76,'Suresh Singh','Indore'), (77,'Vivek Iyer','Mumbai'), (78,'Abhishek Jha','Mumbai'), (79,'Sunita Singh','Mumbai'), (80,'Deepak Sen','Mumbai'),
(81,'Rashmi Kumar','Mumbai'), (82,'Dinesh Joshi','Bangalore'), (83,'Pradeep Mishra','Mumbai'), (84,'Aditya Desai','Mumbai'), (85,'Manoj Kulkarni','Srinagar'),
(86,'Vijay Naidu','Mumbai'), (87,'Gaurav Singh','Delhi'), (88,'Anita Nair','Delhi'), (89,'Amit Prasad','Nagpur'), (90,'Deepak Tiwari','Chennai'),
(91,'Vinod Dubey','Hyderabad'), (92,'Rahul Naidu','Rohtak'), (93,'Preeti Yadav','Jammu'), (94,'Amit Sen','Delhi'), (95,'Amit Pillai','Mumbai'),
(96,'Rashmi Shah','Mumbai'), (97,'Karan Desai','Delhi'), (98,'Pankaj Sharma','Mumbai'), (99,'Swati Choudhury','Delhi'), (100,'Sunil Patel','Gorakhpur'),
(101,'Tarun Patel','Chandigarh'), (102,'Vijay Gupta','Amritsar'), (103,'Ajay Kulkarni','Jalandhar'), (104,'Nitin Iyer','Rupnagar'), (105,'Rahul Mehta','Patiala'),
(106,'Varun Prasad','Delhi'), (107,'Priya Naidu','Delhi'), (108,'Tarun Pandey','Delhi'), (109,'Kavita Nair','Mumbai'), (110,'Varun Tiwari','Mumbai'),
(111,'Aarti Pillai','Pune'), (112,'Sunita Pillai','Junagadh'), (113,'Ramesh Joshi','Gurgaon'), (114,'Priya Naidu','Delhi'), (115,'Vinod Ranjan','Patna'),
(116,'Nitin Singh','Mumbai'), (117,'Manoj Menon','Mumbai'), (118,'Jyoti Shah','Mumbai'), (119,'Swati Mehta','Mumbai'), (120,'Priya Choudhury','Mumbai'),
(121,'Rahul Menon','Mumbai'), (122,'Dinesh Kumar','Mumbai'), (123,'Manoj Yadav','Mumbai'), (124,'Sunil Prasad','Delhi'), (125,'Rajesh Kulkarni','Ambala'),
(126,'Swati Gupta','Mumbai'), (127,'Anil Shah','Mumbai'), (128,'Suresh Singh','Pune'), (129,'Alok Reddy','Mumbai'), (130,'Vinod Yadav','Mumbai'),
(131,'Pradeep Pillai','Mumbai'), (132,'Manish Kulkarni','Mumbai'), (133,'Lalit Desai','Hoshiarpur'), (134,'Rashmi Nair','Mumbai'), (135,'Arun Kulkarni','Mumbai'),
(136,'Arjun Das','Hyderabad'), (137,'Ajay Ranjan','Hyderabad'), (138,'Harish Choudhury','Hyderabad'), (139,'Vinod Desai','Hyderabad'), (140,'Arjun Rao','Hyderabad'),
(141,'Aarti Jha','Hyderabad'), (142,'Aarti Singh','Hyderabad'), (143,'Kavita Pandey','Hyderabad'), (144,'Karan Reddy','Hyderabad'), (145,'Sunil Naidu','Hyderabad'),
(146,'Rohit Rao','Chennai'), (147,'Tarun Iyer','Hyderabad'), (148,'Kiran Yadav','Hyderabad'), (149,'Divya Pillai','Hyderabad'), (150,'Sanjay Basu','Hyderabad'),
(151,'Karan Reddy','Hyderabad'), (152,'Vijay Rao','Hyderabad'), (153,'Suresh Naidu','Hyderabad'), (154,'Ramesh Verma','Hyderabad'), (155,'Anil Kumar','Hyderabad'),
(156,'Abhishek Das','Hyderabad'), (157,'Arjun Sharma','Hyderabad'), (158,'Rahul Mehta','Hyderabad'), (159,'Preeti Hegde','Coorg'),(160,'Jyoti Iyer','Chennai'),
 (161,'Manish Rao','Hyderabad'), (162,'Sanjeev Naidu','Hyderabad'), (163,'Aarti Reddy','Hyderabad'),(164,'Vivek Prasad','Hyderabad'), 
 (165,'Sanjay Kulkarni','Hyderabad'), (166,'Kavita Shetty','Bangalore'), (167,'Deepa Nair','Bengaluru'),(168,'Vijay Pillai','Chennai'), 
 (169,'Anjali Menon','Chennai'), (170,'Arun Joseph','Kochi'), (171,'Manoj Varghese','Kochi'),(172,'Suresh Pillai','Kochi'), (173,'Rahul Nair','Kochi'), 
 (174,'Dinesh Kurian','Kochi'), (175,'Rashmi Menon','Kochi'),(176,'Vinod Thomas','Kochi'), (177,'Harish Ali','Kochi'), (178,'Nitin Paul','Kochi'), 
 (179,'Vivek Sharma','Kochi'), (180,'Ajay Das','Kochi'),(181,'Rakesh Gowda','Bangalore'), (182,'Sunita Bhat','Bangalore'), (183,'Manish Shetty','Mangalore'),
 (184,'Abhishek Rao','Udupi'),(185,'Vijay Kulkarni','Mangalore'), (186,'Sanjeev Kumar','Bangalore'), (187,'Ramesh Raj','Bangalore'), (188,'Harish Prasad','Bangalore'),
 (189,'Karan Sharma','Shimoga'), (190,'Dinesh Kumar','Ponnampet'), (191,'Suresh Rao','Kundapura'), (192,'Gaurav Kishan','Bengaluru'),(193,'Vinod Jha','Bengaluru'),
 (194,'Abhishek Das','Bengaluru'), (195,'Rahul Verma','Bangalore'), (196,'Tarun Joshi','Bangalore'),(197,'Arjun Naidu','Chennai'), (198,'Megha Rao','Bangalore'),
 (199,'Pradeep Das','Bangalore'), (200,'Dinesh Prasad','Bangalore'),(201,'Suresh Kumar','Chennai'), (202,'Jyoti Sharma','Mumbai'), (203,'Karan Singh','Chennai'),
 (204,'Manish Pillai','Chennai'),(205,'Vijay Das','Chennai'), (206,'Sangeeta Rao','Chennai'), (207,'Ajay Kumar','Secunderabad'), (208,'Shalini Iyer','Chennai'),
 (209,'Vikram Sharma','Chennai'), (210,'Deepak Verma','Chennai'), (211,'Dinesh Raja','Chennai'), (212,'Aishwarya Nair','Chennai'),(213,'Ramesh Gaikwad','Chennai'), 
 (214,'Latha Pillai','Chennai'), (215,'Kamal Prasad','Chennai'), (216,'Shruti Iyer','Chennai'),(217,'Akshara Naidu','Chennai'), (218,'Sanjay Raj','Chennai'),
 (219,'Anirudh Sharma','Chennai'), (220,'Santhosh Kumar','Trichy'),(221,'Rahul Raja','Chennai'), (222,'Vijay Group','Chennai'), (223,'Abdul Rahman','Chennai'), 
 (224,'Gaurav Kumar','Chennai'),(225,'Saindhavi Sharma','Chennai'), (226,'Harish Iyer','Chennai'), (227,'Deepak Prasad','Chennai'), (228,'Thaman Rao','Andhra'), 
 (229,'Devi Sri K','Andhra'),(230,'Manoj Kumar','Andhra'), (231,'Kartik Sharma','Gwalior'), (232,'Sara Khan','Mumbai'), (233,'Ananya Mishra','Mumbai'),
 (234,'Vijay Panday','Mumbai'), (235,'Bhavana Joshi','Mumbai'), (236,'Sanjay Verma','Mumbai'), (237,'Maheep Kaur','Mumbai'),(238,'Shanaya Sharma','Mumbai'),
 (239,'Abhishek Kapoor','Mumbai'), (240,'Sunita Sharma','Sivakasi'), (241,'Arbaaz Ahmed','Mumbai'),(242,'Malaika Arora','Thane'), (243,'Amrita Rao','Thane'), 
 (244,'Arhaan Khan','Mumbai'), (245,'Seema Sharma','Delhi'), (246,'Nirvan Malhotra','Mumbai'),(247,'Yohan Gupta','Mumbai'), (248,'Maheep Sandhu','Mumbai'),
 (249,'Neelam Shah','Mumbai'), (250,'Samir Joshi','London'), (251,'Seema Verma','Mumbai'),(252,'Bhavana Pandey','Mumbai'), (253,'Gauri Sharma','Mumbai'),
 (254,'Suzanne Desai','Mumbai'), (255,'Hrithik Naidu','Mumbai'),(256,'Rakesh Verma','Mumbai'), (257,'Pinkie Shah','Mumbai'), (258,'Sunaina Gupta','Mumbai'), 
 (259,'Pashmina Mehta','Mumbai'),(260,'Rajesh Kulkarni','Mumbai'), (261,'Tarun Singh','Mumbai'), (262,'Jackie Desai','Udgir'), (263,'Ayesha Sharma','Mumbai'),
 (264,'Krishna Patel','Mumbai'), (265,'Disha Singh','Bareilly'), (266,'Tara Sharma','Mumbai'), (267,'Abhishek Jain','Mumbai'),(268,'Armaan Gupta','Mumbai'),
 (269,'Anissa Malhotra','Mumbai'), (270,'Rima Jain','Mumbai'), (271,'Manoj Prasad','Patna'), (272,'Ravi Kumar','Jaunpur'),(273,'Dinesh Lal','Patna'),
 (274,'Karan Yadav','Siwan'), (275,'Pawan Singh','Arah'), (276,'Akshara Verma','Patna'), (277,'Amrapali Dubey','Gorakhpur'),(278,'Rani Sharma','Mumbai'),
 (279,'Moni Roy','Delhi'), (280,'Kajal Shah','Pune'), (281,'Subhi Sharma','Jaipur'),(282,'Anjana Singh','Lucknow'), (283,'Pakhi Hegde','Mumbai'),
 (284,'Yash Kumar','Balia'), (285,'Rahul Pandey','Balia'),(286,'Pradeep Pandey','Balia'), (287,'Awadhesh Mishra','Patna'), (288,'Sanjay Pandey','Ghazipur'),
 (289,'Dev Singh','Buxar'),(290,'Manoj Tiwari','Buxar'), (291,'Amitabh Sharma','Allahabad'), (292,'Jaya Verma','Jabalpur'), (293,'Abhishek Jha','Mumbai'),
 (294,'Aishwarya Rao','Mangalore'), (295,'Aaradhya Jha','Mumbai'), (296,'Shweta Verma','Mumbai'), (297,'Navya Nanda','Mumbai'),(298,'Agastya Nanda','Mumbai'),
 (299,'Nikhil Nanda','Delhi'), (300,'Ritu Sharma','Mumbai');
 
 
-- Inserting into products -

INSERT INTO products VALUES
(101, 'MacBook Pro', 'Electronics', 120000.00),(102, 'iPhone 15 Pro', 'Electronics', 130000.00),(103, 'Air Jordan Shoes', 'Fashion', 12000.00),
(104, 'Oversized T-Shirt', 'Fashion', 1200.00),(105, 'Premium Smartwatch', 'Accessories', 25000.00),(106, 'Noise Cancelling Headphones', 'Electronics', 18000.00),
(107, 'Leather Backpack', 'Accessories', 4500.00),(108, 'Gaming Tablet', 'Electronics', 35000.00),(109, 'Slim Fit Jeans', 'Fashion', 2500.00),
(110, 'Stainless Steel Bottle', 'Home', 800.00);

-- Inserting into Orders -

INSERT INTO orders VALUES
(501, 1, 101, 1, '2026-08-01'), (502, 2, 102, 1, '2026-08-01'), (503, 3, 103, 2, '2026-08-02'), (504, 4, 104, 4, '2026-08-02'), 
(505, 5, 105, 1, '2026-08-03'),(506, 51, 106, 1, '2026-08-03'), (507, 52, 107, 2, '2026-08-04'), (508, 53, 108, 1, '2026-08-04'), 
(509, 54, 109, 3, '2026-08-05'), (510, 55, 110, 5, '2026-08-05'),(511, 101, 101, 1, '2026-08-06'), (512, 102, 103, 2, '2026-08-06'), 
(513, 103, 105, 1, '2026-08-07'), (514, 104, 107, 1, '2026-08-07'), (515, 105, 109, 2, '2026-08-08'),(516, 151, 102, 1, '2026-08-08'), 
(517, 152, 104, 3, '2026-08-09'), (518, 153, 106, 1, '2026-08-09'), (519, 154, 108, 1, '2026-08-10'), (520, 155, 110, 2, '2026-08-10'),
(521, 201, 101, 1, '2026-08-11'), (522, 202, 102, 1, '2026-08-11'), (523, 203, 103, 2, '2026-08-12'), (524, 204, 104, 5, '2026-08-12'), 
(525, 205, 105, 1, '2026-08-13'),(526, 251, 106, 1, '2026-08-13'), (527, 252, 107, 1, '2026-08-14'), (528, 253, 108, 1, '2026-08-14'), 
(529, 254, 109, 2, '2026-08-15'), (530, 255, 110, 4, '2026-08-15'),(531, 12, 101, 1, '2026-08-16'), (532, 22, 102, 1, '2026-08-16'), 
(533, 32, 103, 2, '2026-08-17'), (534, 42, 104, 3, '2026-08-17'), (535, 62, 105, 1, '2026-08-18'),(536, 72, 106, 1, '2026-08-18'), 
(537, 82, 107, 2, '2026-08-19'), (538, 92, 108, 1, '2026-08-19'), (539, 112, 109, 2, '2026-08-20'), (540, 122, 110, 1, '2026-08-20'),
(541, 132, 101, 1, '2026-08-21'), (542, 142, 102, 1, '2026-08-21'), (543, 162, 103, 1, '2026-08-22'), (544, 172, 104, 5, '2026-08-22'), 
(545, 182, 105, 1, '2026-08-23'),(546, 192, 106, 2, '2026-08-23'), (547, 212, 107, 1, '2026-08-24'), (548, 222, 108, 1, '2026-08-24'), 
(549, 232, 109, 2, '2026-08-25'), (550, 242, 110, 3, '2026-08-25');


-- To see a list of all customers who have placed an order along with their order date -
-- 2 Table join

SELECT c.name, o.order_date
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id;


-- delivery report that displays the Customer's Name, the Product Name they purchased, and the Quantity ordered -
-- 3 Table join

SELECT c.name AS customer_name, p.product_name, o.quantity
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id;


-- Find the total number of orders placed in our store so far -

SELECT COUNT(order_id) AS total_orders_placed 
FROM orders;


-- The store manager wants to check the price of our most expensive product and our cheapest product -

SELECT MAX(price) AS highest_price, MIN(price) AS lowest_price 
FROM products;


-- Calculate the average price of all products available in the 'Electronics' category -

SELECT AVG(price) AS average_electronics_price 
FROM products 
WHERE category = 'Electronics';


-- Find out how many unique customers we have served in each city. Arrange them by city names -

SELECT city, COUNT(customer_id) AS total_customers_in_city
FROM customers
GROUP BY city;


-- Calculate the total revenue (Total Sales Value) generated by the entire store across all orders -

SELECT SUM(o.quantity * p.price) AS total_store_revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id;


-- Display the names of all products that belong to either the 'Fashion' or 'Accessories' category -
-- Subquery

SELECT product_name, category 
FROM products 
WHERE category IN ('Fashion', 'Accessories');


--  Rank products within each category based on their price -
-- Window Function

SELECT product_name, category, price,
DENSE_RANK() OVER (PARTITION BY category ORDER BY price DESC) AS price_rank_in_category
FROM products;


-- Calculate Running Total (Cumulative Revenue) for each order over time -

SELECT o.order_id, o.order_date, (o.quantity * p.price) AS order_value, 
SUM(o.quantity * p.price) OVER (ORDER BY o.order_date, o.order_id) AS running_total_revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id;
