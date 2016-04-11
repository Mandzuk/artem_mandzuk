-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Апр 11 2016 г., 11:22
-- Версия сервера: 5.6.24
-- Версия PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `nas_broker`
--

-- --------------------------------------------------------

--
-- Структура таблицы `bonus_code`
--

CREATE TABLE IF NOT EXISTS `bonus_code` (
  `id` int(255) NOT NULL,
  `serial_number` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `generation_date` date NOT NULL,
  `date_end_of` date NOT NULL,
  `use_date` date DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `bonus_code`
--

INSERT INTO `bonus_code` (`id`, `serial_number`, `number`, `generation_date`, `date_end_of`, `use_date`, `status`) VALUES
(97, 'HDNFG', 'd487519f1e66ded0a23af4365d03571c00f13854', '2016-04-05', '2016-11-19', NULL, 1),
(110, 'EFMOX', 'b5b9f86253af965390d08a53786fe7ee6b7eef33', '2016-04-10', '2016-08-26', NULL, 1),
(111, 'FWKDZ', '1d3ff27824dfd9180eb2f069f89fe8f2d12da7ef', '2016-04-10', '2016-08-26', NULL, 1),
(112, 'VHXBE', '38ac9b800e4e9a77a14f232a12cf14b663d064c8', '2016-04-10', '2016-08-26', NULL, 1),
(114, 'HQHVE', '507bbffd4f5a987307beaa9bcdbb75940cd8544e', '2016-04-10', '2016-08-26', NULL, 1),
(129, '123423435345', '123123', '2016-04-10', '2019-04-10', NULL, 1),
(130, '123423435345', '123123', '2016-04-10', '2019-04-10', NULL, 1),
(131, '123423435345', '123123', '2016-04-10', '2019-04-10', NULL, 1),
(132, '123423435345', '123123', '2016-04-10', '2019-04-10', NULL, 1),
(133, '123423435345', '123123', '2016-04-10', '2019-04-10', NULL, 1),
(134, 'cd195c31a3516740f9186aeb7b43af83c2458289', '123123', '2016-04-10', '2019-04-10', NULL, 1),
(135, 'f9626909db95f04e3814c6b5f2115ececcbf84a9', '123123', '2016-04-10', '2019-04-10', NULL, 1),
(136, '9bb69ae03878d4899d7ec845f2f825e0671ef5aa', '123123', '2016-04-10', '2019-04-10', NULL, 1),
(137, '30a24c1bfe40cf9d037b601dd89da45f696f9a25', '123123', '2016-04-10', '2019-04-10', NULL, 1),
(138, '69cfe183614dafc60988e6bd41b086904e9ce780', '123123', '2016-04-10', '2019-04-10', NULL, 1),
(139, '253f25d38efa68c376af054737aaf5b90728db71', '123123', '2016-04-10', '2019-04-10', NULL, 1),
(140, 'VODQG', 'f9e7028b19a5fdd81782198353124b8df9099402', '2016-04-10', '2019-04-10', NULL, 1),
(141, 'FGTCN', '6cbe7184ea108949f565332454cdff5acdf9e4bc', '2016-04-10', '2019-04-10', NULL, 1),
(142, 'WQHQI', '34e55243871e3e34dbc64a58103bc57e4ad2a40f', '2016-04-11', '2019-04-10', NULL, 1),
(143, 'WGZSV', '83f02bd00452087d6a4b0e167e7da3edc7998c2a', '2016-04-11', '2019-04-10', NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m140506_102106_rbac_init', 1458692297);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data_registration` date NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `name`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `sex`, `location`, `data_registration`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', '', 'l1M5MuiCalgPjc8cODSnvDIWueBoPW8_', '$2y$13$LPmZe2yVL4eKBa1PYk40F.YEXEYHc4ZqkWMInoOX/LaAvZK7rEylC', NULL, 'artem.mandzuk@gmail.com', NULL, '', '0000-00-00', 10, 1458202909, 1458731885);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `bonus_code`
--
ALTER TABLE `bonus_code`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `bonus_code`
--
ALTER TABLE `bonus_code`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=144;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
