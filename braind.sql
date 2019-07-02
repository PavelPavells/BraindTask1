-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Июн 30 2019 г., 08:38
-- Версия сервера: 10.1.31-MariaDB
-- Версия PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `braind`
--

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `title`, `category`, `price`) VALUES
(1, 'Sony', 'TV', 30000),
(2, 'Samsung', 'TV', 33000),
(3, 'LG', 'TV', 27000),
(4, 'Daewoo', 'TV', 28500),
(5, 'Akai', 'TV', 26700),
(6, 'Panasonic', 'TV', 28900),
(7, 'Pioneer', 'TV', 33500),
(8, 'Sanyo', 'TV', 34500),
(9, 'Supra', 'TV', 29900),
(10, 'Toshiba', 'TV', 42500);

-- --------------------------------------------------------

--
-- Структура таблицы `property_goods`
--

CREATE TABLE `property_goods` (
  `id` int(100) NOT NULL,
  `color` text CHARACTER SET utf8 NOT NULL,
  `size` varchar(11) NOT NULL,
  `new` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `property_goods`
--

INSERT INTO `property_goods` (`id`, `color`, `size`, `new`) VALUES
(1, 'green\r\n', '52\"', 'new'),
(2, 'red', '48\"', 'old'),
(3, 'black', '54\"', 'old'),
(4, 'green', '56\"', 'new'),
(5, 'white', '52\"', 'old'),
(6, 'white', '53\"', 'old'),
(7, 'grey', '54\"', 'old'),
(8, 'green', '46\"', 'new'),
(9, 'black', '46\"', 'old'),
(10, 'grey', '50\"', 'old');

-- --------------------------------------------------------

--
-- Структура таблицы `value_properties_goods`
--

CREATE TABLE `value_properties_goods` (
  `id` int(11) NOT NULL,
  `id_products` int(11) NOT NULL,
  `id_property` int(11) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `value_properties_goods`
--

INSERT INTO `value_properties_goods` (`id`, `id_products`, `id_property`, `value`) VALUES
(1, 1, 1, 'green'),
(2, 2, 2, 'yellow'),
(3, 3, 3, 'yellow'),
(4, 4, 4, 'green'),
(5, 5, 5, 'yellow'),
(6, 6, 6, 'yellow'),
(7, 7, 7, 'yellow'),
(8, 8, 8, 'green'),
(9, 9, 9, 'yellow'),
(10, 10, 10, 'yellow');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `property_goods`
--
ALTER TABLE `property_goods`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `value_properties_goods`
--
ALTER TABLE `value_properties_goods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `property_goods`
--
ALTER TABLE `property_goods`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `value_properties_goods`
--
ALTER TABLE `value_properties_goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
