-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 14 2026 г., 09:05
-- Версия сервера: 10.8.4-MariaDB
-- Версия PHP: 7.2.34
CREATE DATABASE IF NOT EXISTS OtdelVospitat;
USE OtdelVospitat;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `OtdelVospitat`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Educational_work_plan`
--

CREATE TABLE `Educational_work_plan` (
  `Number_plan` int(11) NOT NULL,
  `The_direction_of_educational_work` varchar(100) CHARACTER SET utf8mb3 NOT NULL,
  `EVENT` varchar(40) CHARACTER SET utf8mb3 NOT NULL,
  `Dates_event` varchar(100) CHARACTER SET utf8mb3 DEFAULT NULL,
  `FIO_responsible_person` varchar(50) CHARACTER SET utf8mb3 NOT NULL,
  `A_note_about_the_event` year DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `Event`
--

CREATE TABLE `Event` (
  `fk_Number_plan` int(11) DEFAULT NULL,
  `fk_Group_Code` int(11) DEFAULT NULL,
  `Event_Location` varchar(100) CHARACTER SET utf8mb3 NOT NULL,
  `The_main_participants` varchar(100) CHARACTER SET utf8mb3 NOT NULL,
  `Event_content` varchar(255) CHARACTER SET utf8mb3 NOT NULL,
  `Date_Event` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `group`
--

CREATE TABLE `group` (
  `Group_code` int(11) NOT NULL,
  `FIO_curator` varchar(100) CHARACTER SET utf8mb3 NOT NULL,
  `Group_Name` varchar(15) CHARACTER SET utf8mb3 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `Invited_participants`
--

CREATE TABLE `Invited_participants` (
  `Code_player` int(11) NOT NULL,
  `FIO_invited` varchar(100) CHARACTER SET utf8mb3 NOT NULL,
  `Post` varchar(60) CHARACTER SET utf8mb3 NOT NULL,
  `Org_name` varchar(70) CHARACTER SET utf8mb3 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `Inviting_participants`
--

CREATE TABLE `Inviting_participants` (
  `fk_Number_plan` int(11) DEFAULT NULL,
  `fk_Code_player` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id_role` int(11) NOT NULL,
  `roleName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id_role`, `roleName`) VALUES
(1, 'ПростоБОГ'),
(2, 'Администратор'),
(3, 'Преподаватель');

-- --------------------------------------------------------

--
-- Структура таблицы `Users`
--

CREATE TABLE `Users` (
  `id_user` int(11) NOT NULL,
  `fullName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PASSWORD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_FK` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Users`
--

INSERT INTO `Users` (`id_user`, `fullName`, `username`, `PASSWORD`, `role_FK`) VALUES
(6, 'Зяблик Иван Зипзип', 'SSSR', SHA2('holaZIP', 512), 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Educational_work_plan`
--
ALTER TABLE `Educational_work_plan`
  ADD PRIMARY KEY (`Number_plan`);

--
-- Индексы таблицы `Event`
--
ALTER TABLE `Event`
  ADD KEY `fk_Number_plan` (`fk_Number_plan`),
  ADD KEY `fk_Group_Code` (`fk_Group_Code`);

--
-- Индексы таблицы `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`Group_code`);

--
-- Индексы таблицы `Invited_participants`
--
ALTER TABLE `Invited_participants`
  ADD PRIMARY KEY (`Code_player`);

--
-- Индексы таблицы `Inviting_participants`
--
ALTER TABLE `Inviting_participants`
  ADD KEY `fk_Number_plan` (`fk_Number_plan`),
  ADD KEY `fk_Code_player` (`fk_Code_player`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_role`);

--
-- Индексы таблицы `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `role_FK` (`role_FK`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Educational_work_plan`
--
ALTER TABLE `Educational_work_plan`
  MODIFY `Number_plan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `group`
--
ALTER TABLE `group`
  MODIFY `Group_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `Invited_participants`
--
ALTER TABLE `Invited_participants`
  MODIFY `Code_player` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `Users`
--
ALTER TABLE `Users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Event`
--
ALTER TABLE `Event`
  ADD CONSTRAINT `event_ibfk_1` FOREIGN KEY (`fk_Number_plan`) REFERENCES `Educational_work_plan` (`Number_plan`),
  ADD CONSTRAINT `event_ibfk_2` FOREIGN KEY (`fk_Group_Code`) REFERENCES `group` (`Group_code`);

--
-- Ограничения внешнего ключа таблицы `Inviting_participants`
--
ALTER TABLE `Inviting_participants`
  ADD CONSTRAINT `inviting_participants_ibfk_1` FOREIGN KEY (`fk_Number_plan`) REFERENCES `Educational_work_plan` (`Number_plan`),
  ADD CONSTRAINT `inviting_participants_ibfk_2` FOREIGN KEY (`fk_Code_player`) REFERENCES `Invited_participants` (`Code_player`);

--
-- Ограничения внешнего ключа таблицы `Users`
--
ALTER TABLE `Users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_FK`) REFERENCES `roles` (`id_role`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
