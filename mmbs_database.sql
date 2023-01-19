-- -----------------------------------------------------

CREATE SCHEMA IF NOT EXISTS `mmbs_database` DEFAULT CHARACTER SET utf8mb4;
USE `mmbs_database`;
-- -----------------------------------------------------
-- Table `mmbs_database`.`orderpayment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmbs_database`.`orderpayment` (
  `order_number` INT NOT NULL,
  `order_user_id` VARCHAR(45) NOT NULL,
  `order_product_isbn` INT NOT NULL,
  `order_memberName` VARCHAR(45) NOT NULL,
  `order_memberPhone` VARCHAR(45) NOT NULL,
  `order_memberEmail` VARCHAR(45) NOT NULL,
  `order_product_title` VARCHAR(45) NOT NULL,
  `order_product_price` INT NOT NULL,
  `order_product_amount` INT NOT NULL,
  `order_total_price` INT NOT NULL,
  `order_date` DATE NOT NULL,
  `order_recipient` VARCHAR(45) NOT NULL,
  `order_reciept_phone` VARCHAR(45) NOT NULL,
  `order_ship_address` VARCHAR(200) NOT NULL,
  `order_ship_price` INT NOT NULL,
  `order_ship_number` INT NOT NULL,
  `order_ship_status` VARCHAR(45) NOT NULL,
  `order_ship_message` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`order_number`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci;

-- -----------------------------------------------------
-- Table `mmbs_database`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmbs_database`.`product` (
  `product_isbn` INT NOT NULL,
  `product_title` text NOT NULL,
  `product_writer` VARCHAR(45) NULL NOT NULL,
  `product_publisher` VARCHAR(45) NOT NULL,
  `product_age` VARCHAR(45) NOT NULL,
  `product_genre` VARCHAR(45) NOT NULL,
  `product_publication_date` DATE NOT NULL,
  `product_price` INT NOT NULL,
  `product_sales_price` INT NOT NULL,
  `product_stock` INT NOT NULL,
  `procudt_like` INT NOT NULL,
  `product_stocking_date` DATE default NULL,
  `product_introduce` text NOT NULL,
  `product_image_url` text NOT NULL,
  PRIMARY KEY (`product_isbn`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci;

-- -----------------------------------------------------
-- Table `mmbs_database`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmbs_database`.`user` (
  `user_id` VARCHAR(45) NOT NULL,
  `user_password` VARCHAR(45) NOT NULL,
  `user_name` VARCHAR(45) NOT NULL,
  `user_phone` VARCHAR(45) NOT NULL,
  `user_email` VARCHAR(45) NOT NULL,
  `user_addressApi` VARCHAR(200) NOT NULL,
  `user_addressDtl` VARCHAR(200) NULL DEFAULT NULL,
  `user_grade` VARCHAR(45) NOT NULL,
  `user_total_amount` INT NOT NULL,
  `user_recommend` INT NOT NULL,
  `user_kid_birth` VARCHAR(45) NULL DEFAULT NULL,
  `user_signup_date` DATE NOT NULL,
  `user_withdraw` DATE NULL DEFAULT NULL,
  `user_coupon` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci;

-- -----------------------------------------------------
-- Table `mmbs_database`.`ask`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmbs_database`.`ask` (
	`ask_id` int NOT NULL,
	`ask_writer` VARCHAR(45) NOT NULL,
	`ask_title` VARCHAR(45) NOT NULL,
	`ask_sort` VARCHAR(45) NOT NULL,
	`ask_content` TEXT NOT NULL,
	`ask_data` DATE NOT NULL,
	`ask_status` VARCHAR(45) NOT NULL,
	`ask_delete` VARCHAR(45),
  PRIMARY KEY (`ask_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci;

-- -----------------------------------------------------
-- Table `mmbs_database`.`review`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmbs_database`.`review` (
	`review_id` int NOT NULL,
	`review_writer` VARCHAR(45) NOT NULL,
	`order_number` INT NOT NULL,
	`review_title` VARCHAR(45) NOT NULL,
	`review_content` VARCHAR(45) NOT NULL,
	`review_date` DATE NOT NULL,
	`review_status` VARCHAR(45) NOT NULL,
	`review_delete` VARCHAR(45) NULL,
  PRIMARY KEY (`review_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci;

-- -----------------------------------------------------
-- Table `mmbs_database`.`cart`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmbs_database`.`cart` (
  `cart_id` int NOT NULL,
  `cart_user_id` VARCHAR(45) NOT NULL,
	`cart_product_isbn` INT,
	`cart_product_name` VARCHAR(45) NOT NULL,
	`cart_product_price` INT,
	`cart_product_amount` INT,
	`cart_total_price` INT,
	`cart_product_stock` INT,
	`cart_data` DATE NOT NULL,
  PRIMARY KEY (`cart_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci;

-- -----------------------------------------------------
-- Table `mmbs_database`.`grade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmbs_database`.`grade` (
  `total_amount`int NOT NULL,
  `grade_sort` varchar(45),

  PRIMARY KEY (`total_amount`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci;

-- -----------------------------------------------------
-- Table `mmbs_database`.`coupon`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmbs_database`.`coupon` (
	`coupon_id` int NOT NULL,
    `coupon_sort` varchar(45),
  PRIMARY KEY (`coupon_id`))

ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci;

-- -----------------------------------------------------

CREATE TABLE `playtoy` (
`playtoy_id` int NOT null,
`playtoy_title` text not null,
`playtoy_age` varchar(45) not null,
`playtoy_genre` varchar(45) not null,
`playtoy_publication_date` date not null,
`playtoy_price` int not null,
`playtoy_sales_price` int not null,
`playtoy_stock` int not null,
`playtoy_like` int not null,
`playtoy_stocking_date` date default null,
`playtoy_introduce` text not null,
`playtoy_image_url` text not null,
primary key (`playtoy_id`))

ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci;
-- -----------------------------------------------------

CREATE TABLE `gift` (
`gift_id` int NOT null,
`gift_sort` varchar(45),
primary key (`gift_id`))

ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci;