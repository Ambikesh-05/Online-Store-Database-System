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
(1,'Aarav Sharma','Delhi'),(2,'Vivaan Patel','Mumbai'),(3,'Aditya Verma','Bangalore'),(4,'Sai Reddy','Hyderabad'),(5,'Arjun Rao','Chennai'),
(6,'Reyansh Gupta','Delhi'),(7,'Krishna Joshi','Pune'),(8,'Ishaan Mishra','Kolkata'),(9,'Shaurya Singh','Lucknow'),(10,'Aaryan Nair','Kochi'),
(11,'Ananya Sen','Kolkata'),(12,'Diya Iyer','Chennai'),(13,'Pari Choudhury','Guwahati'),(14,'Pihu Saxena','Delhi'),(15,'Isha Kapoor','Mumbai'),
(16,'Aadhya Bhat','Bangalore'),(17,'Saanvi Das','Kolkata'),(18,'Prisha Mehra','Delhi'),(19,'Aanya Malhotra','Mumbai'),(20,'Navya Gill','Chandigarh'),
(21,'Kabir Malhotra','Mumbai'),(22,'Tushar Shah','Ahmedabad'),(23,'Rohan Das','Kolkata'),(24,'Sneha Paul','Patna'),(25,'Meera Nair','Kochi'),
(26,'Yash Vardhan','Jaipur'),(27,'Alok Ranjan','Ranchi'),(28,'Riya Sen','Kolkata'),(29,'Kunal Jha','Dhanbad'),(30,'Amit Tripathi','Varanasi'),
(31,'Vikram Rathore','Jodhpur'),(32,'Suresh Prabhu','Goa'),(33,'Neha Kulkarni','Pune'),(34,'Rahul Dravid','Indore'),(35,'Pooja Hegde','Mangalore'),
(36,'Varun Dhawan','Mumbai'),(37,'Sid Malhotra','Delhi'),(38,'Kiara Advani','Mumbai'),(39,'Kriti Sanon','Noida'),(40,'Ayushmann Khurrana','Chandigarh'),
(41,'Rajkummar Rao','Gurgaon'),(42,'Pankaj Tripathi','Patna'),(43,'Manoj Bajpayee','Delhi'),(44,'Nawazuddin Siddiqui','Mumbai'),
(45,'Irfaan Khan','Jaipur'),(46,'Sushant Singh','Patna'),(47,'Vicky Kaushal','Mumbai'),(48,'Katrina Kaif','Delhi'),(49,'Deepika Padukone','Bangalore'),
(50,'Ranveer Singh','Mumbai'),(51,'Aman Gupta','Delhi'),(52,'Sameer Khan','Bhopal'),(53,'Divya Dutta','Ludhiana'),(54,'Rohan Joshi','Mumbai'),
(55,'Akash Mishra','Noida'),(56,'Nisha Rao','Bangalore'),(57,'Karan Johar','Mumbai'),(58,'Ekta Kapoor','Mumbai'),(59,'Sanjay Dutt','Pune'),
(60,'Sunil Shetty','Mangalore'),(61,'Anil Kapoor','Mumbai'),(62,'Sonam Kapoor','Delhi'),(63,'Arjun Kapoor','Mumbai'),(64,'Janhvi Kapoor','Mumbai'),
(65,'Khushi Kapoor','Mumbai'),(66,'Saif Ali Khan','Delhi'),(67,'Sara Ali Khan','Mumbai'),(68,'Ibrahim Khan','Mumbai'),(69,'Kareena Kapoor','Mumbai'),
(70,'Karisma Kapoor','Mumbai'),(71,'Shah Rukh Khan','Mumbai'),(72,'Gauri Khan','Mumbai'),(73,'Aryan Khan','Mumbai'),(74,'Suhana Khan','Mumbai'),
(75,'Abram Khan','Mumbai'),(76,'Salman Khan','Indore'),(77,'Arbaaz Khan','Mumbai'),(78,'Sohail Khan','Mumbai'),(79,'Alizeh Agnihotri','Mumbai'),
(80,'Helen Khan','Mumbai'),(81,'Aamir Khan','Mumbai'),(82,'Kiran Rao','Bangalore'),(83,'Ira Khan','Mumbai'),(84,'Junaid Khan','Mumbai'),
(85,'Zaira Wasim','Srinagar'),(86,'Fatima Sana','Mumbai'),(87,'Sanya Malhotra','Delhi'),(88,'Radhika Madan','Delhi'),(89,'Mrunal Thakur','Nagpur'),
(90,'Tamannaah Bhatia','Chennai'),(91,'Vijay Verma','Hyderabad'),(92,'Jaideep Ahlawat','Rohtak'),(93,'Mohit Raina','Jammu'),
(94,'Barun Sobti','Delhi'),(95,'Sanaya Irani','Mumbai'),(96,'Drasti Dhami','Mumbai'),(97,'Karan Tacker','Delhi'),(98,'Krystle Dsouza','Mumbai'),
(99,'Nia Sharma','Delhi'),(100,'Ravi Dubey','Gorakhpur'),(101,'Sargun Mehta','Chandigarh'),(102,'Ammy Virk','Amritsar'),
(103,'Diljit Dosanjh','Jalandhar'),(104,'Sonam Bajwa','Rupnagar'),(105,'Hardy Sandhu','Patiala'),(106,'Gauri Shinde','Delhi'),
(107,'Raftaar Singh','Delhi'),(108,'Honey Singh','Delhi'),(109,'Vivian Fernandes','Mumbai'),(110,'Emiway Bantai','Mumbai'),(111,'Pranav Stan','Pune'),
(112,'Munawar Faruqui','Junagadh'),(113,'Elvish Yadav','Gurgaon'),(114,'Abhishek Malhan','Delhi'),(115,'Manisha Rani','Patna'),
(116,'Jiya Shankar','Mumbai'),(117,'Bebika Dhurve','Mumbai'),(118,'Pooja Bhatt','Mumbai'),(119,'Mahesh Bhatt','Mumbai'),(120,'Alia Bhatt','Mumbai'),
(121,'Ranbir Kapoor','Mumbai'),(122,'Rishi Kapoor','Mumbai'),(123='Neetu Singh','Mumbai'),(124,'Riddhima Kapoor','Delhi'),(125,'Karan Kapoor','Ambala'),
(126,'Randhir Kapoor','Mumbai'),(127,'Babita Kapoor','Mumbai'),(128,'Raj Kapoor','Pune'),(129,'Shammi Kapoor','Mumbai'),(130,'Shashi Kapoor','Mumbai'),
(131,'Geeta Bali','Mumbai'),(132,'Nargis Dutt','Mumbai'),(133,'Sunil Dutt','Hoshiarpur'),(134,'Priya Dutt','Mumbai'),(135='Namrata S','Mumbai'),
(136,'Mahesh Babu','Hyderabad'),(137,'Namrata Shirodkar','Hyderabad'),(138,'Sitara Ghattamaneni','Hyderabad'),(139,'Gautam G','Hyderabad'),
(140,'Ram Charan','Hyderabad'),(141,'Upasana Kamineni','Hyderabad'),(142,'Chiranjeevi Konidela','Hyderabad'),(143,'Allu Arjun','Hyderabad'),
(144,'Sneha Reddy','Hyderabad'),(145,'Allu Aravind','Hyderabad'),(146,'Prabhas Raju','Chennai'),(147,'Rana Daggubati','Hyderabad'),
(148,'Miheeka Bajaj','Hyderabad'),(149,'Suresh Babu','Hyderabad'),(150,'Venkat D','Hyderabad'),(151,'NTR Rama Rao','Hyderabad'),
(152,'Kalyan Ram','Hyderabad'),(153,'Hari Krishna','Hyderabad'),(154,'Nandamuri Balakrishna','Hyderabad'),(155,'Taraka Ratna','Hyderabad'),
(156,'Nani Ghanta','Hyderabad'),(157,'Vijay Deverakonda','Hyderabad'),(158,'Anand Deverakonda','Hyderabad'),(159,'Rashmika Mandanna','Coorg'),
(160,'Samantha Ruth','Chennai'),(161,'Naga Chaitanya','Hyderabad'),(162,'Nagarjuna Akkineni','Hyderabad'),(163,'Amala Akkineni','Hyderabad'),
(164,'Akhil Akkineni','Hyderabad'),(165,'Sumanth Y','Hyderabad'),(166,'Anushka Shetty','Bangalore'),(167,'Nayanthara Kurian','Bengaluru'),
(168,'Vignesh Shivan','Chennai'),(169,'Keerthy Suresh','Chennai'),(170,'Dulquer Salmaan','Kochi'),(171,'Mammootty Panaparambil','Kochi'),
(172,'Mohanlal Viswanathan','Kochi'),(173,'Prithviraj Sukumaran','Kochi'),(174,'Fahadh Faasil','Kochi'),(175,'Nazriya Nazim','Kochi'),
(176,'Tovino Thomas','Kochi'),(177,'Asif Ali','Kochi'),(178,'Nivin Pauly','Kochi'),(179,'Vineeth Sreenivasan','Kochi'),(180,'Dhyan Sreenivasan','Kochi'),
(181,'Yash Gowda','Bangalore'),(182,'Radhika Pandit','Bangalore'),(183,'Rishab Shetty','Mangalore'),(184,'Rakshit Shetty','Udupi'),
(185,'Raj B Shetty','Mangalore'),(186,'Puneeth Rajkumar','Bangalore'),(187,'Shiva Rajkumar','Bangalore'),(188,'Raghavendra R','Bangalore'),
(189,'Kiccha Sudeep','Shimoga'),(190,'Darshan Thoogudeepa','Ponnampet'),(191,'Upendra Rao','Kundapura'),(192,'Ganesh Kishan','Bengaluru'),
(193,'Duniya Vijay','Bengaluru'),(194='Agni Dhananjaya','Bengaluru'),(195,'Dhruva Sarja','Bangalore'),(196,'Chiranjeevi Sarja','Bangalore'),
(197,'Arjun Sarja','Chennai'),(198,'Meghana Raj','Bangalore'),(199,'Prajwal Devaraj','Bangalore'),(200,'Devaraj J','Bangalore'),
(201,'Suriya Sivakumar','Chennai'),(202,'Jyothika Saravanan','Mumbai'),(203,'Karthi Sivakumar','Chennai'),(204,'Sivakumar Palanisamy','Chennai'),
(205,'Vijay Joseph','Chennai'),(206,'Sangeetha Vijay','Chennai'),(207,'Ajith Kumar','Secunderabad'),(208,'Shalini Ajith','Chennai'),
(209,'Vikram Kennedy','Chennai'),(210='Dhruv Vikram','Chennai'),(211,'Dhanush Raja','Chennai'),(212,'Aishwarya Rajinikanth','Chennai'),
(213,'Rajinikanth Gaikwad','Chennai'),(214,'Latha Rajinikanth','Chennai'),(215,'Kamal Haasan','Chennai'),(216,'Shruti Haasan','Chennai'),
(217,'Akshara Haasan','Chennai'),(218,'Silambarasan Rajendar','Chennai'),(219,'Anirudh Ravichander','Chennai'),(220,'Santhosh Narayanan','Trichy'),
(221,'Yuvan Shankar Raja','Chennai'),(222,'Ilaiyaraaja Group','Chennai'),(223,'AR Rahman M','Chennai'),(224,'GV Prakash Kumar','Chennai'),
(225,'Saindhavi Prakash','Chennai'),(226,'Harris Jayaraj','Chennai'),(227,'D Imman M','Chennai'),(228,'Thaman Sai','Andhra'),(229='Devi Sri P','Andhra'),
(230,'MM Keeravaani','Andhra'),(231,'Kartik Aaryan','Gwalior'),(232,'Sara Ali Khan M','Mumbai'),(233,'Ananya Panday','Mumbai'),
(234,'Chunky Panday M','Mumbai'),(235,'Bhavana Panday','Mumbai'),(236,'Sanjay Kapoor','Mumbai'),(237='Maheep Kapoor M','Mumbai'),
(238,'Shanaya Kapoor M','Mumbai'),(239,'Boney Kapoor M','Mumbai'),(240,'Sridevi Kapoor','Sivakasi'),(241,'Arbaaz Khan K','Mumbai'),
(242,'Malaika Arora T','Thane'),(243,'Amrita Arora T','Thane'),(244,'Arhaan Khan M','Mumbai'),(245,'Seema Sajdeh D','Delhi'),(246,'Nirvan Khan M','Mumbai'),
(247,'Yohan Khan M','Mumbai'),(248,'Maheep Sandhu','Mumbai'),(249,'Neelam Kothari M','Mumbai'),(250='Samir Soni L','London'),(251,'Seema Khan K','Mumbai'),
(252,'Bhavana Pandey P','Mumbai'),(253,'Gauri Khan K','Mumbai'),(254,'Suzanne Khan M','Mumbai'),(255,'Hrithik Roshan M','Mumbai'),
(256,'Rakesh Roshan M','Mumbai'),(257,'Pinkie Roshan M','Mumbai'),(258,'Sunaina Roshan M','Mumbai'),(259,'Pashmina Roshan M','Mumbai'),
(260,'Rajesh Roshan M','Mumbai'),(261,'Tiger Shroff M','Mumbai'),(262,'Jackie Shroff U','Udgir'),(263,'Ayesha Shroff M','Mumbai'),
(264,'Krishna Shroff M','Mumbai'),(265,'Disha Patani B','Bareilly'),(266,'Tara Sutaria M','Mumbai'),(267,'Aadar Jain M','Mumbai'),
(268,'Armaan Jain M','Mumbai'),(269,'Anissa Malhotra M','Mumbai'),(270,'Rima Jain M','Mumbai'),(271,'Manoj Tiwari P','Patna'),(272,'Ravi Kishan J','Jaunpur'),
(273,'Dinesh Lal P','Patna'),(274='Khesari Lal Y','Siwan'),(275,'Pawan Singh A','Arah'),(276,'Akshara Singh P','Patna'),(277,'Amrapali Dubey G','Gorakhpur'),
(278,'Rani Chatterjee M','Mumbai'),(279,'Moni Roy D','Delhi'),(280,'Kajal Raghwani P','Pune'),(281,'Subhi Sharma J','Jaipur'),
(282='Anjana Singh L','Lucknow'),(283,'Pakhi Hegde M','Mumbai'),(284,'Yash Kumar B','Balia'),(285,'Chintu Pandey B','Balia'),
(286,'Pradeep Pandey B','Balia'),(287,'Awadhesh Mishra P','Patna'),(288,'Sanjay Pandey G','Ghazipur'),(289,'Dev Singh B','Buxar'),
(290,'Manoj Tiger B','Buxar'),(291,'Amitabh Bachchan A','Allahabad'),(292,'Jaya Bachchan J','Jabalpur'),(293,'Abhishek Bachchan M','Mumbai'),
(294,'Aishwarya Rai M','Mangalore'),(295,'Aaradhya Bachchan','Mumbai'),(296='Shweta Bachchan M','Mumbai'),(297,'Navya Naveli Nanda','Mumbai'),
(298,'Agastya Nanda M','Mumbai'),(299,'Nikhil Nanda D','Delhi'),(300,'Ritu Nanda M','Mumbai');

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
