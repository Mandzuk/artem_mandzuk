-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Апр 05 2016 г., 22:05
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `bonus_code`
--

INSERT INTO `bonus_code` (`id`, `serial_number`, `number`, `generation_date`, `date_end_of`, `use_date`, `status`) VALUES
(14, 'pm7tm', '9a7eddd623f848d1bcf87bf040b1265b980977e5', '2016-04-05', '2016-04-30', NULL, 1),
(86, 'UHROS', '7482d301767664082e492c297a48962f9e7a5e8c', '2016-04-05', '2016-11-19', NULL, 1),
(87, 'GDQPT', 'b924c88e8ad62f131b47f994e5ee42919bb39870', '2016-04-05', '2016-11-19', NULL, 1),
(88, 'YNRFO', 'f8818c5e72899f19e6c54d41188a9dea75a82056', '2016-04-05', '2016-11-19', NULL, 1),
(89, 'LVLYC', '997673ecf6522bf6f8c0dc6d6adefe4c5295efdf', '2016-04-05', '2016-11-19', NULL, 1),
(90, 'YKTOM', '4dd3fe66f5ed84cc368088d047bad437239a600c', '2016-04-05', '2016-11-19', NULL, 1),
(91, 'NVXDC', 'aea0d264f9f75da4bf809d7ee33285cfadebc33d', '2016-04-05', '2016-11-19', NULL, 1),
(92, 'CXJUM', '4d14c53be5d500990c82715fac1e80a1a524787e', '2016-04-05', '2016-11-19', NULL, 1),
(93, 'CAQSP', '6bd49f7ca28a906cceb356af16cc8ccf287bab0a', '2016-04-05', '2016-11-19', NULL, 1),
(94, 'JRDAX', '6e3f3346bb987450829d900574903f22e894eb7d', '2016-04-05', '2016-11-19', NULL, 1),
(95, 'SMTEK', '1f4cfc52577447f1b0b1cc5799b7498f31b44d75', '2016-04-05', '2016-11-19', NULL, 1),
(96, 'VCVPR', '2bb95df72f5a96cb7ed9561a2dd9b53ba515d9b8', '2016-04-05', '2016-11-19', NULL, 1),
(97, 'HDNFG', 'd487519f1e66ded0a23af4365d03571c00f13854', '2016-04-05', '2016-11-19', NULL, 1),
(98, 'PHEZC', '807930f428b7e9f7ba641a05bc3755a98f50876c', '2016-04-05', '2016-11-19', NULL, 1),
(99, 'QBCHU', '4bb355eac892e1f153f91ca117daf84290ee2c74', '2016-04-05', '2016-11-19', NULL, 1),
(100, 'SQMWR', 'ce35346775022c3b2af5bb26836d01ddb3c54b86', '2016-04-05', '2016-11-19', NULL, 1),
(101, 'JOECS', '7d064c2d4f99bc20287ea8304134a3d2cc265f3d', '2016-04-05', '2016-11-19', NULL, 1),
(102, 'OYVJN', '9b224805b6b4a789e20269cbdd3e234bb9046431', '2016-04-05', '2016-11-19', NULL, 1),
(103, 'NRQAW', 'a0fa09757fb5fb01d3c2d1cd2fbf34575e58a0d9', '2016-04-05', '2016-11-19', NULL, 1),
(104, 'XPEBP', 'aead391617c9f6c7b66913ed5db414ae5192a15e', '2016-04-05', '2016-11-19', NULL, 1),
(105, 'GSQJZ', '08662d0ca9d148d5ae7e96bbb922301cd5207db1', '2016-04-05', '2016-11-19', NULL, 1),
(106, 'LBQXX', '485c5eb5b9de735905252f87f2800aa21269b772', '2016-04-05', '2016-11-19', NULL, 1),
(107, 'HGMLI', '4233a88672681b21b2faf5f56c5552eadd669dfa', '2016-04-05', '2016-11-19', NULL, 1),
(108, 'EAGAK', 'f0c57ab4741b2341a6479c8b3dc0a7c647a8854f', '2016-04-05', '2016-11-19', NULL, 1),
(109, 'UNBLN', '2d472b409f31dd8c91aea07350d6e1285cf79ce9', '2016-04-05', '2016-11-19', NULL, 1);

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
