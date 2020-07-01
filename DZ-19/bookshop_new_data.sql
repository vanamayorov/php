-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Июн 26 2020 г., 00:12
-- Версия сервера: 5.7.30-0ubuntu0.18.04.1
-- Версия PHP: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bookshop_new`
--

-- --------------------------------------------------------

--
-- Структура таблицы `activities`
--

CREATE TABLE `activities` (
  `customer_id` int(11) UNSIGNED DEFAULT NULL COMMENT 'fk',
  `browser` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `leave time` date NOT NULL,
  `visit time` date NOT NULL,
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='activity';

-- --------------------------------------------------------

--
-- Структура таблицы `authors`
--

CREATE TABLE `authors` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'pk',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `www` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biography` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` smallint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='authors';

--
-- Дамп данных таблицы `authors`
--

INSERT INTO `authors` (`id`, `first_name`, `last_name`, `www`, `biography`, `rank`) VALUES
(1, 'Оскар', 'Вайлд', 'https://uk.wikipedia.org/wiki/Оскар_Вайлд', 'Ім\'я при народженні	Оскар Фінгал О\'Флагерті Вілс Вайлд (англ. Oscar Fingal O\'Flahertie Wills Wilde)\r\nПсевдо	С.3.3. і Себастьян Мельмот ( Sebastian Melmoth)\r\nНародився	16 жовтня 1854\r\nДублін, Сполучене Королівство\r\nПомер	30 листопада 1900(46 років)\r\nПариж, Франція менінгіт', 1),
(2, 'Джордж', 'Оруелл', 'https://uk.wikipedia.org/wiki/Джордж_Орвелл', 'Ім\'я при народженні	Ерік Артур Блер (англ. Eric Arthur Blair)\r\nПсевдо	Джордж Орвелл,\r\nДжон Фрімен (англ. John Freeman)\r\nНародився	25 червня 1903[1][2][…]\r\nMotiharid, Tirhut divisiond, Біхар, Британська Індія\r\nПомер	21 січня 1950[1][2][…] (46 років)\r\nЛондон, Велика Британія[1]\r\n·туберкульоз\r\n', 2),
(3, 'Стівен', 'Кінг', 'https://uk.wikipedia.org/wiki/Стівен_Кінг', 'Ім\'я при народженні	англ. Stephen Edwin King[1]\r\nПсевдо	Річард Бахман\r\nДжон Свіфен\r\nНародився	21 вересня 1947 (72 роки)', 3),
(4, 'Чарльз', 'Диккенс', 'https://ru.wikipedia.org/wiki/Диккенс,_Чарльз', 'мя при рождении	Чарльз Джон Хаффем Диккенс\r\nПсевдонимы	Boz\r\nДата рождения	7 февраля 1812[1][2][3][…]\r\nМесто рождения	\r\nЛендпорт[d], Портсмут[d], Гэмпшир, Великобритания[2][7][8][…]\r\nДата смерти	9 июня 1870[4][5][6][…] (58 лет)', 2),
(5, 'Вільям', 'Шекспір', 'https://uk.wikipedia.org/wiki/Вільям_Шекспір', 'Прізвисько	Bard of Avon\r\nНародився	\r\n23 квітня 1564р.,\r\n\r\nхрещений 26 квітня 1564\r\nСтретфорд-на-Ейвоні\r\nПомер	23 квітня (3 травня) 1616\r\nСтретфорд-на-Ейвоні\r\n·гарячка', 5),
(6, 'Оноре', 'де Бальзак', 'https://uk.wikipedia.org/wiki/Оноре_де_Бальзак', 'Ім\'я при народженні	Honoré de Balzac\r\nПсевдо	Horace de Saint-Aubin, Lord R’Hoone і Viellerglé\r\nНародився	20 травня 1799\r\nТур, Французька республіка\r\nПомер	18 серпня 1850 (51 рік)\r\nПариж, Французька імперія\r\n·гангрена', 2),
(7, 'Марґарет', 'Мітчелл', 'https://uk.wikipedia.org/wiki/Марґарет_Мітчелл', 'Ім\'я при народженні	англ. Margaret Munnerlyn Mitchell\r\nПсевдо	Margaret Mitchell\r\nНародилася	8 листопада 1900\r\nАтланта, Джорджія, США\r\nПомерла	16 серпня 1949 (48 років)\r\nАтланта, Джорджія, США\r\n·дорожньо-транспортна пригода', 3),
(8, 'Габрієль', 'Гарсія', 'https://uk.wikipedia.org/wiki/Габрієль_Гарсія_Маркес', 'Ім\'я при народженні	ісп. Gabriel José de la Concordia García Márquez\r\nПрізвисько	Gabo і Gabito\r\nПсевдо	Габо (Gabo)\r\nНародився	6 березня 1927\r\nАракатака, провінція Магдалена, Колумбія\r\nПомер	17 квітня 2014 (87 років)\r\nМехіко, Мексика\r\n·Лімфома і пневмонія', 2),
(9, 'Артур', 'Конан Дойл', 'https://uk.wikipedia.org/wiki/Артур_Конан_Дойл', 'Артур Ігнатіус Конан Дойл\r\nНародився	22 травня 1859\r\nЕдинбург, Шотландія\r\nПомер	7 липня 1930 (71 рік)\r\nWindlesham Manord, Кроуборо, Велика Британія\r\n·зупинка серця', 2),
(10, 'Михайло', 'Булгаков', 'https://uk.wikipedia.org/wiki/Булгаков_Михайло_Опанасович', 'Булгаков у 1910-х роках\r\nПсевдо	Агарин, М. Б., Булл., М.Булл., Михаил Булл.\r\nНародився	3 (15) травня 1891\r\nКиїв, Російська імперія\r\nПомер	10 березня 1940 (48 років)\r\nМосква, СРСР\r\n·ниркова недостатність', 3),
(11, 'Харпер', 'Ли', NULL, 'Нелле Харпер Ли родилась 28 апреля 1926 года в Монровиле, штат Алабама. Монровиль - город с населением около 7 000 человек относится к округу Монро, в котором проживают 24 000 человек. Монровиль расположен на юго-западе Алабамы, на полпути между Монтгомери и Мобилем.', 3),
(12, 'Федор', 'Достоевский', NULL, 'Достоевский Федор Михайлович (30.10.1821 года - 28.01.1881 года) - великий русский писатель.\r\nРодился в Москве. Отец, Михаил Андреевич (1789—1839),— врач (штаб-лекарь) московской Мариинской больницы для бедных, в 1828 получил звание потомственного дворянина.', 8),
(13, 'Борис', 'Стругацкий', NULL, 'Родился в Ленинграде. Окончил математико-механический факультет Ленинградского Государственного университета по специальности \"звездный астроном\". Работал в Пулковской обсерватории. С 1966 года - профессиональный писатель, член Союза Писателей СССР.\r\n\r\n', 2),
(14, 'Александр', 'Дюма', NULL, 'Александр Дюма – выдающийся французский драматург, романист, поэт, писатель, сказочник, биограф, журналист и вообще выдающийся человек, родился 24 июля 1802 года в городе Вилле-Котре, недалеко от Парижа. В метрике его полное имя было записано как \"Александр Дюма Дави де Пайетери\".', 10),
(15, 'Джейн', 'Остин', NULL, 'Джейн Остин (англ. Jane Austen, возможно написание Остен, 1775—1817) — английская писательница, провозвестница реализма в британской литературе, основоположница семейного, «дамского романа». Её книги являются признанными шедеврами и покоряют безыскусной искренностью и простотой сюжета, на фоне глубокого психологического проникновения в души героев и ироничного, мягкого, истинно «английского» юмора. Джейн Остин до сих пор по праву считают «Первой леди» английской литературы. Её произведения обязательны для изучения во всех колледжах и университетах Великобритании.', 8),
(16, 'Маркус', 'Зузак', NULL, 'Маркус Зузак (Markus Zusak) — австралийский писатель, младший из четырех детей. Его родители выходцы из Австрии; мать немка, отец работал маляром. В одном из интервью Зузак рассказал, что пока рос слышал многочисленные истории о нацистской Германии, бомбежках Мюнхена и евреях, которые проходили через маленький немецкий городок, в котором жила его мать. Все эти истории вдохновили Маркуса на написание романа «Книжный вор».', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `book`
--

CREATE TABLE `book` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'pk',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_id` int(11) UNSIGNED NOT NULL,
  `data` date NOT NULL,
  `isbn` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages` int(11) UNSIGNED NOT NULL,
  `categories_id` int(11) UNSIGNED NOT NULL,
  `books_authors_id` int(11) UNSIGNED NOT NULL,
  `publisher_id` int(11) UNSIGNED NOT NULL,
  `reviews_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='book';

--
-- Дамп данных таблицы `book`
--

INSERT INTO `book` (`id`, `name`, `price_id`, `data`, `isbn`, `title`, `cover`, `pages`, `categories_id`, `books_authors_id`, `publisher_id`, `reviews_id`) VALUES
(1, 'The Picture of Dorian Gray', 1, '2020-06-01', 978966746, '«Портрет Доріана Грея»', 'Lippincott_doriangray.jpg', 320, 8, 1, 1, 1),
(2, '\"1984\"', 7, '2020-06-01', 978966746, '\"1984\"', '1984_%28Ukrainian_edition%2C_2015%29.jpg', 210, 10, 5, 7, 8),
(3, 'Майстер і Маргарита', 5, '2020-06-01', 978966746, 'Майстер і Маргарита', 'Lippincott_doriangray.jpg', 500, 8, 8, 8, 4),
(4, 'Убить пересмешника', 7, '2020-06-08', 978966746, 'Убить пересмешника', 'https://r2.readrate.com/img/pictures/book/512/512778/5127788/w91-602d8bea.jpg', 250, 8, 11, 6, 7),
(5, 'Сто лет одиночества', 9, '2020-04-06', 978966746, 'Сто лет одиночества', 'https://r2.readrate.com/img/pictures/book/303/303926/303926/w91-4d6539a7.jpg', 280, 6, 7, 7, 9),
(6, 'Преступление и наказание', 4, '2020-06-01', 978966746, 'Преступление и наказание', 'https://r2.readrate.com/img/pictures/book/239/239046/239046/w91-54a87185.jpg', 210, 8, 12, 3, 3),
(7, 'Трудно быть богом', 6, '2020-06-15', 978966746, '\r\nТрудно быть богом', 'https://r2.readrate.com/img/pictures/book/107/107989/1079892/w91-59b46752.jpg', 190, 9, 13, 8, 2),
(8, 'Граф Монте-Кристо', 9, '2020-06-08', 978966746, 'Граф Монте-Кристо', 'https://r2.readrate.com/img/pictures/book/227/227020/227020/w91-d5677caf.jpg', 250, 8, 14, 3, 5),
(9, 'Гордость и предубеждение', 9, '2020-06-08', 978966746, 'Гордость и предубеждение', 'https://r5.readrate.com/img/pictures/book/981/981871/981871/w91-c7ab4141.jpg', 250, 8, 15, 3, 10),
(10, 'Книжный вор', 3, '2020-06-13', 978966746, 'Книжный вор', 'https://r2.readrate.com/img/pictures/book/574/574535/5745354/w91-5618b631.jpg', 321, 5, 16, 6, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `books_authors`
--

CREATE TABLE `books_authors` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'pk',
  `written_at` date NOT NULL,
  `author_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='books_authors';

--
-- Дамп данных таблицы `books_authors`
--

INSERT INTO `books_authors` (`id`, `written_at`, `author_id`) VALUES
(1, '2020-01-01', 1),
(2, '2020-01-01', 7),
(3, '2020-01-01', 6),
(4, '2020-01-01', 9),
(5, '2020-01-01', 2),
(6, '2020-01-01', 5),
(7, '2020-01-01', 8),
(8, '2020-01-01', 10),
(9, '2019-10-16', 3),
(10, '2020-01-21', 4),
(11, '2020-06-09', 11),
(12, '1860-06-17', 12),
(13, '1964-06-10', 13),
(14, '1815-06-17', 14),
(15, '1800-06-17', 15),
(16, '2015-06-16', 16);

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'pk',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `data_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='categories';

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `alias`, `enabled`, `data_created`) VALUES
(1, 'роман', 'romane', 'yes', '2020-06-01'),
(2, 'антиутопия', 'antiutopia', 'yes', '2020-06-01'),
(3, 'боевик', 'action_movie', 'yes', '2020-06-01'),
(4, 'детектив', 'detective', 'yes', '2020-06-01'),
(5, 'проза', 'prose', 'yes', '2020-06-01'),
(6, 'приключения', 'adventure', 'yes', '2020-06-01'),
(8, 'классика', 'classic', 'yes', '2020-06-01'),
(9, 'фантастика', 'fantastic', 'yes', '2020-06-01'),
(10, 'фэнтэзи', 'fantasy', 'yes', '2020-06-01'),
(11, 'сказка', 'fairy_tale', 'yes', '2020-06-01'),
(12, 'триллер', 'thriller', 'yes', '2020-06-01');

-- --------------------------------------------------------

--
-- Структура таблицы `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) UNSIGNED NOT NULL COMMENT 'pk',
  `full name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` int(100) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='customers';

--
-- Дамп данных таблицы `customers`
--

INSERT INTO `customers` (`customer_id`, `full name`, `email`, `tel`) VALUES
(1, 'Sonina Olena', 'test@gmail.com', 673250000);

-- --------------------------------------------------------

--
-- Структура таблицы `customers_profile`
--

CREATE TABLE `customers_profile` (
  `profile_id` int(11) UNSIGNED NOT NULL COMMENT 'pk',
  `customer_id` int(11) UNSIGNED NOT NULL COMMENT 'fk',
  `registration_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='customers_profile';

--
-- Дамп данных таблицы `customers_profile`
--

INSERT INTO `customers_profile` (`profile_id`, `customer_id`, `registration_date`) VALUES
(1, 1, '2020-06-11');

-- --------------------------------------------------------

--
-- Структура таблицы `gift`
--

CREATE TABLE `gift` (
  `ID` int(11) UNSIGNED NOT NULL,
  `Name` char(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Price` int(30) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `gift`
--

INSERT INTO `gift` (`ID`, `Name`, `Price`) VALUES
(1, 'iCool', 23),
(2, 'ZIq23', 436),
(3, 'tIkTaK', 140),
(4, 'XaHTep99', 44),
(5, 'Noobmaster', 345),
(6, 'haligali', 90),
(7, 'tomas', 67),
(8, 'csGo', 440);

-- --------------------------------------------------------

--
-- Структура таблицы `gift_books`
--

CREATE TABLE `gift_books` (
  `ID` int(11) UNSIGNED NOT NULL,
  `gift_id` int(11) UNSIGNED NOT NULL,
  `book_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `interests`
--

CREATE TABLE `interests` (
  `customer_id` int(11) UNSIGNED NOT NULL COMMENT 'fk',
  `genres` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float(6,2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='interests';

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'pk',
  `payedvia` int(11) UNSIGNED NOT NULL COMMENT 'fk',
  `customer_id` int(11) UNSIGNED NOT NULL COMMENT 'fk',
  `state` enum('new','processed','canceled','finished') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `on_time` time NOT NULL,
  `on_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='orders';

-- --------------------------------------------------------

--
-- Структура таблицы `order_products`
--

CREATE TABLE `order_products` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'pk',
  `order_id` int(11) UNSIGNED NOT NULL COMMENT 'fk',
  `book_id` int(11) UNSIGNED NOT NULL COMMENT 'fk',
  `qty` tinyint(3) UNSIGNED NOT NULL,
  `price` float(6,2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='order_products';

-- --------------------------------------------------------

--
-- Структура таблицы `payed_via`
--

CREATE TABLE `payed_via` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'pk',
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `www` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='payed_via';

--
-- Дамп данных таблицы `payed_via`
--

INSERT INTO `payed_via` (`id`, `name`, `www`) VALUES
(1, 'PayPal', 'www.paypal.com'),
(2, 'liqpay', 'www.liqpay.com'),
(3, 'Privat_24/7', 'www.privat.com'),
(4, 'Qiwi', 'www.qiwi.com');

-- --------------------------------------------------------

--
-- Структура таблицы `price`
--

CREATE TABLE `price` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'pk',
  `data` date NOT NULL,
  `price` float(7,3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='price';

--
-- Дамп данных таблицы `price`
--

INSERT INTO `price` (`id`, `data`, `price`) VALUES
(1, '2020-06-01', 66.600),
(2, '2020-06-10', 75.500),
(3, '2020-02-04', 32.500),
(4, '2020-02-19', 54.000),
(5, '2020-01-13', 33.000),
(6, '2020-02-04', 25.500),
(7, '2020-03-17', 35.500),
(8, '2020-04-14', 65.500),
(9, '2020-02-12', 55.500),
(10, '2020-01-13', 42.500),
(11, '2019-12-16', 54.230);

-- --------------------------------------------------------

--
-- Структура таблицы `publisher`
--

CREATE TABLE `publisher` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'pk',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `www` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='publisher';

--
-- Дамп данных таблицы `publisher`
--

INSERT INTO `publisher` (`id`, `name`, `www`, `country`) VALUES
(1, 'publisher 1', 'https://www.idontknow.com', 'USA'),
(2, 'publisher 2', 'https://www.idontknow.com', 'Canada'),
(3, 'publisher 3', 'https://www.idontknow.com', 'France'),
(4, 'publisher 4', 'https://www.idontknow.com', 'China'),
(5, 'publisher 5', 'https://www.idontknow.com', 'Ukraine'),
(6, 'publisher 6', 'https://www.idontknow.com', 'Britsh'),
(7, 'publisher 7', 'https://www.idontknow.com', 'India'),
(8, 'publisher 8', 'https://www.idontknow.com', 'Canada'),
(9, 'publisher 9', 'https://www.idontknow.com', 'USA'),
(10, 'publisher 10', 'https://www.idontknow.com', 'Ukraine');

-- --------------------------------------------------------

--
-- Структура таблицы `quotes`
--

CREATE TABLE `quotes` (
  `ID` int(11) UNSIGNED NOT NULL,
  `Quote` char(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Position` int(11) UNSIGNED NOT NULL,
  `Creation_date` datetime NOT NULL,
  `book_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `reccomend`
--

CREATE TABLE `reccomend` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'pk',
  `data` date NOT NULL,
  `book_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='reccomend';

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `ID` int(11) UNSIGNED NOT NULL,
  `Review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` enum('Published','Unpublished') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unpublished',
  `Mark` int(11) UNSIGNED NOT NULL,
  `Costumer_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`ID`, `Review`, `Status`, `Mark`, `Costumer_id`) VALUES
(1, 'Гарний написання, відмінний сюжет, але, на жаль, кінцівка мені не сподобалася - надто вже проста, якщо так можна сказати.', 'Published', 100, 1),
(2, 'Ні про що. Прочитала і забула. Хороший склад, але не відчувається смисловий глибини. Обрубаний кінець.', 'Published', 200, 1),
(3, 'Ооооочень понравилась. Хотя подобные классические произведения тяжеловаты для меня .', 'Unpublished', 100, 1),
(4, 'Книга геніальна Особливий сподобалося читати про час Пилата. Чітко показана бюрократія і хабарництво чиновників Радянської Росії .', 'Published', 300, 1),
(5, 'Чомусь саме цю книгу хочеться перечитувати знову і знову. Дуже точно вивірене співвідношення повчальною складової і захоплюючого, динамічного сюжету.', 'Published', 200, 1),
(6, 'книга приголомшлива! просто шедевр. люблю життєві історії. а з 98 сторінки ридала без перерви, так було сумно.', 'Published', 100, 1),
(7, 'спасибі автору Харпер Лі за те що вона допомогла поринути в атмосферу 30-х років. Американська Класика це завжди цікаво.', 'Unpublished', 100, 1),
(8, 'Книга на деякі, здавалося б, прості речі відкриває очі. Я вражений. Шкода, що сюжет цієї антиутопії настільки близький нам', 'Published', 300, 1),
(9, 'Незвичайне твір, але я очікувала чогось більшого.\r\nНе всі моменти цікаві.', 'Unpublished', 200, 1),
(10, 'Классика!!! Всегда будет в 10-ке моих любимых книг!!!', 'Published', 100, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `Shipping_info`
--

CREATE TABLE `Shipping_info` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'PK',
  `order_id` int(11) UNSIGNED NOT NULL COMMENT 'FK for orders',
  `customer_id` int(11) UNSIGNED NOT NULL COMMENT 'FK for customer',
  `country` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Shipping_info';

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `ID` int(11) UNSIGNED NOT NULL,
  `Tag` char(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Position` int(11) UNSIGNED NOT NULL,
  `Creation_date` datetime NOT NULL,
  `book_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wish_lists`
--

CREATE TABLE `wish_lists` (
  `id` int(11) UNSIGNED NOT NULL,
  `profile_id` int(11) UNSIGNED NOT NULL COMMENT 'fk',
  `author_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_id` int(11) UNSIGNED NOT NULL COMMENT 'fk'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='wish_list';

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `activities`
--
ALTER TABLE `activities`
  ADD KEY `customer_id` (`customer_id`);

--
-- Индексы таблицы `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `price_id` (`price_id`),
  ADD KEY `categories_id` (`categories_id`),
  ADD KEY `books_authors_id` (`books_authors_id`),
  ADD KEY `publisher_id` (`publisher_id`),
  ADD KEY `reviews_id` (`reviews_id`);

--
-- Индексы таблицы `books_authors`
--
ALTER TABLE `books_authors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Индексы таблицы `customers_profile`
--
ALTER TABLE `customers_profile`
  ADD PRIMARY KEY (`profile_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Индексы таблицы `gift`
--
ALTER TABLE `gift`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `gift_books`
--
ALTER TABLE `gift_books`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `gift_id` (`gift_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Индексы таблицы `interests`
--
ALTER TABLE `interests`
  ADD KEY `customer_id` (`customer_id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payedvia` (`payedvia`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Индексы таблицы `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Индексы таблицы `payed_via`
--
ALTER TABLE `payed_via`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `book_id` (`book_id`);

--
-- Индексы таблицы `reccomend`
--
ALTER TABLE `reccomend`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`);

--
-- Индексы таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Costumer_id` (`Costumer_id`);

--
-- Индексы таблицы `Shipping_info`
--
ALTER TABLE `Shipping_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `book_id` (`book_id`);

--
-- Индексы таблицы `wish_lists`
--
ALTER TABLE `wish_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_id` (`profile_id`),
  ADD KEY `book_id` (`book_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'pk', AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'pk', AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `books_authors`
--
ALTER TABLE `books_authors`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'pk', AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'pk', AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'pk', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `customers_profile`
--
ALTER TABLE `customers_profile`
  MODIFY `profile_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'pk', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `gift`
--
ALTER TABLE `gift`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `gift_books`
--
ALTER TABLE `gift_books`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `interests`
--
ALTER TABLE `interests`
  MODIFY `customer_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'fk';
--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'pk';
--
-- AUTO_INCREMENT для таблицы `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'pk';
--
-- AUTO_INCREMENT для таблицы `payed_via`
--
ALTER TABLE `payed_via`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'pk', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `price`
--
ALTER TABLE `price`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'pk', AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'pk', AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `quotes`
--
ALTER TABLE `quotes`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `reccomend`
--
ALTER TABLE `reccomend`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'pk';
--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `Shipping_info`
--
ALTER TABLE `Shipping_info`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'PK';
--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wish_lists`
--
ALTER TABLE `wish_lists`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `activities_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`price_id`) REFERENCES `price` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_ibfk_2` FOREIGN KEY (`books_authors_id`) REFERENCES `books_authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_ibfk_3` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_ibfk_4` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_ibfk_5` FOREIGN KEY (`reviews_id`) REFERENCES `reviews` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `books_authors`
--
ALTER TABLE `books_authors`
  ADD CONSTRAINT `books_authors_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `customers_profile`
--
ALTER TABLE `customers_profile`
  ADD CONSTRAINT `customers_profile_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `gift_books`
--
ALTER TABLE `gift_books`
  ADD CONSTRAINT `gift_books_ibfk_1` FOREIGN KEY (`gift_id`) REFERENCES `gift` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gift_books_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `interests`
--
ALTER TABLE `interests`
  ADD CONSTRAINT `interests_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`payedvia`) REFERENCES `payed_via` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_products_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `quotes`
--
ALTER TABLE `quotes`
  ADD CONSTRAINT `quotes_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `reccomend`
--
ALTER TABLE `reccomend`
  ADD CONSTRAINT `reccomend_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`Costumer_id`) REFERENCES `customers_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `Shipping_info`
--
ALTER TABLE `Shipping_info`
  ADD CONSTRAINT `Shipping_info_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Shipping_info_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `wish_lists`
--
ALTER TABLE `wish_lists`
  ADD CONSTRAINT `wish_lists_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wish_lists_ibfk_2` FOREIGN KEY (`profile_id`) REFERENCES `customers_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
