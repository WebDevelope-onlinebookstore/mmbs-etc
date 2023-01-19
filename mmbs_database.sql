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
  `product_publicationDate` DATE NOT NULL,
  `product_price` INT NOT NULL,
  `product_sales_price` INT NOT NULL,
  `product_stock` INT NOT NULL,
  `procudt_like` INT NOT NULL,
  `product_stockingDate` DATE default NULL,
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
  `ask_id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ask_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci;


-- -----------------------------------------------------
-- Table `mmbs_database`.`review`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmbs_database`.`review` (
  `review_id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`review_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci;


-- -----------------------------------------------------
-- Table `mmbs_database`.`cart`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmbs_database`.`cart` (
  `cart_id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cart_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci;


-- -----------------------------------------------------
-- Table `mmbs_database`.`grade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmbs_database`.`grade` (
  `total_amount` VARCHAR(45) NOT NULL,

  PRIMARY KEY (`total_amount`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci;

alter table grade add total_amount int;
alter table grade add grade_sort varchar(45);




-- -----------------------------------------------------
-- Table `mmbs_database`.`coupon`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmbs_database`.`coupon` (
	`coupon_id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`coupon_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci;
