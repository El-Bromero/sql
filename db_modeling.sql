-- queries to set up DB models go here
USE tc4_brandon_romero;
-- **************************************************************************** QUESTION 1
-- ************************************** `customer`
CREATE TABLE IF NOT EXISTS `customer`
(
 `order`         varchar(45) NOT NULL ,
 `customer_name` varchar(45) NOT NULL ,

PRIMARY KEY (`customer_name`)
);
-- ************************************** `TEKCafe`
CREATE TABLE IF NOT EXISTS `TEKCafe`
(
 `product_name` varchar(45) NOT NULL 
);

-- **************************************************************************** QUESTION 2
-- ************************************** `medical_center`
CREATE TABLE IF NOT EXISTS `medical_center`
(
 `physician`    varchar(45) NOT NULL ,
 `physician_id` int NOT NULL ,

PRIMARY KEY (`physician_id`)
);
-- ************************************** `patient`
CREATE TABLE IF NOT EXISTS `patient`
(
 `patient_id`   int NOT NULL ,
 `patient_name` varchar(45) NOT NULL ,
 `diagnosis`    varchar(45) NOT NULL ,

PRIMARY KEY (`patient_id`)
);

-- **************************************************************************** QUESTION 3
-- ************************************** `product`
CREATE TABLE IF NOT EXISTS `product`
(
 `product_id` int NOT NULL ,
 `avg_rating` int NOT NULL ,

PRIMARY KEY (`product_id`)
);
-- ************************************** `product_customer`
CREATE TABLE IF NOT EXISTS `product_customer`
(
 `customer_id`    int NOT NULL ,
 `product_rating` int NOT NULL ,
 `product_id`     int NOT NULL ,

PRIMARY KEY (`customer_id`, `product_id`),
KEY `fkIdx_25` (`product_id`),
CONSTRAINT `FK_24` FOREIGN KEY `fkIdx_25` (`product_id`) REFERENCES `product` (`product_id`)
);

-- **************************************************************************** QUESTION 4
-- ************************************** `student_advisor`
CREATE TABLE IF NOT EXISTS `student_advisor`
(
 `advisor_id` int NOT NULL ,
 `name`       varchar(45) NOT NULL ,

PRIMARY KEY (`advisor_id`)
);
-- ************************************** `student_a`
CREATE TABLE IF NOT EXISTS `student_a`
(
 `student_id` int NOT NULL ,
 `name`       varchar(45) NOT NULL ,
 `major`      varchar(45) NOT NULL ,
 `advisor_id` int NOT NULL ,

PRIMARY KEY (`student_id`),
KEY `fkIdx_44` (`advisor_id`),
CONSTRAINT `FK_43` FOREIGN KEY `fkIdx_44` (`advisor_id`) REFERENCES `student_advisor` (`advisor_id`)
);

-- **************************************************************************** QUESTION 5
-- ************************************** `e-commerce`
CREATE TABLE IF NOT EXISTS `e-commerce`
(
 `product_id` int NOT NULL ,
 `vendors`    varchar(45) NOT NULL ,

PRIMARY KEY (`product_id`)
);
-- ************************************** `e-commerce_customer`
CREATE TABLE IF NOT EXISTS `e-commerce_customer`
(
 `product_id`  int NOT NULL ,
 `customer_id` int NOT NULL ,

PRIMARY KEY (`customer_id`),
KEY `fkIdx_52` (`product_id`),
CONSTRAINT `FK_51` FOREIGN KEY `fkIdx_52` (`product_id`) REFERENCES `e-commerce` (`product_id`)
);

-- **************************************************************************** QUESTION 6
-- ************************************** `TEKcamp`
CREATE TABLE IF NOT EXISTS `TEKcamp`
(
 `instructor` varchar(45) NOT NULL ,
 `tm`         varchar(45) NOT NULL ,

PRIMARY KEY (`instructor`, `tm`)
);
-- ************************************** `TEK_student`
CREATE TABLE IF NOT EXISTS `TEK_student`
(
 `student_name` varchar(45) NOT NULL ,
 `instructor`   varchar(45) NOT NULL ,
 `tm`           varchar(45) NOT NULL ,

PRIMARY KEY (`student_name`),
KEY `fkIdx_64` (`instructor`, `tm`),
CONSTRAINT `FK_63` FOREIGN KEY `fkIdx_64` (`instructor`, `tm`) REFERENCES `TEKcamp` (`instructor`, `tm`)
);
