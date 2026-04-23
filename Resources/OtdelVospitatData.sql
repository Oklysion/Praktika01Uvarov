-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 14 2026 г., 08:56
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

--
-- Дамп данных таблицы `Educational_work_plan`
--

INSERT INTO `Educational_work_plan` (`Number_plan`, `The_direction_of_educational_work`, `EVENT`, `Dates_event`, `FIO_responsible_person`, `A_note_about_the_event`) VALUES
(1, 'Патриотическое воспитание', 'Патриотизм в массы', '10.02.2024 по 23.03.2025', 'Федусева Элла Юрьевна', '2025'),
(2, 'Трудовое воспитание', 'Труд и ещё раз труд!', '11.12.2025 по 13.01.2026', 'Федусева Элла Юрьевна', '2026'),
(3, 'Экологическое воспитание', 'Чистая планета', '13.02.2026 по 25.03.2026', 'Федусева Элла Юрьевна', '2023');

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

--
-- Дамп данных таблицы `Event`
--

INSERT INTO `Event` (`fk_Number_plan`, `fk_Group_Code`, `Event_Location`, `The_main_participants`, `Event_content`, `Date_Event`) VALUES
(1, 1, 'Актовый зал', 'ИП-3, Ф-4, ПД-2', 'Поднятие патриотического духа', '2026-02-25'),
(2, 2, 'Актовый зал', 'ИП-2, Ф-3, ПД-1', 'Уважение к труду', '2025-02-11'),
(3, 2, 'Актовый зал', 'ПД-3, Ф-1, ПД-1', 'Формирование экологической культуры', '2023-04-15'),
(3, 4, 'Актовый зал', 'ПД-3, Ф-1, ПД-1', 'Формирование экологической культуры', '2026-01-03');

-- --------------------------------------------------------

--
-- Структура таблицы `group`
--

CREATE TABLE `group` (
  `Group_code` int(11) NOT NULL,
  `FIO_curator` varchar(100) CHARACTER SET utf8mb3 NOT NULL,
  `Group_Name` varchar(15) CHARACTER SET utf8mb3 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

--
-- Дамп данных таблицы `group`
--

INSERT INTO `group` (`Group_code`, `FIO_curator`, `Group_Name`) VALUES
(1, 'Уваров Виктор Александрович', 'Ф-4'),
(2, 'Кудрин Александр Викторович', 'ПД-2'),
(3, 'Попова Вероника Владимировна', 'ИП-3'),
(4, 'Суярков Олег Владимирович', 'ИС-4');

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

--
-- Дамп данных таблицы `Invited_participants`
--

INSERT INTO `Invited_participants` (`Code_player`, `FIO_invited`, `Post`, `Org_name`) VALUES
(1, 'Зимбабве Аркадий Жу-Жу-Жу', 'Директор Маркетинга', '\"ООО\" Берёза'),
(2, 'Путин Владимир Владимирович', 'Президент Российской Федерации', 'РФ'),
(3, 'Портной Олег Сергеевич', 'Менеджер', '\"ИП\" Завоз');

-- --------------------------------------------------------

--
-- Структура таблицы `Inviting_participants`
--

CREATE TABLE `Inviting_participants` (
  `fk_Number_plan` int(11) DEFAULT NULL,
  `fk_Code_player` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

--
-- Дамп данных таблицы `Inviting_participants`
--

INSERT INTO `Inviting_participants` (`fk_Number_plan`, `fk_Code_player`) VALUES
(1, 3),
(2, 2),
(3, 1);

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
(1, 'Зяблик Иван Зипзип', 'SSSR', SHA2('holaZIP', 512), 1);

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
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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

ALTER TABLE `inviting_participants` 
ADD CONSTRAINT `inviting_participants` 
FOREIGN KEY (`fk_Number_plan`) 
REFERENCES `educational_work_plan` (`Number_plan`) 
ON DELETE CASCADE;

ALTER TABLE `inviting_participants` 
ADD CONSTRAINT `inviting_participants_code_player` 
FOREIGN KEY (`fk_Code_player`) 
REFERENCES `Invited_participants` (`Code_player`) 
ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
