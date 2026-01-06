
CREATE DATABASE IF NOT EXISTS ecommerce;

SELECT ecommerce;

CREATE TABLE IF NOT EXISTS `categories` (
  `category_id` INT(11) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(100) NOT NULL,
  `category_name_ar` VARCHAR(100) NOT NULL,
  `category_image` VARCHAR(250) NOT NULL,
  `category_datetime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


CREATE TABLE IF NOT EXISTS `items` (
  `item_id` INT(11) NOT NULL AUTO_INCREMENT,
  `item_name` VARCHAR(100) NOT NULL,
  `item_name_ar` VARCHAR(100) NOT NULL,
  `item_desc` VARCHAR(255) NOT NULL,
  `item_desc_ar` VARCHAR(255) NOT NULL,
  `item_image` VARCHAR(255) NOT NULL,
  `item_count` INT(11) NOT NULL,
  `item_price` FLOAT NOT NULL,
  `item_discount` SMALLINT(6) NOT NULL,
  `item_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `item_active` TINYINT(4) NOT NULL DEFAULT 1,
  `item_cat` INT(11) NOT NULL,

  PRIMARY KEY (`item_id`),
  KEY `item_cat` (`item_cat`),

  CONSTRAINT `items_ibfk_1`
    FOREIGN KEY (`item_cat`)
    REFERENCES `categories` (`category_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE

) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_name` VARCHAR(100) NOT NULL,
  `user_email` VARCHAR(100) NOT NULL,
  `user_phone` VARCHAR(100) NOT NULL,
  `user_verfiycode` INT(11) NOT NULL,
  `user_approve` TINYINT(4) NOT NULL DEFAULT 0,
  `user_create` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_password` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


CREATE TABLE IF NOT EXISTS `favorites` (
  `favorite_id` INT(11) NOT NULL AUTO_INCREMENT,
  `favorite_user_id` INT(11) NOT NULL,
  `favorite_item_id` INT(11) NOT NULL,
  `favorite_datetime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

  PRIMARY KEY (`favorite_id`),

  -- منع تكرار نفس العنصر لنفس المستخدم
  UNIQUE KEY `user_item_unique` (`favorite_user_id`, `favorite_item_id`),

  -- العلاقة مع جدول users
  CONSTRAINT `fk_favorites_user`
    FOREIGN KEY (`favorite_user_id`)
    REFERENCES `users` (`user_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,

  -- العلاقة مع جدول items
  CONSTRAINT `fk_favorites_item`
    FOREIGN KEY (`favorite_item_id`)
    REFERENCES `items` (`item_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE

) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


CREATE TABLE `carts` (
  `card_id` INT(11) NOT NULL AUTO_INCREMENT,
  `cart_user_id` INT(11) NOT NULL,
  `cart_item_id` INT(11) NOT NULL,

  PRIMARY KEY (`card_id`),
  KEY `cart_item_id` (`cart_item_id`),
  KEY `cart_user_id` (`cart_user_id`),

  CONSTRAINT `carts_ibfk_1`
    FOREIGN KEY (`cart_item_id`)
    REFERENCES `items` (`item_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,

  CONSTRAINT `carts_ibfk_2`
    FOREIGN KEY (`cart_user_id`)
    REFERENCES `users` (`user_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci;


CREATE TABLE `addresses` (
  `address_id` INT(11) NOT NULL AUTO_INCREMENT,
  `address_user_id` INT(11) NOT NULL,
  `address_name` VARCHAR(255) NOT NULL,
  `address_city` VARCHAR(255) NOT NULL,
  `address_street` VARCHAR(255) NOT NULL,
  `address_lat` DOUBLE NOT NULL,
  `address_long` DOUBLE NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `address_user_id` (`address_user_id`),
  CONSTRAINT `addresses_ibfk_1`
    FOREIGN KEY (`address_user_id`)
    REFERENCES `users` (`user_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;
