SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




CREATE TABLE `customers` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'pk',
  `seller_id` int(11) UNSIGNED NOT NULL COMMENT 'fk',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='customers';

CREATE TABLE `orders` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'pk',
  `seller_id` int(11) UNSIGNED NOT NULL COMMENT 'fk',
  `customer_id` int(11) UNSIGNED NOT NULL COMMENT 'fk',
  `onDate` date NOT NULL,
  `amount` float(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='orders';

CREATE TABLE `sellers` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'pk',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commision` float(4,2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='sellers';


ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seller_id` (`seller_id`);

ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seller_id` (`seller_id`),
  ADD KEY `customer_id` (`customer_id`);

ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `customers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'pk';

ALTER TABLE `orders`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'pk';

ALTER TABLE `sellers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'pk';
COMMIT;

