-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июл 09 2018 г., 23:15
-- Версия сервера: 10.1.32-MariaDB
-- Версия PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `home`
--

DELIMITER $$
--
-- Процедуры
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_eq` (IN `equat` VARCHAR(128) CHARSET utf8, IN `res` TEXT CHARSET utf8)  NO SQL
INSERT INTO equations VALUES (0,equat,res)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `add_log` (IN `id` INT, IN `message` TEXT, IN `tm` TIME)  NO SQL
INSERT INTO logs VALUES (id,message, tm)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_id` (IN `equat` VARCHAR(128) CHARSET utf8)  NO SQL
SELECT id FROM equations WHERE eq=equat$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `equations`
--

CREATE TABLE `equations` (
  `id` int(11) NOT NULL,
  `eq` varchar(128) CHARACTER SET utf8 NOT NULL,
  `result` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `equations`
--

INSERT INTO `equations` (`id`, `eq`, `result`) VALUES
(16, 'x^2+2*x+3-6\n', '[-3, 1]'),
(17, 'x^3-3+3-1\n', '[1, -1/2 - sqrt(3)*I/2, -1/2 + sqrt(3)*I/2]'),
(18, 'x^3+21*x+43*x^15', '[0, CRootOf(43*x**14 + x**2 + 21, 0), CRootOf(43*x**14 + x**2 + 21, 1), CRootOf(43*x**14 + x**2 + 21, 2), CRootOf(43*x**14 + x**2 + 21, 3), CRootOf(43*x**14 + x**2 + 21, 4), CRootOf(43*x**14 + x**2 + 21, 5), CRootOf(43*x**14 + x**2 + 21, 6), CRootOf(43*x**14 + x**2 + 21, 7), CRootOf(43*x**14 + x**2 + 21, 8), CRootOf(43*x**14 + x**2 + 21, 9), CRootOf(43*x**14 + x**2 + 21, 10), CRootOf(43*x**14 + x**2 + 21, 11), CRootOf(43*x**14 + x**2 + 21, 12), CRootOf(43*x**14 + x**2 + 21, 13)]'),
(24, 'x^2+2*x\n', '[-2, 0]'),
(25, 'x^3\n', '[0]'),
(26, 'x^3+21*x+43*x^13-1', '[CRootOf(43*x**13 + x**3 + 21*x - 1, 0), CRootOf(43*x**13 + x**3 + 21*x - 1, 1), CRootOf(43*x**13 + x**3 + 21*x - 1, 2), CRootOf(43*x**13 + x**3 + 21*x - 1, 3), CRootOf(43*x**13 + x**3 + 21*x - 1, 4), CRootOf(43*x**13 + x**3 + 21*x - 1, 5), CRootOf(43*x**13 + x**3 + 21*x - 1, 6), CRootOf(43*x**13 + x**3 + 21*x - 1, 7), CRootOf(43*x**13 + x**3 + 21*x - 1, 8), CRootOf(43*x**13 + x**3 + 21*x - 1, 9), CRootOf(43*x**13 + x**3 + 21*x - 1, 10), CRootOf(43*x**13 + x**3 + 21*x - 1, 11), CRootOf(43*x**13 + x**3 + 21*x - 1, 12)]'),
(27, 'x^2+2*x', '[-2, 0]');

-- --------------------------------------------------------

--
-- Структура таблицы `logs`
--

CREATE TABLE `logs` (
  `eqid` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `logs`
--

INSERT INTO `logs` (`eqid`, `message`, `time`) VALUES
(16, '{\'eq\': \'x^2+2*x+3-6\\n\', \'res\': \'[-3, 1]\'}', '23:53:34'),
(17, '{\'eq\': \'x^3-3+3-1\\n\', \'res\': \'[1, -1/2 - sqrt(3)*I/2, -1/2 + sqrt(3)*I/2]\'}', '23:53:35'),
(18, '{\'eq\': \'x^3+21*x+43*x^15\', \'res\': \'[0, CRootOf(43*x**14 + x**2 + 21, 0), CRootOf(43*x**14 + x**2 + 21, 1), CRootOf(43*x**14 + x**2 + 21, 2), CRootOf(43*x**14 + x**2 + 21, 3), CRootOf(43*x**14 + x**2 + 21, 4), CRootOf(43*x**14 + x**2 + 21, 5), CRootOf(43*x**14 + x**2 + 21, 6), CRootOf(43*x**14 + x**2 + 21, 7), CRootOf(43*x**14 + x**2 + 21, 8), CRootOf(43*x**14 + x**2 + 21, 9), CRootOf(43*x**14 + x**2 + 21, 10), CRootOf(43*x**14 + x**2 + 21, 11), CRootOf(43*x**14 + x**2 + 21, 12), CRootOf(43*x**14 + x**2 + 21, 13)]\'}', '23:53:39'),
(24, '{\'eq\': \'x^2+2*x\\n\', \'res\': \'[-2, 0]\'}', '00:00:27'),
(25, '{\'eq\': \'x^3\\n\', \'res\': \'[0]\'}', '00:00:27'),
(26, '{\'eq\': \'x^3+21*x+43*x^13-1\', \'res\': \'[CRootOf(43*x**13 + x**3 + 21*x - 1, 0), CRootOf(43*x**13 + x**3 + 21*x - 1, 1), CRootOf(43*x**13 + x**3 + 21*x - 1, 2), CRootOf(43*x**13 + x**3 + 21*x - 1, 3), CRootOf(43*x**13 + x**3 + 21*x - 1, 4), CRootOf(43*x**13 + x**3 + 21*x - 1, 5), CRootOf(43*x**13 + x**3 + 21*x - 1, 6), CRootOf(43*x**13 + x**3 + 21*x - 1, 7), CRootOf(43*x**13 + x**3 + 21*x - 1, 8), CRootOf(43*x**13 + x**3 + 21*x - 1, 9), CRootOf(43*x**13 + x**3 + 21*x - 1, 10), CRootOf(43*x**13 + x**3 + 21*x - 1, 11), CRootOf(43*x**13 + x**3 + 21*x - 1, 12)]\'}', '00:00:30'),
(27, '{\'eq\': \'x^2+2*x\', \'res\': \'[-2, 0]\'}', '00:01:49'),
(27, 'error', '00:06:05'),
(27, 'error in {x^2+2*x}', '00:06:48');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `equations`
--
ALTER TABLE `equations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `eq` (`eq`),
  ADD KEY `id` (`id`);

--
-- Индексы таблицы `logs`
--
ALTER TABLE `logs`
  ADD KEY `eqid_2` (`eqid`),
  ADD KEY `eqid_3` (`eqid`),
  ADD KEY `eqid` (`eqid`) USING BTREE;

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `equations`
--
ALTER TABLE `equations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_ibfk_1` FOREIGN KEY (`eqid`) REFERENCES `equations` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
