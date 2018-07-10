-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 19 2018 г., 18:28
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
-- База данных: `test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `final`
--

CREATE TABLE `final` (
  `id` int(11) NOT NULL,
  `datetime` int(11) DEFAULT NULL,
  `users_group` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `errors` text NOT NULL,
  `result` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `final_points`
--

CREATE TABLE `final_points` (
  `user_id` int(11) NOT NULL,
  `points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `datetime` int(11) DEFAULT NULL,
  `users_group` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `errors` text NOT NULL,
  `result` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `rating`
--

INSERT INTO `rating` (`id`, `datetime`, `users_group`, `status`, `errors`, `result`) VALUES
(1, 1526111223, 41, 'ok', '', '[{\"Name\":\"РДДТ-1__РДДТ\",\"Points\":20,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"384\",\"ACTION\":5,\"Health\":1,\"X\":1,\"Y\":14},{\"Name\":\"Magic_the_gathering__РДДТ\",\"Points\":20,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"397\",\"ACTION\":4,\"Health\":1,\"X\":1,\"Y\":0},{\"Name\":\"bot2\",\"Points\":20,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"408\",\"ACTION\":2,\"Health\":1,\"X\":14,\"Y\":13},{\"Name\":\"РДДТ0__РДДТ\",\"Points\":20,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"377\",\"ACTION\":0,\"Health\":1,\"X\":14,\"Y\":0}]'),
(2, 1526111224, 42, 'ok', '', '[{\"Name\":\"bot2\",\"Points\":20,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"408\",\"ACTION\":2,\"Health\":1,\"X\":4,\"Y\":7},{\"Name\":\"РДДТ0__РДДТ\",\"Points\":20,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"377\",\"ACTION\":2,\"Health\":1,\"X\":7,\"Y\":10},{\"Name\":\"Magic_the_gathering__РДДТ\",\"Points\":32,\"BangRadius\":2,\"BombsCount\":1,\"ID\":\"397\",\"ACTION\":3,\"Health\":1,\"X\":8,\"Y\":0},{\"Name\":\"РДДТ-1__РДДТ\",\"Points\":20,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"384\",\"ACTION\":5,\"Health\":1,\"X\":10,\"Y\":7}]'),
(3, 1526111225, 43, 'ok', '', '[{\"Name\":\"Magic_the_gathering__РДДТ\",\"Points\":23,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"397\",\"ACTION\":0,\"Health\":1,\"X\":0,\"Y\":4},{\"Name\":\"РДДТ0__РДДТ\",\"Points\":20,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"377\",\"ACTION\":3,\"Health\":1,\"X\":7,\"Y\":14},{\"Name\":\"bot2\",\"Points\":20,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"408\",\"ACTION\":2,\"Health\":1,\"X\":0,\"Y\":6},{\"Name\":\"РДДТ-1__РДДТ\",\"Points\":20,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"384\",\"ACTION\":5,\"Health\":1,\"X\":14,\"Y\":13}]'),
(4, 1526111226, 44, 'ok', '', '[{\"Name\":\"Magic_the_gathering__РДДТ\",\"Points\":20,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"397\",\"ACTION\":5,\"Health\":1,\"X\":0,\"Y\":13},{\"Name\":\"РДДТ-1__РДДТ\",\"Points\":20,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"384\",\"ACTION\":3,\"Health\":1,\"X\":0,\"Y\":0},{\"Name\":\"bot2\",\"Points\":20,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"408\",\"ACTION\":5,\"Health\":1,\"X\":14,\"Y\":13},{\"Name\":\"РДДТ0__РДДТ\",\"Points\":20,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"377\",\"ACTION\":0,\"Health\":1,\"X\":14,\"Y\":0}]');

-- --------------------------------------------------------

--
-- Структура таблицы `sandbox`
--

CREATE TABLE `sandbox` (
  `id` int(11) NOT NULL,
  `datetime` int(11) DEFAULT NULL,
  `users_group` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `creator` int(11) NOT NULL,
  `errors` text NOT NULL,
  `result` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sandbox`
--

INSERT INTO `sandbox` (`id`, `datetime`, `users_group`, `status`, `creator`, `errors`, `result`) VALUES
(17, 1525524914, 1, 'ok', 401, '', '[{\"Name\":\"test\",\"Points\":40,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"404\",\"ACTION\":0,\"Health\":1,\"X\":1,\"Y\":13},{\"Name\":\"User3\",\"Points\":0,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"401\",\"ACTION\":0,\"Health\":0,\"X\":0,\"Y\":0}]'),
(18, 1525527415, 2, 'ok', 399, '', '[{\"Name\":\"User3\",\"Points\":0,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"401\",\"ACTION\":5,\"Health\":0,\"X\":3,\"Y\":14},{\"Name\":\"test3\",\"Points\":40,\"BangRadius\":1,\"BombsCount\":0,\"ID\":\"406\",\"ACTION\":1,\"Health\":1,\"X\":1,\"Y\":0},{\"Name\":\"test\",\"Points\":1,\"BangRadius\":1,\"BombsCount\":0,\"ID\":\"404\",\"ACTION\":0,\"Health\":0,\"X\":12,\"Y\":13},{\"Name\":\"User1\",\"Points\":1,\"BangRadius\":1,\"BombsCount\":0,\"ID\":\"399\",\"ACTION\":1,\"Health\":0,\"X\":12,\"Y\":0}]'),
(20, 1525548602, 4, 'ok', 404, '', '[{\"Name\":\"test2\",\"Points\":40,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"405\",\"ACTION\":4,\"Health\":1,\"X\":2,\"Y\":13},{\"Name\":\"User4\",\"Points\":0,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"402\",\"ACTION\":2,\"Health\":0,\"X\":0,\"Y\":1},{\"Name\":\"test\",\"Points\":0,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"404\",\"ACTION\":4,\"Health\":0,\"X\":14,\"Y\":13}]'),
(21, 1525548672, 5, 'ok', 404, '', '[{\"Name\":\"test3\",\"Points\":1,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"406\",\"ACTION\":0,\"Health\":0,\"X\":0,\"Y\":0},{\"Name\":\"test4\",\"Points\":0,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"407\",\"ACTION\":5,\"Health\":0,\"X\":1,\"Y\":12},{\"Name\":\"User1\",\"Points\":0,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"399\",\"ACTION\":0,\"Health\":0,\"X\":11,\"Y\":2},{\"Name\":\"test\",\"Points\":40,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"404\",\"ACTION\":4,\"Health\":1,\"X\":12,\"Y\":13}]'),
(22, 1525549072, 6, 'ok', 404, '', '[{\"Name\":\"User1\",\"Points\":1,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"399\",\"ACTION\":3,\"Health\":0,\"X\":0,\"Y\":0},{\"Name\":\"User4\",\"Points\":1,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"402\",\"ACTION\":2,\"Health\":0,\"X\":3,\"Y\":11},{\"Name\":\"test2\",\"Points\":1,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"405\",\"ACTION\":5,\"Health\":0,\"X\":13,\"Y\":3},{\"Name\":\"test\",\"Points\":40,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"404\",\"ACTION\":0,\"Health\":1,\"X\":14,\"Y\":13}]'),
(23, 1525601171, 7, 'ok', 397, '', '[{\"Name\":\"User4\",\"Points\":1,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"402\",\"ACTION\":3,\"Health\":0,\"X\":0,\"Y\":0},{\"Name\":\"User3\",\"Points\":1,\"BangRadius\":1,\"BombsCount\":0,\"ID\":\"401\",\"ACTION\":0,\"Health\":0,\"X\":3,\"Y\":11},{\"Name\":\"User1\",\"Points\":1,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"399\",\"ACTION\":2,\"Health\":0,\"X\":12,\"Y\":2},{\"Name\":\"Magic_the_gathering__РДДТ\",\"Points\":40,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"397\",\"ACTION\":4,\"Health\":1,\"X\":12,\"Y\":13}]'),
(25, 1525613167, 9, 'ok', 397, '', '[{\"Name\":\"test\",\"Points\":1,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"404\",\"ACTION\":5,\"Health\":0,\"X\":0,\"Y\":8},{\"Name\":\"User4\",\"Points\":1,\"BangRadius\":1,\"BombsCount\":0,\"ID\":\"402\",\"ACTION\":5,\"Health\":0,\"X\":8,\"Y\":14},{\"Name\":\"test2\",\"Points\":1,\"BangRadius\":1,\"BombsCount\":0,\"ID\":\"405\",\"ACTION\":3,\"Health\":0,\"X\":5,\"Y\":0},{\"Name\":\"Magic_the_gathering__РДДТ\",\"Points\":40,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"397\",\"ACTION\":3,\"Health\":1,\"X\":14,\"Y\":8}]'),
(26, 1525613656, 10, 'ok', 404, '', '[{\"Name\":\"User3\",\"Points\":1,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"401\",\"ACTION\":1,\"Health\":0,\"X\":0,\"Y\":14},{\"Name\":\"test\",\"Points\":40,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"404\",\"ACTION\":2,\"Health\":1,\"X\":0,\"Y\":1}]'),
(31, 1525615353, 15, 'ok', 404, '', '[{\"Name\":\"Magic_the_gathering__РДДТ\",\"Points\":40,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"397\",\"ACTION\":5,\"Health\":1,\"X\":0,\"Y\":13},{\"Name\":\"test4\",\"Points\":1,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"407\",\"ACTION\":1,\"Health\":0,\"X\":1,\"Y\":0},{\"Name\":\"test3\",\"Points\":0,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"406\",\"ACTION\":1,\"Health\":0,\"X\":13,\"Y\":14},{\"Name\":\"test\",\"Points\":2,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"404\",\"ACTION\":4,\"Health\":0,\"X\":14,\"Y\":1}]'),
(32, 1525619978, 16, 'ok', 397, '', '[{\"Name\":\"test3\",\"Points\":2,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"406\",\"ACTION\":2,\"Health\":0,\"X\":1,\"Y\":13},{\"Name\":\"User1\",\"Points\":2,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"399\",\"ACTION\":1,\"Health\":0,\"X\":2,\"Y\":0},{\"Name\":\"User3\",\"Points\":0,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"401\",\"ACTION\":2,\"Health\":0,\"X\":11,\"Y\":14},{\"Name\":\"Magic_the_gathering__РДДТ\",\"Points\":41,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"397\",\"ACTION\":2,\"Health\":1,\"X\":12,\"Y\":0}]'),
(33, 1525799064, 19, 'ok', 399, '', '[{\"Name\":\"User3\",\"Points\":0,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"401\",\"ACTION\":4,\"Health\":0,\"X\":1,\"Y\":0},{\"Name\":\"Magic_the_gathering__РДДТ\",\"Points\":21,\"BangRadius\":1,\"BombsCount\":0,\"ID\":\"397\",\"ACTION\":0,\"Health\":1,\"X\":2,\"Y\":11},{\"Name\":\"test2\",\"Points\":21,\"BangRadius\":1,\"BombsCount\":0,\"ID\":\"405\",\"ACTION\":1,\"Health\":1,\"X\":13,\"Y\":2},{\"Name\":\"User1\",\"Points\":1,\"BangRadius\":1,\"BombsCount\":0,\"ID\":\"399\",\"ACTION\":1,\"Health\":0,\"X\":13,\"Y\":13}]'),
(35, 1526030714, 29, 'ok', 377, '', '[{\"Name\":\"bot1\",\"Points\":20,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"405\",\"ACTION\":4,\"Health\":1,\"X\":0,\"Y\":1},{\"Name\":\"РДДТ0__РДДТ\",\"Points\":20,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"377\",\"ACTION\":3,\"Health\":1,\"X\":2,\"Y\":11}]'),
(36, 1526030855, 30, 'ok', 377, '', '[{\"Name\":\"Magic_the_gathering__РДДТ\",\"Points\":20,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"397\",\"ACTION\":2,\"Health\":1,\"X\":0,\"Y\":13},{\"Name\":\"РДДТ0__РДДТ\",\"Points\":20,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"377\",\"ACTION\":0,\"Health\":1,\"X\":0,\"Y\":0}]'),
(37, 1526031164, 31, 'ok', 377, '', '[{\"Name\":\"Magic_the_gathering__РДДТ\",\"Points\":26,\"BangRadius\":1,\"BombsCount\":2,\"ID\":\"397\",\"ACTION\":2,\"Health\":1,\"X\":2,\"Y\":14},{\"Name\":\"bot1\",\"Points\":20,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"405\",\"ACTION\":0,\"Health\":1,\"X\":2,\"Y\":0},{\"Name\":\"bot3\",\"Points\":20,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"406\",\"ACTION\":0,\"Health\":1,\"X\":12,\"Y\":13},{\"Name\":\"РДДТ0__РДДТ\",\"Points\":20,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"377\",\"ACTION\":0,\"Health\":1,\"X\":12,\"Y\":0}]'),
(38, 1526031901, 32, 'ok', 377, '', '[{\"Name\":\"Magic_the_gathering__РДДТ\",\"Points\":21,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"397\",\"ACTION\":2,\"Health\":1,\"X\":2,\"Y\":4},{\"Name\":\"РДДТ0__РДДТ\",\"Points\":20,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"377\",\"ACTION\":0,\"Health\":1,\"X\":7,\"Y\":14}]'),
(39, 1526032309, 33, 'ok', 377, '', '[{\"Name\":\"Magic_the_gathering__РДДТ\",\"Points\":20,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"397\",\"ACTION\":2,\"Health\":1,\"X\":0,\"Y\":13},{\"Name\":\"РДДТ0__РДДТ\",\"Points\":20,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"377\",\"ACTION\":0,\"Health\":1,\"X\":0,\"Y\":0}]'),
(40, 1526053885, 34, 'ok', 384, '', '[{\"Name\":\"Magic_the_gathering__РДДТ\",\"Points\":23,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"397\",\"ACTION\":4,\"Health\":1,\"X\":2,\"Y\":4},{\"Name\":\"РДДТ0__РДДТ\",\"Points\":20,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"377\",\"ACTION\":3,\"Health\":1,\"X\":7,\"Y\":14},{\"Name\":\"bot1\",\"Points\":20,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"405\",\"ACTION\":4,\"Health\":1,\"X\":6,\"Y\":0},{\"Name\":\"РДДТ-1__РДДТ\",\"Points\":20,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"384\",\"ACTION\":3,\"Health\":1,\"X\":14,\"Y\":1}]'),
(41, 1526057172, 35, 'ok', 384, '', '[{\"Name\":\"bot1\",\"Points\":20,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"405\",\"ACTION\":0,\"Health\":1,\"X\":2,\"Y\":13},{\"Name\":\"bot4\",\"Points\":20,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"407\",\"ACTION\":0,\"Health\":1,\"X\":1,\"Y\":0},{\"Name\":\"bot2\",\"Points\":20,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"408\",\"ACTION\":3,\"Health\":1,\"X\":12,\"Y\":13},{\"Name\":\"РДДТ-1__РДДТ\",\"Points\":20,\"BangRadius\":1,\"BombsCount\":1,\"ID\":\"384\",\"ACTION\":2,\"Health\":1,\"X\":11,\"Y\":0}]'),
(42, 1529345169, 45, 'error', 405, 'Ошибка при работе сессии: ERROR in MoveStartUserExe: Run ERROR: Error: Cannot run SSH command: Host \"default\" is not running\n   в Bomber_console_server.Session.InitUsers() в C:UsersАдминистратор.WIN-QVBBKNJHDMADesktopDiplom-CGCBomber_console_serverBomber_console_serverSession.cs:строка 173\r\n   в Bomber_console_server.Session.InitGame() в C:UsersАдминистратор.WIN-QVBBKNJHDMADesktopDiplom-CGCBomber_console_serverBomber_console_serverSession.cs:строка 132', ''),
(43, 1529345336, 46, 'wait', 405, '', ''),
(44, 1529348286, 47, 'wait', 405, '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `sources`
--

CREATE TABLE `sources` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `text` text NOT NULL,
  `status` varchar(22) NOT NULL,
  `error` text NOT NULL,
  `used` tinyint(1) NOT NULL,
  `upload_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sources`
--

INSERT INTO `sources` (`id`, `user_id`, `text`, `status`, `error`, `used`, `upload_time`) VALUES
(23, 397, '﻿using System;\r\nusing System.Linq;\r\nusing System.Collections.Generic;\r\n\r\nusing ClassLibrary_CGC;\r\n\r\nnamespace User_class\r\n{\r\n    [Serializable]\r\n    public class User : Player\r\n    {\r\n        public GameBoard gameboard;\r\n\r\n        static int lastX;\r\n        static int lastY;\r\n        static PlayerAction lastAction;\r\n\r\n\r\n\r\n\r\n        static int ran_end = 1;\r\n        static int ran = 5;\r\n        static int bomb = 0;\r\n\r\n        static int gv1 = 0;\r\n        static int gv2 = 0;\r\n\r\n        static PlayerAction gvr1;\r\n        static PlayerAction gvr2;\r\n\r\n\r\n\r\n        /// <summary>\r\n        /// Задать Команду на следующий Ход\r\n        /// </summary>\r\n        /// <param name=\"gb\">Игровое Поле</param>\r\n        /// <returns>Команда для Юнита</returns>\r\n        /// \r\n        public override PlayerAction Play(GameBoard gb)\r\n        {\r\n            /*\r\n                Пример тупого бота, который пытается дойти до центра (не учивая другие объект)\r\n            */\r\n\r\n\r\n           \r\n            \r\n            PlayerAction act = new PlayerAction();\r\n\r\n\r\n            if (bomb == 1 && ran_end == 0)\r\n            {\r\n\r\n                if (gv2 > 0)\r\n                {\r\n                    act = gvr2;\r\n                    if (gv2 == 1)\r\n                    {\r\n                        bomb = 0;\r\n                        ran_end = 1;\r\n                        ran = 5;\r\n                    }\r\n                    gv2--;\r\n                }\r\n                else\r\n                {\r\n\r\n                    if (gv1 > 0)\r\n                    {\r\n                        act = gvr1;\r\n                        gv1--;\r\n                    }\r\n                    else\r\n                    {\r\n                        act = PlayerAction.Bomb;\r\n                        gv2 = 7;\r\n                    }\r\n                }\r\n            }\r\n\r\n\r\n\r\n            if (ran > 0)\r\n            {\r\n                Random r = new Random();\r\n                int t = r.Next(4);\r\n                if (t == 0)\r\n                    act = PlayerAction.Down;\r\n                if (t == 1)\r\n                    act = PlayerAction.Up;\r\n                if (t == 2)\r\n                    act = PlayerAction.Left;\r\n                if (t == 3)\r\n                    act = PlayerAction.Right;\r\n                if (ran == 1)\r\n                    ran_end = 0;\r\n                ran--;\r\n            }\r\n            else\r\n            {\r\n                if (bomb == 0)\r\n                {\r\n                    int q = 0;\r\n                    if (X > 1 && gb.Cells[Y, X - 1].Type == CellType.None && gb.Cells[Y, X - 2].Type == CellType.None ||\r\n                        X > 0 && gb.Cells[Y, X - 1].Type == CellType.None && X < 13 && gb.Cells[Y, X + 1].Type == CellType.None ||\r\n                        X < 12 && gb.Cells[Y, X + 1].Type == CellType.None && gb.Cells[Y, X + 2].Type == CellType.None)\r\n                    {\r\n                        gvr1 = PlayerAction.Left;\r\n                        gvr2 = PlayerAction.Right;\r\n                        bomb = 1;\r\n                        Random r = new Random();\r\n                        gv1 = r.Next(3,6);\r\n                        q = 1;\r\n                    }\r\n\r\n                    if (Y > 1 && gb.Cells[Y - 1, X].Type == CellType.None && gb.Cells[Y - 2, X].Type == CellType.None ||\r\n                        Y > 0 && gb.Cells[Y - 1, X].Type == CellType.None && Y < 13 && gb.Cells[Y + 1, X].Type == CellType.None ||\r\n                        Y < 12 && gb.Cells[Y + 1, X].Type == CellType.None && gb.Cells[Y + 2, X].Type == CellType.None)\r\n                    {\r\n                        gvr1 = PlayerAction.Up;\r\n                        gvr2 = PlayerAction.Down;\r\n                        bomb = 1;\r\n                        Random r = new Random();\r\n                        gv1 = r.Next(3, 6);\r\n                        q = 1;\r\n                    }\r\n                    if (q == 0)\r\n                    {\r\n                        ran = 5;\r\n                    }\r\n                }\r\n            }\r\n\r\n\r\n            return act;\r\n        }\r\n\r\n    }\r\n}\r\n', 'ok', '', 0, 1525601088),
(24, 397, '﻿using System;\r\nusing System.Linq;\r\nusing System.Collections.Generic;\r\n\r\nusing ClassLibrary_CGC;\r\n\r\nnamespace User_class\r\n{\r\n    [Serializable]\r\n    public class User : Player\r\n    {\r\n        public GameBoard gameboard;\r\n\r\n        static int lastX;\r\n        static int lastY;\r\n        static PlayerAction lastAction;\r\n\r\n\r\n\r\n\r\n        static int ran_end = 1;\r\n        static int ran = 5;\r\n        static int bomb = 0;\r\n\r\n        static int gv1 = 0;\r\n        static int gv2 = 0;\r\n\r\n        static PlayerAction gvr1;\r\n        static PlayerAction gvr2;\r\n\r\n\r\n\r\n        /// <summary>\r\n        /// Задать Команду на следующий Ход\r\n        /// </summary>\r\n        /// <param name=\"gb\">Игровое Поле</param>\r\n        /// <returns>Команда для Юнита</returns>\r\n        /// \r\n        public override PlayerAction Play(GameBoard gb)\r\n        {\r\n            /*\r\n                Пример тупого бота, который пытается дойти до центра (не учивая другие объект)\r\n            */\r\n\r\n\r\n           \r\n            \r\n            PlayerAction act = new PlayerAction();\r\n\r\n\r\n            if (bomb == 1 && ran_end == 0)\r\n            {\r\n\r\n                if (gv2 > 0)\r\n                {\r\n                    act = gvr2;\r\n                    if (gv2 == 1)\r\n                    {\r\n                        bomb = 0;\r\n                        ran_end = 1;\r\n                        ran = 5;\r\n                    }\r\n                    gv2--;\r\n                }\r\n                else\r\n                {\r\n\r\n                    if (gv1 > 0)\r\n                    {\r\n                        act = gvr1;\r\n                        gv1--;\r\n                    }\r\n                    else\r\n                    {\r\n                        act = PlayerAction.Bomb;\r\n                        gv2 = 7;\r\n                    }\r\n                }\r\n            }\r\n\r\n\r\n\r\n            if (ran > 0)\r\n            {\r\n                Random r = new Random();\r\n                int t = r.Next(4);\r\n                if (t == 0)\r\n                    act = PlayerAction.Down;\r\n                if (t == 1)\r\n                    act = PlayerAction.Up;\r\n                if (t == 2)\r\n                    act = PlayerAction.Left;\r\n                if (t == 3)\r\n                    act = PlayerAction.Right;\r\n                if (ran == 1)\r\n                    ran_end = 0;\r\n                ran--;\r\n            }\r\n            else\r\n            {\r\n                if (bomb == 0)\r\n                {\r\n                    int q = 0;\r\n                    if (X > 1 && gb.Cells[Y, X - 1].Type == CellType.None && gb.Cells[Y, X - 2].Type == CellType.None ||\r\n                        X > 0 && gb.Cells[Y, X - 1].Type == CellType.None && X < 13 && gb.Cells[Y, X + 1].Type == CellType.None ||\r\n                        X < 12 && gb.Cells[Y, X + 1].Type == CellType.None && gb.Cells[Y, X + 2].Type == CellType.None)\r\n                    {\r\n                        gvr1 = PlayerAction.Left;\r\n                        gvr2 = PlayerAction.Right;\r\n                        bomb = 1;\r\n                        Random r = new Random();\r\n                        gv1 = r.Next(3,6);\r\n                        q = 1;\r\n                    }\r\n\r\n                    if (Y > 1 && gb.Cells[Y - 1, X].Type == CellType.None && gb.Cells[Y - 2, X].Type == CellType.None ||\r\n                        Y > 0 && gb.Cells[Y - 1, X].Type == CellType.None && Y < 13 && gb.Cells[Y + 1, X].Type == CellType.None ||\r\n                        Y < 12 && gb.Cells[Y + 1, X].Type == CellType.None && gb.Cells[Y + 2, X].Type == CellType.None)\r\n                    {\r\n                        gvr1 = PlayerAction.Up;\r\n                        gvr2 = PlayerAction.Down;\r\n                        bomb = 1;\r\n                        Random r = new Random();\r\n                        gv1 = r.Next(3, 6);\r\n                        q = 1;\r\n                    }\r\n                    if (q == 0)\r\n                    {\r\n                        ran = 5;\r\n                    }\r\n                }\r\n            }\r\n\r\n\r\n            return act;\r\n        }\r\n\r\n    }\r\n}\r\n', 'ok', '', 0, 1525601148),
(25, 397, '﻿using System;\r\nusing System.Linq;\r\nusing System.Collections.Generic;\r\n\r\nusing ClassLibrary_CGC;\r\n\r\nnamespace User_class\r\n{\r\n    [Serializable]\r\n    public class User : Player\r\n    {\r\n        public GameBoard gameboard;\r\n\r\n        static int lastX;\r\n        static int lastY;\r\n        static PlayerAction lastAction;\r\n\r\n\r\n\r\n\r\n        static int ran_end = 1;\r\n        static int ran = 10;\r\n        static int bomb = 0;\r\n\r\n        static int gv1 = 0;\r\n        static int gv2 = 0;\r\n        static int otb = 0;\r\n\r\n\r\n        static PlayerAction gvr1;\r\n        static PlayerAction gvr2;\r\n\r\n\r\n\r\n        /// <summary>\r\n        /// Задать Команду на следующий Ход\r\n        /// </summary>\r\n        /// <param name=\"gb\">Игровое Поле</param>\r\n        /// <returns>Команда для Юнита</returns>\r\n        /// \r\n        public override PlayerAction Play(GameBoard gb)\r\n        {\r\n            /*\r\n                Пример тупого бота, который пытается дойти до центра (не учивая другие объект)\r\n            */\r\n\r\n\r\n           \r\n            \r\n            PlayerAction act = new PlayerAction();\r\n\r\n\r\n            if (bomb == 1 && ran_end == 0)\r\n            {\r\n\r\n                if (gv2 > 0)\r\n                {\r\n                    otb = 0;\r\n\r\n                    if(gv2 < 4)\r\n                    {\r\n                        if (gvr1 == PlayerAction.Right)\r\n                            act = PlayerAction.Up;\r\n                        else\r\n                            act = PlayerAction.Right;\r\n                    }else\r\n                        act = gvr2;\r\n\r\n                    if (gv2 == 1)\r\n                    {\r\n                        bomb = 0;\r\n                        ran_end = 1;\r\n                        ran = 10;\r\n                    }\r\n                    gv2--;\r\n                }\r\n                else\r\n                {\r\n\r\n                    if (gv1 > 0)\r\n                    {\r\n                        if ( (Y > 0 && gb.Cells[X, Y - 1].Type == CellType.Destructible ||\r\n                             Y < 14 && gb.Cells[X, Y + 1].Type == CellType.Destructible ||\r\n                            X > 0 && gb.Cells[X - 1, Y].Type == CellType.Destructible ||\r\n                            X < 14 && gb.Cells[X + 1, Y].Type == CellType.Destructible)\r\n                            && otb > 1)\r\n                        {\r\n                            act = PlayerAction.Bomb;\r\n                            gv2 = 6;\r\n                        }\r\n                        else\r\n                        {\r\n                            act = gvr1;\r\n                            gv1--;\r\n                            otb++;\r\n                        }\r\n                    }\r\n                    else\r\n                    {\r\n                        act = PlayerAction.Wait;\r\n                        gv2 = 5;\r\n                    }\r\n                }\r\n            }\r\n            else\r\n            {\r\n                if (bomb == 0)\r\n                {\r\n                    int q = 0;\r\n                    if (X > 1 && gb.Cells[X - 1, Y].Type == CellType.None && gb.Cells[X - 2, Y].Type == CellType.None ||\r\n                        X > 0 && gb.Cells[X - 1, Y].Type == CellType.None && X < 13 && gb.Cells[X + 1, Y].Type == CellType.None ||\r\n                        X < 12 && gb.Cells[X + 1, Y].Type == CellType.None && gb.Cells[X + 2, Y].Type == CellType.None)\r\n                    {\r\n                        gvr1 = PlayerAction.Left;\r\n                        gvr2 = PlayerAction.Right;\r\n                        bomb = 1;\r\n                        Random r = new Random();\r\n                        gv1 = r.Next(4, 7);\r\n                        q = 1;\r\n                        ran_end = 0;\r\n                    }\r\n\r\n                    if (Y > 1 && gb.Cells[X, Y - 1].Type == CellType.None && gb.Cells[X, Y - 2].Type == CellType.None ||\r\n                        Y > 0 && gb.Cells[X, Y - 1].Type == CellType.None && Y < 13 && gb.Cells[X, Y + 1].Type == CellType.None ||\r\n                        Y < 12 && gb.Cells[X, Y + 1].Type == CellType.None && gb.Cells[X, Y + 2].Type == CellType.None)\r\n                    {\r\n                        gvr1 = PlayerAction.Up;\r\n                        gvr2 = PlayerAction.Down;\r\n                        bomb = 1;\r\n                        Random r = new Random();\r\n                        gv1 = r.Next(3, 6);\r\n                        q = 1;\r\n                        ran_end = 0;\r\n                    }\r\n                    if (q == 0)\r\n                    {\r\n                        ran = 5;\r\n                    }\r\n                    if (gvr1 != PlayerAction.Wait)\r\n                        return gvr1;\r\n\r\n                }\r\n\r\n\r\n                if (ran > 0)\r\n                {\r\n                    Random r = new Random();\r\n                    int t = r.Next(6);\r\n                    if (t == 0)\r\n                        act = PlayerAction.Down;\r\n                    if (t == 1)\r\n                        act = PlayerAction.Up;\r\n                    if (t == 2 || t == 3)\r\n                        act = PlayerAction.Left;\r\n                    if (t == 4 || t == 5)\r\n                        act = PlayerAction.Right;\r\n                    if (ran == 1)\r\n                        ran_end = 0;\r\n                    ran--;\r\n                }\r\n                else\r\n                {\r\n                    if (bomb == 0)\r\n                    {\r\n                        int q = 0;\r\n                        if (X > 1 && gb.Cells[Y, X - 1].Type == CellType.None && gb.Cells[Y, X - 2].Type == CellType.None ||\r\n                            X > 0 && gb.Cells[Y, X - 1].Type == CellType.None && X < 13 && gb.Cells[Y, X + 1].Type == CellType.None ||\r\n                            X < 12 && gb.Cells[Y, X + 1].Type == CellType.None && gb.Cells[Y, X + 2].Type == CellType.None)\r\n                        {\r\n                            gvr1 = PlayerAction.Left;\r\n                            gvr2 = PlayerAction.Right;\r\n                            bomb = 1;\r\n                            Random r = new Random();\r\n                            gv1 = r.Next(3, 6);\r\n                            q = 1;\r\n\r\n                        }\r\n\r\n                        if (Y > 1 && gb.Cells[Y - 1, X].Type == CellType.None && gb.Cells[Y - 2, X].Type == CellType.None ||\r\n                            Y > 0 && gb.Cells[Y - 1, X].Type == CellType.None && Y < 13 && gb.Cells[Y + 1, X].Type == CellType.None ||\r\n                            Y < 12 && gb.Cells[Y + 1, X].Type == CellType.None && gb.Cells[Y + 2, X].Type == CellType.None)\r\n                        {\r\n                            gvr1 = PlayerAction.Up;\r\n                            gvr2 = PlayerAction.Down;\r\n                            bomb = 1;\r\n                            Random r = new Random();\r\n                            gv1 = r.Next(3, 6);\r\n                            q = 1;\r\n                        }\r\n                        if (q == 0)\r\n                        {\r\n                            ran = 5;\r\n                        }\r\n                    }\r\n                }\r\n            }\r\n\r\n            return act;\r\n        }\r\n\r\n    }\r\n}\r\n', 'ok', '', 1, 1525619954),
(28, 408, 'using System;\r\nusing System.Collections.Generic;\r\nusing System.Linq;\r\nusing System.Text;\r\nusing System.Threading.Tasks;\r\nusing ClassLibrary_CGC;\r\n\r\nnamespace User_class\r\n{\r\n    [Serializable]\r\n    public class User : Player\r\n    {\r\n		Random rn = new Random();\r\n        public override PlayerAction Play(GameBoard gb)\r\n        {\r\n            PlayerAction action = PlayerAction.Wait;\r\n            action = (PlayerAction)rn.Next(6);\r\n			if (action = PlayerAction.Bomb)\r\n			{\r\n				action = PlayerAction.Wait;\r\n			}\r\n\r\n            return action;\r\n        }\r\n    }\r\n}', 'error', 'Ошибка при компиляции пользовательской стратегии в DLL: \r\nuser.cs(18,8): error CS0029: Неявное преобразование типа \"ClassLibrary_CGC.PlayerAction\" в \"bool\" невозможно\r\n', 0, 1525986599),
(29, 408, 'using System;\r\nusing System.Collections.Generic;\r\nusing System.Linq;\r\nusing System.Text;\r\nusing System.Threading.Tasks;\r\nusing ClassLibrary_CGC;\r\n\r\nnamespace User_class\r\n{\r\n    [Serializable]\r\n    public class User : Player\r\n    {\r\n		Random rn = new Random();\r\n        public override PlayerAction Play(GameBoard gb)\r\n        {\r\n            PlayerAction action = PlayerAction.Wait;\r\n            action = (PlayerAction)rn.Next(6);\r\n			if (action == PlayerAction.Bomb)\r\n			{\r\n				action = PlayerAction.Wait;\r\n			}\r\n\r\n            return action;\r\n        }\r\n    }\r\n}', 'ok', '', 1, 1525986654),
(30, 405, 'using System;\r\nusing System.Collections.Generic;\r\nusing System.Linq;\r\nusing System.Text;\r\nusing System.Threading.Tasks;\r\nusing ClassLibrary_CGC;\r\n\r\nnamespace User_class\r\n{\r\n    [Serializable]\r\n    public class User : Player\r\n    {\r\n		Random rn = new Random();\r\n        public override PlayerAction Play(GameBoard gb)\r\n        {\r\n            PlayerAction action = PlayerAction.Wait;\r\n            action = (PlayerAction)rn.Next(6);\r\n			if (action == PlayerAction.Bomb)\r\n			{\r\n				action = PlayerAction.Wait;\r\n			}\r\n\r\n            return action;\r\n        }\r\n    }\r\n}', 'ok', '', 1, 1525986781),
(31, 406, 'using System;\r\nusing System.Collections.Generic;\r\nusing System.Linq;\r\nusing System.Text;\r\nusing System.Threading.Tasks;\r\nusing ClassLibrary_CGC;\r\n\r\nnamespace User_class\r\n{\r\n    [Serializable]\r\n    public class User : Player\r\n    {\r\n		Random rn = new Random();\r\n        public override PlayerAction Play(GameBoard gb)\r\n        {\r\n            PlayerAction action = PlayerAction.Wait;\r\n            action = (PlayerAction)rn.Next(6);\r\n			if (action == PlayerAction.Bomb)\r\n			{\r\n				action = PlayerAction.Wait;\r\n			}\r\n\r\n            return action;\r\n        }\r\n    }\r\n}', 'ok', '', 1, 1525986816),
(32, 407, 'using System;\r\nusing System.Collections.Generic;\r\nusing System.Linq;\r\nusing System.Text;\r\nusing System.Threading.Tasks;\r\nusing ClassLibrary_CGC;\r\n\r\nnamespace User_class\r\n{\r\n    [Serializable]\r\n    public class User : Player\r\n    {\r\n		Random rn = new Random();\r\n        public override PlayerAction Play(GameBoard gb)\r\n        {\r\n            PlayerAction action = PlayerAction.Wait;\r\n            action = (PlayerAction)rn.Next(6);\r\n			if (action == PlayerAction.Bomb)\r\n			{\r\n				action = PlayerAction.Wait;\r\n			}\r\n\r\n            return action;\r\n        }\r\n    }\r\n}', 'ok', '', 1, 1525986852),
(33, 377, '﻿using System;\r\n\r\n\r\nnamespace Solomon\r\n{\r\n    class Program\r\n    {\r\n        static void Main(string[] args)\r\n        {\r\n            \r\n            string aa= (Console.ReadLine());\r\n            string[] a= aa.Split(\' \');      \r\n             string bb = Convert.ToString(Console.ReadLine());\r\n            string[] b = bb.Split(\' \');\r\n            string cc = Convert.ToString(Console.ReadLine());\r\n            string[] c = cc.Split(\' \');\r\n            string xx = Convert.ToString(Console.ReadLine());\r\n            string[] x = xx.Split(\' \');\r\n            int s1 =Convert.ToInt32(a[0]);\r\n            int s2 = Convert.ToInt32(a[1]);\r\n            int s3= Convert.ToInt32(b[0]);\r\n            int s4= Convert.ToInt32(b[1]);\r\n            int s5= Convert.ToInt32(c[0]);\r\n            int s6 =Convert.ToInt32(c[1]);\r\n            int s7 = Convert.ToInt32(x[0]);\r\n            int s8 = Convert.ToInt32(x[1]);\r\n\r\n            Double a1 = Math.Sqrt((s3 - s1)* (s3 - s1) + (s4 - s2)* (s4 - s2));\r\n            double a2 = Math.Sqrt((s5 - s3)* (s5 - s3) + (s4 - s6)* (s4 - s6));\r\n            double a3 = Math.Sqrt((s5 - s1) * (s5 - s1) + (s6 - s2) * (s6 - s2));\r\n            double a4 = Math.Sqrt((s7 - s1)* (s7 - s1) + (s8 - s2)* (s8 - s2));\r\n            double a5 = Math.Sqrt((s7 - s3) * (s7 - s3) + (s8 - s4) * (s8 - s4));\r\n            double a6 = Math.Sqrt((s7 - s5)* (s7 - s5) + (s8 - s6)* (s8 - s6));\r\n\r\n            if (a1>a2&&a1>a3>a4>a5)\r\n            {\r\n\r\n                Console.WriteLine(\"YES\");\r\n            }\r\n            else { Console.WriteLine(\"NO\"); }\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n        }\r\n    }\r\n}\r\n', 'error', 'Ошибка при компиляции пользовательской стратегии в DLL: \r\nuser.cs(35,24): error CS0019: Оператор \">\" не может применяться к операндам типа \"bool\" и \"double\"\r\n', 0, 1526030570),
(34, 377, '﻿using System;\nusing System.Linq;\nusing System.Collections.Generic;\n\nusing ClassLibrary_CGC;\n\nnamespace User_class\n{\n    [Serializable]\n    public class User : Player\n    {\n        public GameBoard gameboard;\n\n        static int lastX;\n        static int lastY;\n        static PlayerAction lastAction;\n\n\n\n\n\n\n        /// <summary>\n        /// Задать Команду на следующий Ход\n        /// </summary>\n        /// <param name=\"gb\">Игровое Поле</param>\n        /// <returns>Команда для Юнита</returns>\n        public override PlayerAction Play(GameBoard gb)\n        {\n            /*\n                Пример тупого бота, который пытается дойти до центра (не учивая другие объект)\n            */\n            Random rn = new Random();\n            gameboard = gb;\n\n            PlayerAction action = PlayerAction.Up;\n\n            int difX = (X - gb.W / 2);\n            int difY = (Y - gb.H / 2);\n\n\n            if (difY > 0)\n                action = PlayerAction.Up;\n            else if (difY < 0)\n            {\n                action = PlayerAction.Down;\n            }\n            else if (difX > 0)\n            {\n                action = PlayerAction.Left;\n            }\n            else if (difX < 0)\n            {\n                action = PlayerAction.Right;\n            }\n            if(gb.Cells[X+1,Y].Type == CellType.Destructible)\r\n            {\r\n                action = PlayerAction.Bomb;\r\n                action = PlayerAction.Left;\r\n                action = PlayerAction.Left;\r\n\r\n            }\n            \n            if (Y+1 < gb.W && gb.Cells[X, Y+1].Type == CellType.Destructible && Y - 2 < gb.W &&  gb.Cells[X, Y - 2].Type == CellType.None)\r\n            {\r\n                action = PlayerAction.Bomb;\r\n                action = PlayerAction.Down;\r\n                action = PlayerAction.Down;\r\n\r\n            }\n            if (Y - 2 < gb.W && gb.Cells[X, Y - 2].Type == CellType.Indestructible && Y - 1 < gb.W && X + 1 < gb.H && gb.Cells[X+1, Y - 1].Type == CellType.None && gb.Cells[X-1, Y - 1].Type == CellType.None)\r\n                {\r\n                    action = PlayerAction.Bomb;\r\n                    action = PlayerAction.Down;\r\n                    action = PlayerAction.Right;\r\n\r\n                }\n            if (Y - 2 < gb.W && gb.Cells[X, Y - 2].Type == CellType.Indestructible && gb.Cells[X -1, Y - 1].Type == CellType.None && Y - 1 < gb.W && X + 1 < gb.H && gb.Cells[X +1, Y - 1].Type == CellType.Indestructible)\r\n            {\r\n                action = PlayerAction.Bomb;\r\n                action = PlayerAction.Down;\r\n                action = PlayerAction.Right;\r\n\r\n            }\n            if(X + 1 > gb.H|| X - 1 > gb.H && Y - 2 > gb.W)\r\n            {\r\n                action = PlayerAction.Bomb;\r\n                action = PlayerAction.Up;\r\n                action = PlayerAction.Up;\r\n\r\n            }\n            if (X + 1 > gb.H || X - 1 > gb.H && X - 2 > gb.H)\r\n            {\r\n                action = PlayerAction.Bomb;\r\n                action = PlayerAction.Down;\r\n                action = PlayerAction.Down;\r\n\r\n            }\n\n            lastX = X;\n            lastY = Y;\n            lastAction = action;\n\n\n            return action;\n        }\n\n    }\n}\n', 'ok', '', 0, 1526030619),
(35, 377, '﻿using System;\nusing System.Linq;\nusing System.Collections.Generic;\n\nusing ClassLibrary_CGC;\n\nnamespace User_class\n{\n    [Serializable]\n    public class User : Player\n    {\n        public GameBoard gameboard;\n\n        static int lastX;\n        static int lastY;\n        static PlayerAction lastAction;\n\n\n\n\n\n\n        /// <summary>\n        /// Задать Команду на следующий Ход\n        /// </summary>\n        /// <param name=\"gb\">Игровое Поле</param>\n        /// <returns>Команда для Юнита</returns>\n        public override PlayerAction Play(GameBoard gb)\n        {\n            /*\n                Пример тупого бота, который пытается дойти до центра (не учивая другие объект)\n            */\n            Random rn = new Random();\n            gameboard = gb;\n\n            PlayerAction action = PlayerAction.Up;\n\n            int difX = (X - gb.W / 2);\n            int difY = (Y - gb.H / 2);\n\n\n            if (difY > 0)\n                action = PlayerAction.Up;\n            else if (difY < 0)\n            {\n                action = PlayerAction.Down;\n            }\n            else if (difX > 0)\n            {\n                action = PlayerAction.Left;\n            }\n            else if (difX < 0)\n            {\n                action = PlayerAction.Right;\n            }\n            if(gb.Cells[X+1,Y].Type == CellType.Destructible)\r\n            {\r\n                action = PlayerAction.Bomb;\r\n                action = PlayerAction.Left;\r\n                action = PlayerAction.Left;\r\n\r\n            }\n            \n            if (Y+1 < gb.W && gb.Cells[X, Y+1].Type == CellType.Destructible && Y - 2 < gb.W &&  gb.Cells[X, Y - 2].Type == CellType.None)\r\n            {\r\n                action = PlayerAction.Bomb;\r\n                action = PlayerAction.Down;\r\n                action = PlayerAction.Down;\r\n\r\n            }\n            if (Y - 2 < gb.W && gb.Cells[X, Y - 2].Type == CellType.Indestructible && Y - 1 < gb.W && X + 1 < gb.H && gb.Cells[X+1, Y - 1].Type == CellType.None && gb.Cells[X-1, Y - 1].Type == CellType.None)\r\n                {\r\n                    action = PlayerAction.Bomb;\r\n                    action = PlayerAction.Down;\r\n                    action = PlayerAction.Right;\r\n\r\n                }\n            if (Y - 2 < gb.W && gb.Cells[X, Y - 2].Type == CellType.Indestructible && gb.Cells[X -1, Y - 1].Type == CellType.None && Y - 1 < gb.W && X + 1 < gb.H && gb.Cells[X +1, Y - 1].Type == CellType.Indestructible)\r\n            {\r\n                action = PlayerAction.Bomb;\r\n                action = PlayerAction.Down;\r\n                action = PlayerAction.Right;\r\n\r\n            }\n            if(X + 1 > gb.H|| X - 1 > gb.H && Y - 2 > gb.W || gb.Cells[X, Y - 2].Type == CellType.Indestructible)\r\n            {\r\n                action = PlayerAction.Bomb;\r\n                action = PlayerAction.Up;\r\n                action = PlayerAction.Up;\r\n\r\n            }\n            if (X + 1 > gb.H || X - 1 > gb.H && X - 2 > gb.H|| gb.Cells[X-2, Y].Type == CellType.Indestructible)\r\n            {\r\n                action = PlayerAction.Bomb;\r\n                action = PlayerAction.Down;\r\n                action = PlayerAction.Down;\r\n\r\n            }\n\n            lastX = X;\n            lastY = Y;\n            lastAction = action;\n\n\n            return action;\n        }\n\n    }\n}\n', 'ok', '', 0, 1526031146),
(36, 377, '﻿using System;\nusing System.Linq;\nusing System.Collections.Generic;\n\nusing ClassLibrary_CGC;\n\nnamespace User_class\n{\n    [Serializable]\n    public class User : Player\n    {\n        public GameBoard gameboard;\n\n        static int lastX;\n        static int lastY;\n        static PlayerAction lastAction;\n\n\n\n\n\n\n        /// <summary>\n        /// Задать Команду на следующий Ход\n        /// </summary>\n        /// <param name=\"gb\">Игровое Поле</param>\n        /// <returns>Команда для Юнита</returns>\n        public override PlayerAction Play(GameBoard gb)\n        {\n            /*\n                Пример тупого бота, который пытается дойти до центра (не учивая другие объект)\n            */\n            Random rn = new Random();\n            gameboard = gb;\n\n            PlayerAction action = PlayerAction.Up;\n\n            int difX = (X - gb.W / 2);\n            int difY = (Y - gb.H / 2);\n\n\n            if (difY > 0)\n                action = PlayerAction.Up;\n            else if (difY < 0)\n            {\n                action = PlayerAction.Down;\n            }\n            else if (difX > 0)\n            {\n                action = PlayerAction.Left;\n            }\n            else if (difX < 0)\n            {\n                action = PlayerAction.Right;\n            }\n            if(gb.Cells[X+1,Y].Type == CellType.Destructible)\r\n            {\r\n                action = PlayerAction.Bomb;\r\n                action = PlayerAction.Left;\r\n                action = PlayerAction.Left;\r\n\r\n            }\n            \n            if (Y+1 < gb.W && gb.Cells[X, Y+1].Type == CellType.Destructible && Y - 2 < gb.W &&  gb.Cells[X, Y - 2].Type == CellType.None)\r\n            {\r\n                action = PlayerAction.Bomb;\r\n                action = PlayerAction.Down;\r\n                action = PlayerAction.Down;\r\n\r\n            }\n            if (Y - 2 < gb.W && gb.Cells[X, Y - 2].Type == CellType.Indestructible && Y - 1 < gb.W && X + 1 < gb.H && gb.Cells[X+1, Y - 1].Type == CellType.None && gb.Cells[X-1, Y - 1].Type == CellType.None)\r\n                {\r\n                    action = PlayerAction.Bomb;\r\n                    action = PlayerAction.Down;\r\n                    action = PlayerAction.Right;\r\n\r\n                }\n            if (Y - 2 < gb.W && gb.Cells[X, Y - 2].Type == CellType.Indestructible && gb.Cells[X -1, Y - 1].Type == CellType.None && Y - 1 < gb.W && X + 1 < gb.H && gb.Cells[X +1, Y - 1].Type == CellType.Indestructible)\r\n            {\r\n                action = PlayerAction.Bomb;\r\n                action = PlayerAction.Down;\r\n                action = PlayerAction.Right;\r\n\r\n            }\n            if(X + 1 > gb.H|| X - 1 > gb.H && Y - 2 > gb.W || gb.Cells[X, Y - 2].Type == CellType.Indestructible)\r\n            {\r\n                action = PlayerAction.Bomb;\r\n                action = PlayerAction.Up;\r\n                action = PlayerAction.Up;\r\n\r\n            }\n            if (X + 1 > gb.H || X - 1 > gb.H && X - 2 > gb.H|| gb.Cells[X-2, Y].Type == CellType.Indestructible)\r\n            {\r\n                action = PlayerAction.Bomb;\r\n                action = PlayerAction.Down;\r\n                action = PlayerAction.Down;\r\n\r\n            }\n            int cell = 0;\n            while(cell ==0)\r\n            {\r\n                action = PlayerAction.Right;\r\n                    if(X-1<gb.H && gb.Cells[X-1, Y].Type == CellType.Destructible && Y - 1 < gb.H && gb.Cells[X, Y - 1].Type == CellType.None && X - 1 < gb.H && gb.Cells[X - 1, Y].Type == CellType.None || X + 1 < gb.H && gb.Cells[X + 1, Y].Type == CellType.Destructible && Y - 1 < gb.H && gb.Cells[X, Y - 1].Type == CellType.None && X - 1 < gb.H && gb.Cells[X - 1, Y].Type == CellType.None || Y + 1 < gb.H && gb.Cells[X, Y+1].Type == CellType.Destructible && Y - 1 < gb.H && gb.Cells[X , Y-1].Type == CellType.None && X - 1 < gb.H && gb.Cells[X-1, Y].Type == CellType.None)\r\n                {\r\n                    action = PlayerAction.Bomb;\r\n                    action = PlayerAction.Left;\r\n                    action = PlayerAction.Down;\r\n                }\r\n\r\n\r\n\r\n\r\n            }\n\n\n            lastX = X;\n            lastY = Y;\n            lastAction = action;\n\n\n            return action;\n        }\n\n    }\n}\n', 'ok', '', 0, 1526031882),
(37, 377, '﻿using System;\nusing System.Linq;\nusing System.Collections.Generic;\n\nusing ClassLibrary_CGC;\n\nnamespace User_class\n{\n    [Serializable]\n    public class User : Player\n    {\n        public GameBoard gameboard;\n\n        static int lastX;\n        static int lastY;\n        static PlayerAction lastAction;\n\n\n\n\n\n\n        /// <summary>\n        /// Задать Команду на следующий Ход\n        /// </summary>\n        /// <param name=\"gb\">Игровое Поле</param>\n        /// <returns>Команда для Юнита</returns>\n        public override PlayerAction Play(GameBoard gb)\n        {\n            /*\n                Пример тупого бота, который пытается дойти до центра (не учивая другие объект)\n            */\n            Random rn = new Random();\n            gameboard = gb;\n\n            PlayerAction action = PlayerAction.Up;\n\n            int difX = (X - gb.W / 2);\n            int difY = (Y - gb.H / 2);\n\n\n           \n            if(gb.Cells[X+1,Y].Type == CellType.Destructible)\r\n            {\r\n                action = PlayerAction.Bomb;\r\n                action = PlayerAction.Left;\r\n                action = PlayerAction.Left;\r\n\r\n            }\n            \n            if (Y+1 < gb.W && gb.Cells[X, Y+1].Type == CellType.Destructible && Y - 2 < gb.W &&  gb.Cells[X, Y - 2].Type == CellType.None)\r\n            {\r\n                action = PlayerAction.Bomb;\r\n                action = PlayerAction.Down;\r\n                action = PlayerAction.Down;\r\n\r\n            }\n            if (Y - 2 < gb.W && gb.Cells[X, Y - 2].Type == CellType.Indestructible && Y - 1 < gb.W && X + 1 < gb.H && gb.Cells[X+1, Y - 1].Type == CellType.None && gb.Cells[X-1, Y - 1].Type == CellType.None)\r\n                {\r\n                    action = PlayerAction.Bomb;\r\n                    action = PlayerAction.Down;\r\n                    action = PlayerAction.Right;\r\n\r\n                }\n            if (Y - 2 < gb.W && gb.Cells[X, Y - 2].Type == CellType.Indestructible && gb.Cells[X -1, Y - 1].Type == CellType.None && Y - 1 < gb.W && X + 1 < gb.H && gb.Cells[X +1, Y - 1].Type == CellType.Indestructible)\r\n            {\r\n                action = PlayerAction.Bomb;\r\n                action = PlayerAction.Down;\r\n                action = PlayerAction.Right;\r\n\r\n            }\n  /*          if(X + 1 > gb.H|| X - 1 > gb.H && Y - 2 > gb.W || gb.Cells[X, Y - 2].Type == CellType.Indestructible)\r\n            {\r\n                action = PlayerAction.Bomb;\r\n                action = PlayerAction.Up;\r\n                action = PlayerAction.Up;\r\n\r\n            }\n            if (X + 1 > gb.H || X - 1 > gb.H && X - 2 > gb.H|| gb.Cells[X-2, Y].Type == CellType.Indestructible)\r\n            {\r\n                action = PlayerAction.Bomb;\r\n                action = PlayerAction.Down;\r\n                action = PlayerAction.Down;\r\n\r\n            }\n            int cell = 0;\n            while(cell ==0)\r\n            {\r\n                action = PlayerAction.Right;\r\n                    if(X-1<gb.H && gb.Cells[X-1, Y].Type == CellType.Destructible && Y - 1 < gb.H && gb.Cells[X, Y - 1].Type == CellType.None && X - 1 < gb.H && gb.Cells[X - 1, Y].Type == CellType.None || X + 1 < gb.H && gb.Cells[X + 1, Y].Type == CellType.Destructible && Y - 1 < gb.H && gb.Cells[X, Y - 1].Type == CellType.None && X - 1 < gb.H && gb.Cells[X - 1, Y].Type == CellType.None || Y + 1 < gb.H && gb.Cells[X, Y+1].Type == CellType.Destructible && Y - 1 < gb.H && gb.Cells[X , Y-1].Type == CellType.None && X - 1 < gb.H && gb.Cells[X-1, Y].Type == CellType.None)\r\n                {\r\n                    action = PlayerAction.Bomb;\r\n                    action = PlayerAction.Left;\r\n                    action = PlayerAction.Down;\r\n                }\r\n\r\n\r\n            }\r\n*/\r\n           \n\n\n            lastX = X;\n            lastY = Y;\n            lastAction = action;\n\n\n            return action;\n        }\n\n    }\n}\n', 'ok', '', 1, 1526032257),
(38, 384, '﻿using System;\r\nusing System.Linq;\r\nusing System.Collections.Generic;\r\n\r\nusing ClassLibrary_CGC;\r\n\r\nnamespace User_class\r\n{\r\n    [Serializable]\r\n    public class User : Player\r\n    {\r\n        public GameBoard gameboard;\r\n\r\n        static int lastX;\r\n        static int lastY;\r\n        static PlayerAction lastAction;\r\n\r\n\r\n\r\n\r\n\r\n\r\n        /// <summary>\r\n        /// Задать Команду на следующий Ход\r\n        /// </summary>\r\n        /// <param name=\"gb\">Игровое Поле</param>\r\n        /// <returns>Команда для Юнита</returns>\r\n        public override PlayerAction Play(GameBoard gb)\r\n        {\r\n            /*\r\n                Пример тупого бота, который пытается дойти до центра (не учивая другие объект)\r\n            */\r\n            Random rn = new Random();\r\n            gameboard = gb;\r\n\r\n            PlayerAction action = PlayerAction.Wait;\r\n\r\n            int difX = (X - gb.W / 2);\r\n            int difY = (Y - gb.H / 2);\r\n\r\n\r\n/////////////////////////////////////////////////////////////////////////////////////////////////\r\n            int XRight0 = 0;\r\n\r\n\r\n            if (difX < 0 && difY > 0)\r\n            {\r\n\r\n                if (gb.Cells[X + 1, Y].Type == CellType.Destructible)\r\n                {\r\n                    bool twq0 = true;\r\n                    bool twq1 = true;\r\n                    bool twq2 = true;\r\n\r\n                    for (int i = 0; i < 1; i++)\r\n                    {\r\n\r\n                        if (gb.Cells[X + i, Y].Type == CellType.None)\r\n                            twq0 = true;\r\n                        else { twq0 = false; }\r\n\r\n                        if (gb.Cells[X, Y + i].Type == CellType.None)\r\n                            twq1 = true;\r\n                        else { twq1 = false; }\r\n\r\n                        if (gb.Cells[X - i, Y - i].Type == CellType.None)\r\n                            twq2 = true;\r\n                        else { twq2 = true; }\r\n\r\n                    }\r\n\r\n                    if (twq0 == true && twq1 == true && twq2 == true)\r\n                    {\r\n                        action = PlayerAction.Bomb;\r\n                        action = PlayerAction.Left;\r\n                        action = PlayerAction.Down;\r\n                    }\r\n                    else if (twq0 == false && twq1 == false && twq2 == true)\r\n                    {\r\n                        action = PlayerAction.Bomb;\r\n                        action = PlayerAction.Left;\r\n                        action = PlayerAction.Down;\r\n                    }\r\n                    else\r\n                    {\r\n                        action = PlayerAction.Bomb;\r\n                        action = PlayerAction.Left;\r\n                        action = PlayerAction.Left;\r\n                    }\r\n                }\r\n                else if (gb.Cells[X + 1, Y].Type == CellType.None) {\r\n                    action = PlayerAction.Right;\r\n                }\r\n            }\r\n\r\n            /////////////////////////////////////////////////////////////////////////////////////////////////\r\n\r\n            else if (difX > 0 && difY > 0)\r\n            {\r\n                if (gb.Cells[X, Y - 1].Type == CellType.Destructible)\r\n                {\r\n                    bool twq0 = true;\r\n                    bool twq1 = true;\r\n                    bool twq2 = true;\r\n\r\n                    for (int i = 0; i < 1; i++)\r\n                    {\r\n\r\n                        if (gb.Cells[X, Y - i].Type == CellType.None)\r\n                            twq0 = true;\r\n                        else { twq0 = false; }\r\n\r\n                        if (gb.Cells[X + i, Y].Type == CellType.None)\r\n                            twq1 = true;\r\n                        else { twq1 = false; }\r\n\r\n                        if (gb.Cells[X - i, Y + i].Type == CellType.None)\r\n                            twq2 = true;\r\n                        else { twq2 = true; }\r\n\r\n                    }\r\n\r\n                    if (twq0 == true && twq1 == true && twq2 == true)\r\n                    {\r\n                        action = PlayerAction.Bomb;\r\n                        action = PlayerAction.Up;\r\n                        action = PlayerAction.Left;\r\n                    }\r\n                    else if (twq0 == false && twq1 == false && twq2 == true)\r\n                    {\r\n                        action = PlayerAction.Bomb;\r\n                        action = PlayerAction.Up;\r\n                        action = PlayerAction.Left;\r\n                    }\r\n                    else\r\n                    {\r\n                        action = PlayerAction.Bomb;\r\n                        action = PlayerAction.Up;\r\n                        action = PlayerAction.Up;\r\n                    }\r\n                }\r\n                else if (gb.Cells[X, Y - 1].Type == CellType.None) {\r\n                    action = PlayerAction.Down;\r\n                }\r\n            }\r\n\r\n            /////////////////////////////////////////////////////////////////////////////////////////////////\r\n\r\n            else if (difX > 0 && difY < 0)\r\n            {\r\n                action = PlayerAction.Left;\r\n            }\r\n\r\n            /////////////////////////////////////////////////////////////////////////////////////////////////\r\n\r\n            else if (difX < 0 && difY < 0)\r\n            {\r\n                if (gb.Cells[X, Y + 1].Type == CellType.Destructible)\r\n                {\r\n                    bool twq0 = true;\r\n                    bool twq1 = true;\r\n                    bool twq2 = true;\r\n\r\n                    for (int i = 0; i < 1; i++)\r\n                    {\r\n\r\n                        if (gb.Cells[X, Y - i].Type == CellType.None)\r\n                            twq0 = true;\r\n                        else { twq0 = false; }\r\n\r\n                        if (gb.Cells[X + i, Y].Type == CellType.None)\r\n                            twq1 = true;\r\n                        else { twq1 = false; }\r\n\r\n                        if (gb.Cells[X + i, Y - i].Type == CellType.None)\r\n                            twq2 = true;\r\n                        else { twq2 = true; }\r\n\r\n                    }\r\n\r\n                    if (twq0 == true && twq1 == true && twq2 == true)\r\n                    {\r\n                        action = PlayerAction.Bomb;\r\n                        action = PlayerAction.Down;\r\n                        action = PlayerAction.Right;\r\n                    }\r\n                    else if (twq0 == false && twq1 == false && twq2 == true)\r\n                    {\r\n                        action = PlayerAction.Bomb;\r\n                        action = PlayerAction.Down;\r\n                        action = PlayerAction.Right;\r\n                    }\r\n                    else\r\n                    {\r\n                        action = PlayerAction.Bomb;\r\n                        action = PlayerAction.Down;\r\n                        action = PlayerAction.Down;\r\n                    }\r\n                }\r\n                else if (gb.Cells[X, Y - 1].Type == CellType.None)\r\n                {\r\n                    action = PlayerAction.Down;\r\n                }\r\n            }\r\n\r\n            /////////////////////////////////////////////////////////////////////////////////////////////////\r\n\r\n            else if (difX == 0 && difY > 0)\r\n            {\r\n                action = PlayerAction.Right;\r\n            }\r\n\r\n            /////////////////////////////////////////////////////////////////////////////////////////////////\r\n\r\n            else if (difX == 0 && difY < 0)\r\n            {\r\n                action = PlayerAction.Left;\r\n            }\r\n\r\n            /////////////////////////////////////////////////////////////////////////////////////////////////\r\n\r\n            else if (difY == 0 && difX > 0)\r\n            {\r\n                action = PlayerAction.Down;\r\n            }\r\n\r\n            /////////////////////////////////////////////////////////////////////////////////////////////////\r\n\r\n            else if (difX < 0 && difY == 0)\r\n            {\r\n                action = PlayerAction.Up;\r\n            }\r\n\r\n////////////////////////////////////////////////////////////////////////////////////////////////////////////\r\n            \r\n\r\n            return action = PlayerAction.Up;\r\n        }\r\n\r\n    }\r\n}\r\n', 'ok', '', 0, 1526053814);
INSERT INTO `sources` (`id`, `user_id`, `text`, `status`, `error`, `used`, `upload_time`) VALUES
(39, 384, '﻿using System;\r\nusing System.Linq;\r\nusing System.Collections.Generic;\r\n\r\nusing ClassLibrary_CGC;\r\n\r\nnamespace User_class\r\n{\r\n    [Serializable]\r\n    public class User : Player\r\n    {\r\n        public GameBoard gameboard;\r\n\r\n        static int lastX;\r\n        static int lastY;\r\n        static PlayerAction lastAction;\r\n\r\n\r\n        public int TicK = 0;\r\n\r\n\r\n\r\n        /// <summary>\r\n        /// Задать Команду на следующий Ход\r\n        /// </summary>\r\n        /// <param name=\"gb\">Игровое Поле</param>\r\n        /// <returns>Команда для Юнита</returns>\r\n        public override PlayerAction Play(GameBoard gb)\r\n        {\r\n            TicK++;\r\n\r\n            /*\r\n                Пример тупого бота, который пытается дойти до центра (не учивая другие объект)\r\n            */\r\n            Random rn = new Random();\r\n            gameboard = gb;\r\n\r\n            PlayerAction action = PlayerAction.Wait;\r\n\r\n            int difX = (X - gb.W / 2);\r\n            int difY = (Y - gb.H / 2);\r\n\r\n\r\n/////////////////////////////////////////////////////////////////////////////////////////////////\r\n            int XRight0 = 0;\r\n\r\n\r\n            if (difX < 0 && difY > 0)\r\n            {\r\n\r\n                if (gb.Cells[X + 1, Y].Type == CellType.Destructible)\r\n                {\r\n                    bool twq0 = true;\r\n                    bool twq1 = true;\r\n                    bool twq2 = true;\r\n\r\n                    for (int i = 0; i < 1; i++)\r\n                    {\r\n\r\n                        if (gb.Cells[X + i, Y].Type == CellType.None)\r\n                            twq0 = true;\r\n                        else { twq0 = false; }\r\n\r\n                        if (gb.Cells[X, Y + i].Type == CellType.None)\r\n                            twq1 = true;\r\n                        else { twq1 = false; }\r\n\r\n                        if (gb.Cells[X - i, Y - i].Type == CellType.None)\r\n                            twq2 = true;\r\n                        else { twq2 = true; }\r\n\r\n                    }\r\n                    int f = 0;\r\n                    if (twq0 == true && twq1 == true && twq2 == true)\r\n                    {\r\n                        \r\n                        action = PlayerAction.Bomb;\r\n                        f += TicK;\r\n                        action = PlayerAction.Left;\r\n                        action = PlayerAction.Down;\r\n                        \r\n                    }\r\n                    else if (twq0 == false && twq1 == false && twq2 == true)\r\n                    {\r\n                       \r\n                        action = PlayerAction.Bomb;\r\n                        f += TicK;\r\n                        action = PlayerAction.Left;\r\n                        action = PlayerAction.Down;\r\n                    }\r\n                    else\r\n                    {\r\n                       \r\n                        action = PlayerAction.Bomb;\r\n                        f += TicK;\r\n                        action = PlayerAction.Left;\r\n                        action = PlayerAction.Left;\r\n                    }\r\n                    \r\n                }\r\n                else if (gb.Cells[X + 1, Y].Type == CellType.None) {\r\n                    action = PlayerAction.Right;\r\n                }\r\n            }\r\n\r\n            /////////////////////////////////////////////////////////////////////////////////////////////////\r\n\r\n            else if (difX > 0 && difY > 0)\r\n            {\r\n                if (gb.Cells[X, Y - 1].Type == CellType.Destructible)\r\n                {\r\n                    bool twq0 = true;\r\n                    bool twq1 = true;\r\n                    bool twq2 = true;\r\n\r\n                    for (int i = 0; i < 1; i++)\r\n                    {\r\n\r\n                        if (gb.Cells[X, Y - i].Type == CellType.None)\r\n                            twq0 = true;\r\n                        else { twq0 = false; }\r\n\r\n                        if (gb.Cells[X + i, Y].Type == CellType.None)\r\n                            twq1 = true;\r\n                        else { twq1 = false; }\r\n\r\n                        if (gb.Cells[X - i, Y + i].Type == CellType.None)\r\n                            twq2 = true;\r\n                        else { twq2 = true; }\r\n\r\n                    }\r\n\r\n                    if (twq0 == true && twq1 == true && twq2 == true)\r\n                    {\r\n                        action = PlayerAction.Bomb;\r\n                        action = PlayerAction.Up;\r\n                        action = PlayerAction.Left;\r\n                    }\r\n                    else if (twq0 == false && twq1 == false && twq2 == true)\r\n                    {\r\n                        action = PlayerAction.Bomb;\r\n                        action = PlayerAction.Up;\r\n                        action = PlayerAction.Left;\r\n                    }\r\n                    else\r\n                    {\r\n                        action = PlayerAction.Bomb;\r\n                        action = PlayerAction.Up;\r\n                        action = PlayerAction.Up;\r\n                    }\r\n                }\r\n                else if (gb.Cells[X, Y - 1].Type == CellType.None) {\r\n                    action = PlayerAction.Down;\r\n                }\r\n            }\r\n\r\n            /////////////////////////////////////////////////////////////////////////////////////////////////\r\n\r\n            else if (difX > 0 && difY < 0)\r\n            {\r\n                action = PlayerAction.Left;\r\n            }\r\n\r\n            /////////////////////////////////////////////////////////////////////////////////////////////////\r\n\r\n            else if (difX < 0 && difY < 0)\r\n            {\r\n\r\n                if (gb.Cells[X, Y + 1].Type == CellType.None)\r\n                    action = PlayerAction.Up;\r\n                else\r\n                {\r\n\r\n                    int vert = 0;\r\n                    bool xmm = false;\r\n                    if (xmm == true)\r\n                    {\r\n                        if (vert + 1 == TicK)\r\n                        {\r\n                            action = PlayerAction.Down;\r\n                        }\r\n                        else if (vert + 2 == TicK) {\r\n                            action = PlayerAction.Right;\r\n                        }\r\n                    }\r\n                    else\r\n                    {\r\n                        action = PlayerAction.Bomb;\r\n                        vert += TicK;\r\n                    }\r\n                }\r\n            }\r\n\r\n            /////////////////////////////////////////////////////////////////////////////////////////////////\r\n\r\n            else if (difX == 0 && difY > 0)\r\n            {\r\n                action = PlayerAction.Right;\r\n            }\r\n\r\n            /////////////////////////////////////////////////////////////////////////////////////////////////\r\n\r\n            else if (difX == 0 && difY < 0)\r\n            {\r\n                \r\n\r\n            }\r\n\r\n            /////////////////////////////////////////////////////////////////////////////////////////////////\r\n\r\n            else if (difY == 0 && difX > 0)\r\n            {\r\n                action = PlayerAction.Down;\r\n            }\r\n\r\n            /////////////////////////////////////////////////////////////////////////////////////////////////\r\n\r\n            else if (difX < 0 && difY == 0)\r\n            {\r\n                if (gb.Cells[X, Y + 1].Type == CellType.None)\r\n                    action = PlayerAction.Up;\r\n                else if (gb.Cells[X, Y + 1].Type == CellType.Destructible && gb.Cells[X, Y - 3].Type == CellType.None)\r\n                {\r\n                    int vert = 0;\r\n                    bool xmm = false;\r\n                    if (xmm == true)\r\n                    {\r\n                        if (vert + 1 == TicK)\r\n                        {\r\n                            action = PlayerAction.Down;\r\n                        }\r\n                        else if (vert + 2 == TicK)\r\n                        {\r\n                            action = PlayerAction.Down;\r\n                        }\r\n                    }\r\n                    else\r\n                    {\r\n                        action = PlayerAction.Bomb;\r\n                        vert += TicK;\r\n                    }\r\n                }\r\n                else if (gb.Cells[X + 1, Y].Type == CellType.None && gb.Cells[X + 1, Y + 1].Type == CellType.Destructible && gb.Cells[X - 1, Y].Type == CellType.None)\r\n                {\r\n                    int vert = 0;\r\n                    bool xmm = false;\r\n                    if (xmm == true)\r\n                    {\r\n                        if (vert + 1 == TicK)\r\n                        {\r\n                            action = PlayerAction.Left;\r\n                        }\r\n                        else if (vert + 2 == TicK)\r\n                        {\r\n                            action = PlayerAction.Left;\r\n                        }\r\n                    }\r\n                    else\r\n                    {\r\n                        action = PlayerAction.Bomb;\r\n                        vert += TicK;\r\n                    }\r\n                }\r\n            }\r\n\r\n////////////////////////////////////////////////////////////////////////////////////////////////////////////\r\n            \r\n\r\n            return action;\r\n        }\r\n\r\n    }\r\n}\r\n', 'ok', '', 1, 1526057156),
(40, 405, '﻿using System;\r\nusing System.Collections.Generic;\r\nusing System.Text;\r\nusing System.Diagnostics;\r\nusing System.IO;\r\nusing System.Runtime.InteropServices;\r\nusing System.Runtime.Serialization.Formatters.Binary;\r\nusing Newtonsoft.Json;\r\nusing ClassLibrary_CGC;\r\n\r\nnamespace Bomber_console_server\r\n{\r\n    public class Compiler\r\n    {\r\n        static string main_Path;\r\n        static string CscEXE_Path;\r\n        static string assets_Path;\r\n        public static string HostUserPath;\r\n        public static string LogPath;\r\n        public static string mapsPath;\r\n\r\n        string output;\r\n        string errorput;\r\n        public string containerName;\r\n\r\n        static string php_dir_path;\r\n        static string main_php_path;\r\n\r\n        public Compiler()\r\n        {   \r\n            CscEXE_Path = RuntimeEnvironment.GetRuntimeDirectory() + \"csc.exe\";\r\n\r\n            DirectoryInfo main_di = new DirectoryInfo(Directory.GetCurrentDirectory());\r\n            main_Path = main_di.FullName;\r\n\r\n            if (main_di.Name == \"Debug\" || main_di.Name == \"Release\")\r\n            {\r\n                assets_Path = Path.GetFullPath(Path.Combine(main_Path, @\"..\\..\\..\\..\") + \"\\\\assets\");\r\n            }\r\n            else\r\n            {\r\n                assets_Path = Path.GetFullPath(main_Path + \"\\\\assets\");\r\n            }\r\n\r\n            mapsPath = assets_Path + \"\\\\\" + \"maps\";\r\n            LogPath = $\"{HostUserPath}\\\\log.txt\";           \r\n        }\r\n\r\n        public Compiler(string _php_dir_path, int i, int gameId, string type)\r\n        {\r\n            if (_php_dir_path == \"\" || _php_dir_path == null)\r\n            {\r\n                throw new Exception(\"Неверное имя exe файла\");\r\n            }\r\n\r\n            main_php_path = $\"{MyPath.binDir}\\\\{type}\\\\{gameId}\";\r\n            php_dir_path = _php_dir_path;\r\n\r\n            CscEXE_Path = RuntimeEnvironment.GetRuntimeDirectory() + \"csc.exe\";\r\n\r\n            DirectoryInfo main_di = new DirectoryInfo(Directory.GetCurrentDirectory());\r\n            main_Path = main_di.FullName;\r\n\r\n            if (main_di.Name == \"Debug\" || main_di.Name == \"Release\")\r\n            {\r\n                assets_Path = Path.GetFullPath(Path.Combine(main_Path, @\"..\\..\\..\\..\") + \"\\\\assets\");\r\n            }\r\n            else\r\n            {\r\n                assets_Path = Path.GetFullPath(main_Path + \"\\\\assets\");\r\n            }\r\n            mapsPath = assets_Path + \"\\\\\" + \"maps\";\r\n\r\n            HostUserPath = Directory.GetParent(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData)).FullName;\r\n            HostUserPath += $\"\\\\docker_temp\\\\{type}\";\r\n            LogPath = $\"{HostUserPath}\\\\log.txt\";\r\n            containerName = Helper.CalculateMD5Hash(DateTime.Now.Millisecond * Helper.rn.NextDouble() + \"JOPA\");           \r\n           \r\n        }\r\n\r\n        /// <summary>\r\n        /// Работа с Docker\r\n        /// </summary>\r\n        public void StartProccess(int serverPort)\r\n        {\r\n            DockerPreparation();\r\n            DockerStart();\r\n            Docker.Exec(containerName, $\"mono /cgc/{MyPath.exe_file_name} {serverPort}\");\r\n        }\r\n\r\n\r\n        static void CopyFileDockerToPHP()\r\n        {\r\n            DirectoryInfo di = new DirectoryInfo(HostUserPath);\r\n            FileInfo[] fiA = di.GetFiles();\r\n            foreach (FileInfo fi in fiA)\r\n            {\r\n                File.Copy(fi.FullName, $\"{main_php_path}\\\\{fi.Name}\");\r\n            }\r\n        }\r\n\r\n\r\n\r\n        static void DeleteOnlyDirectories(string path)\r\n        {\r\n            DirectoryInfo di = new DirectoryInfo(path);\r\n            DirectoryInfo[] diA = di.GetDirectories();\r\n            foreach (DirectoryInfo df in diA)\r\n            {\r\n                Helper.DeleteDirectory(df.FullName);\r\n              //  df.Delete();\r\n            }\r\n        }\r\n\r\n\r\n        public static void EndProccess()\r\n        {\r\n            try\r\n            {\r\n                CopyFileDockerToPHP();\r\n            }\r\n            catch\r\n            {\r\n                Helper.LOG(\"log.txt\", \"CopyFileDockerToPHP ERROR\");\r\n            }\r\n\r\n            try\r\n            {\r\n                DeleteOnlyDirectories(HostUserPath);\r\n                DeleteOnlyDirectories($\"{main_php_path}\");\r\n            }\r\n            catch (Exception er)\r\n            {\r\n                Helper.LOG(\"log.txt\", $\"DeleteOnlyDirectories Error: {er.Message}\");\r\n            }\r\n        }\r\n\r\n\r\n\r\n        void MoveGameResultstoPHP()\r\n        {\r\n            //    if (!File.Exists($\"{HostUserPath}\\\\{gameboardjsonpath}\"))\r\n        }\r\n\r\n\r\n        public static void SaveGameStatesForVisualizer(List<GameBoard> gameBoardStates)\r\n        {\r\n\r\n            //BinaryFormatter form = new BinaryFormatter();\r\n            //using (FileStream fs = new FileStream($\"{HostUserPath}\\\\{MyPath.gameStaterVisualizerFileName}\", FileMode.OpenOrCreate))\r\n            //{\r\n            //    form.Serialize(fs, gameBoardStates);\r\n            //}\r\n\r\n            using (StreamWriter sw = new StreamWriter($\"{HostUserPath}\\\\{MyPath.gameStaterVisualizerJSONFileName}\", false))\r\n            {\r\n                string visualizer = JsonConvert.SerializeObject(gameBoardStates);\r\n                sw.Write(visualizer);\r\n            }\r\n        }\r\n\r\n        public static void SaveGameResult(List<Player> players)\r\n        {\r\n            if (players != null)\r\n            {\r\n                using (StreamWriter sw = new StreamWriter($\"{HostUserPath}\\\\{MyPath.gameResultsFileName}\", false))\r\n                {\r\n                    string GameResultsJson = JsonConvert.SerializeObject(players);\r\n                    sw.Write(GameResultsJson);\r\n                }\r\n            }\r\n        }\r\n\r\n\r\n        public static void SavePlayersAllCommands(List<List<Player>> players)\r\n        {\r\n            if (players != null)\r\n            {\r\n                using (StreamWriter sw = new StreamWriter($\"{HostUserPath}\\\\{MyPath.userComandsFileName}\", false))\r\n                {\r\n                    sw.AutoFlush = true;\r\n                    string allTicksPlayersStats = JsonConvert.SerializeObject(players);\r\n                    sw.Write(allTicksPlayersStats);\r\n                }\r\n            }\r\n        }\r\n\r\n\r\n        public static void SavePlayersAllCommandsUnity(string commands)\r\n        {\r\n            using (StreamWriter sw = new StreamWriter($\"{HostUserPath}\\\\{MyPath.userComandsUnityFileName}\", false))\r\n            {\r\n                sw.AutoFlush = true;\r\n                sw.WriteLine(commands);\r\n            }\r\n\r\n        }\r\n\r\n        \r\n\r\n\r\n        public static void Compress()\r\n        {\r\n        //    Helper.Compress($\"{HostUserPath}\\\\{MyPath.gameStaterVisualizerFileName}\", $\"{HostUserPath}\\\\{MyPath.gameStaterVisualizeFileNamerDATtoGZ}\");\r\n            Helper.Compress($\"{HostUserPath}\\\\{MyPath.gameStaterVisualizerJSONFileName}\", $\"{HostUserPath}\\\\{MyPath.gameStaterVisualizeFileNamerJSONtoGZ}\");\r\n            if (File.Exists($\"{HostUserPath}\\\\{MyPath.gameStaterVisualizerFileName}\"))\r\n            {\r\n                try\r\n                {\r\n                    File.Delete($\"{HostUserPath}\\\\{MyPath.gameStaterVisualizerJSONFileName}\");\r\n                }\r\n                catch\r\n                {\r\n\r\n                }\r\n            }\r\n        }\r\n\r\n\r\n\r\n        public void StopContainer()\r\n        {\r\n            Docker.StopContainer(containerName);\r\n        }\r\n\r\n\r\n        /// <summary>\r\n        /// Подготовка к запуску Docker контейнера\r\n        /// </summary>\r\n        void DockerPreparation()\r\n        {\r\n            CreateDockerTempDirectory(containerName);\r\n            CopyDependenciesToTempDirectory();\r\n        }\r\n\r\n\r\n        /// <summary>\r\n        /// Запустить Docker контейнер\r\n        /// </summary>\r\n        void DockerStart()\r\n        {\r\n            string hostPath = $\"{HostUserPath}\\\\{containerName}\";\r\n            Docker.Run(MyPath.dockerImage, hostPath, containerName);\r\n        }\r\n\r\n\r\n\r\n        /// <summary>\r\n        /// Создать папку tcp-клиента внутри временной папки Docker\r\n        /// </summary>\r\n        /// <param name=\"dirName\">Имя создаваемой папки</param>\r\n        void CreateDockerTempDirectory(string dirName)\r\n        {\r\n            Helper.CreateEmptyDirectory($\"{HostUserPath}\\\\{dirName}\");\r\n        }\r\n\r\n        /// <summary>\r\n        /// Скопировать необходимые файлы в папку tcp-клиента\r\n        /// </summary>\r\n        void CopyDependenciesToTempDirectory()\r\n        {\r\n            File.Copy($\"{assets_Path}\\\\{MyPath.ClassLibrary_CGC}\", $\"{HostUserPath}\\\\{containerName}\\\\{MyPath.ClassLibrary_CGC}\");\r\n            File.Copy($\"{assets_Path}\\\\{MyPath.NewtonJsonLibraryName}\", $\"{HostUserPath}\\\\{containerName}\\\\{MyPath.NewtonJsonLibraryName}\");\r\n\r\n            File.Copy($\"{php_dir_path}\\\\{MyPath.exe_file_name}\", $\"{HostUserPath}\\\\{containerName}\\\\{MyPath.exe_file_name}\");\r\n            File.Copy($\"{php_dir_path}\\\\{MyPath.userClass_dllName}\", $\"{HostUserPath}\\\\{containerName}\\\\{MyPath.userClass_dllName}\");\r\n        }\r\n    }\r\n}\r\n', 'error', 'Ошибка при компиляции пользовательской стратегии в DLL: \r\nuser.cs(46,23): error CS1056: Непредусмотренный символ \"$\"\r\nuser.cs(56,29): error CS1056: Непредусмотренный символ \"$\"\r\nuser.cs(75,29): error CS1056: Непредусмотренный символ \"$\"\r\nuser.cs(76,23): error CS1056: Непредусмотренный символ \"$\"\r\nuser.cs(88,40): error CS1056: Непредусмотренный символ \"$\"\r\nuser.cs(98,40): error CS1056: Непредусмотренный символ \"$\"\r\nuser.cs(130,39): error CS1056: Непредусмотренный символ \"$\"\r\nuser.cs(134,39): error CS1056: Непредусмотренный символ \"$\"\r\nuser.cs(155,55): error CS1056: Непредусмотренный символ \"$\"\r\nuser.cs(166,59): error CS1056: Непредусмотренный символ \"$\"\r\nuser.cs(179,59): error CS1056: Непредусмотренный символ \"$\"\r\nuser.cs(191,55): error CS1056: Непредусмотренный символ \"$\"\r\nuser.cs(205,29): error CS1056: Непредусмотренный символ \"$\"\r\nuser.cs(205,91): error CS1056: Непредусмотренный символ \"$\"\r\nuser.cs(206,29): error CS1056: Непредусмотренный символ \"$\"\r\nuser.cs(210,33): error CS1056: Непредусмотренный символ \"$\"\r\nuser.cs(242,31): error CS1056: Непредусмотренный символ \"$\"\r\nuser.cs(254,41): error CS1056: Непредусмотренный символ \"$\"\r\nuser.cs(262,23): error CS1056: Непредусмотренный символ \"$\"\r\nuser.cs(262,68): error CS1056: Непредусмотренный символ \"$\"\r\nuser.cs(263,23): error CS1056: Непредусмотренный символ \"$\"\r\nuser.cs(263,73): error CS1056: Непредусмотренный символ \"$\"\r\nuser.cs(265,23): error CS1056: Непредусмотренный символ \"$\"\r\nuser.cs(265,66): error CS1056: Непредусмотренный символ \"$\"\r\nuser.cs(266,23): error CS1056: Непредусмотренный символ \"$\"\r\nuser.cs(266,70): error CS1056: Непредусмотренный символ \"$\"\r\n', 0, 1528717094),
(41, 408, '﻿using System;\r\n\r\nnamespace Bomber_console_server\r\n{\r\n     class Docker\r\n    {\r\n        static string output = \"\";\r\n        static string errorput = \"\";        \r\n\r\n        /// <summary>\r\n        /// Запустить Docker контейнер\r\n        /// </summary>\r\n        /// <param name=\"image\">Образ, который будет использоваться</param>\r\n        /// <param name=\"hostPath\">Путь на хост машине в специальном формате:  /c/Users/Galaxy/Desktop/dockertest</param>\r\n        /// <param name=\"contPath\">Путь внутри контейнера</param>\r\n        /// <returns>ID запущенного контейнера</returns>\r\n        public static string Run(string image, string hostPath, string name, string contPath=\"/cgc\")\r\n        {\r\n            string containerId = \"\";\r\n            output = \"\";\r\n            errorput = \"\";\r\n            hostPath = VolumeFormat(hostPath);\r\n\r\n            Helper.startProccess($\"docker-machine ssh default docker run -it -d --network=host --name={name} -m 64m --memory-swap 64m --rm --volume {hostPath}:{contPath} {image}\", out output, out errorput);           \r\n\r\n            if (errorput != \"\")\r\n            {\r\n                throw new Exception($\"Run ERROR: {errorput}\");\r\n            }\r\n            else if (output == \"\")\r\n            {\r\n                throw new Exception($\"Run ERROR: не получен ID контейнера\");\r\n            }\r\n\r\n            containerId = output;\r\n            return containerId;\r\n        }\r\n\r\n        /// <summary>\r\n        /// Приведение Пути до спец формата для docker run --volume\r\n        /// </summary>\r\n        /// <param name=\"origin\">Начальный путь</param>\r\n        /// <returns>Путь в спец формате</returns>\r\n        public static string VolumeFormat(string origin)\r\n        {\r\n            string result = \"\";\r\n            origin = origin.Replace(\":\\\\\\\\\", \"/\");\r\n            origin = origin.Replace(\":\\\\\", \"/\");\r\n            origin = origin.Replace(\"\\\\\\\\\", \"/\");\r\n            origin = origin.Replace(\"\\\\\", \"/\");\r\n\r\n            result += \"/\";\r\n            result += origin[0].ToString().ToLower();\r\n            result += origin.Substring(1);          \r\n            return result;\r\n        }\r\n\r\n\r\n        /// <summary>\r\n        /// Остановить контейнер\r\n        /// </summary>\r\n        /// <param name=\"ID\">ID запущенного контейнера</param>\r\n        public static void StopContainer(string ID)\r\n        {\r\n            output = \"\";\r\n            errorput = \"\";\r\n            Helper.startProccess($\"docker-machine ssh default docker kill {ID}\", out output, out errorput);\r\n\r\n            if (errorput !=\"\")\r\n            {\r\n                throw new Exception($\"StopContainer ERROR: {errorput}\");\r\n            }\r\n        }\r\n          \r\n\r\n        /// <summary>\r\n        /// Запустить команду внутри контейнера\r\n        /// </summary>\r\n        /// <param name=\"ID\">ID запущенного контейнера</param>\r\n        /// <param name=\"command\">Команда вместе с параметрами</param>\r\n        public static void Exec(string ID, string command)\r\n        {\r\n            output = \"\";\r\n            errorput = \"\";\r\n            Helper.startProccess($\"docker-machine ssh default docker exec -it -d {ID} {command}\", out output, out errorput);\r\n\r\n            if (errorput != \"\")\r\n            {\r\n                throw new Exception($\"StopContainer ERROR: {errorput}\");\r\n            }\r\n        }\r\n    }\r\n}\r\n', 'error', 'Ошибка при компиляции пользовательской стратегии в DLL: \r\nuser.cs(24,34): error CS1056: Непредусмотренный символ \"$\"\r\nuser.cs(28,37): error CS1056: Непредусмотренный символ \"$\"\r\nuser.cs(32,37): error CS1056: Непредусмотренный символ \"$\"\r\nuser.cs(67,34): error CS1056: Непредусмотренный символ \"$\"\r\nuser.cs(71,37): error CS1056: Непредусмотренный символ \"$\"\r\nuser.cs(85,34): error CS1056: Непредусмотренный символ \"$\"\r\nuser.cs(89,37): error CS1056: Непредусмотренный символ \"$\"\r\n', 0, 1528717155);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(25) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(256) NOT NULL,
  `is_bot` tinyint(1) NOT NULL,
  `points` int(11) NOT NULL,
  `last_upload_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `name`, `password`, `is_bot`, `points`, `last_upload_time`) VALUES
(351, 'XIV_NOSU_1', 'пределов.NET__СОГУ', 'a320f37f05014c465a58eff2e4ac7a31', 0, 0, 0),
(352, 'XIV_NOSU_2', 'IRON__СОГУ', '5374f9964814ed589e68aadf550f4ef8', 0, 0, 0),
(353, 'XIV_NOSU_3', 'Поцандрэ__СОГУ', 'c8c8ca269e77bee15f4d436fd63e2baa', 0, 0, 0),
(354, 'XIV_NOSU_4', 'Корвалол__СОГУ', '6bcecacc817b84e2fb6aebde53e960d1', 0, 0, 0),
(355, 'XIV_NOSU_5', 'CloudFive__СКГМИ', '968d4d176774f854bd8fd8613ceab8ca', 0, 0, 0),
(356, 'XIV_NOSU_6', 'Альтрон__СОГУ', '68793d520e877b3a0465dcd164377d37', 0, 0, 0),
(357, 'XIV_NOSU_7', 'IT_Progers__ВКЭ', '266cc21160a61567fd0b3ff139b4b326', 0, 0, 0),
(358, 'XIV_NOSU_8', 'HelloWorld__СКГМИ', '5286a99e006efdd15912b9165190a73e', 0, 0, 0),
(359, 'XIV_NOSU_9', 'Qwerty__СКГМИ', '5d95bd67f5b241b89ad1f1f9efe081b4', 0, 0, 0),
(360, 'XIV_NOSU_10', 'Fablab_Alania', 'f4a250ba115fbdbfc2d5ad1dc82d0057', 0, 0, 0),
(361, 'XIV_NOSU_11', 'Ok_Computer__СОГУ', 'f70f336c81efda8a946ea6dccf16a589', 0, 0, 0),
(362, 'XIV_NOSU_12', 'ПОБЕДА__СОШ_№_26', '2847c398af1bd962eb31ed77e3ed1ac6', 0, 0, 0),
(363, 'XIV_NOSU_13', 'Ганбит__ВЦНМО', '2a024e80d2bf7bbbdd196f976fc58b51', 0, 0, 0),
(364, 'XIV_NOSU_14', 'Флейва__ВЦНМО', 'f98789cf1b307b90b7d5b06a402d0dd8', 0, 0, 0),
(365, 'XIV_NOSU_15', 'FIVEBIT_М_БОУ-Лицей', 'b3565c60dd319abf49ccd40f9abcf289', 0, 0, 0),
(366, 'XIV_NOSU_16', 'РТС__FablabAlania', '2c4e546d3e8719e90ee925c72d4dea5a', 0, 0, 0),
(367, 'XIV_NOSU_17', 'Додекогемидодекакрон__МБОУ-Лицей_РЦДТТ', '323278b2785a0563e8832d49870612ae', 0, 0, 0),
(368, 'XIV_NOSU_18', 'Putin_от_души__Математический_клуб_Панда', 'e84f657fcd5b539b36eaf8451acc68ec', 0, 0, 0),
(369, 'XIV_NOSU_19', 'RFMLI_1__РФМЛИ', '2a16b10a33c3fead5639c78d80752ff5', 0, 0, 0),
(370, 'XIV_NOSU_20', 'РФМЛИ__РФМЛИ', '91d1ab0dc3c528de59422b9928acdc9a', 0, 0, 0),
(371, 'XIV_NOSU_21', 'Лицей-6__МБОУ-Лицей', '26e0507468d4ebf1a85c7cb86c51e084', 0, 0, 0),
(372, 'XIV_NOSU_22', 'Лицей-6.5__МБОУ-Лицей', '8164927a16cbac5cb6330a5818edb585', 0, 0, 0),
(373, 'XIV_NOSU_23', 'Лицей-7__МБОУ-Лицей', '565e9b1cb9315615e1df1d6227141462', 0, 0, 0),
(374, 'XIV_NOSU_24', 'Панда-7__Математический_клуб_Панда', 'c3027e58054872b057daceee3b638106', 0, 0, 0),
(375, 'XIV_NOSU_25', 'Панда-6__Математический_клуб_Панда', 'f7b9e7ac402ec8f1b1b23751ba5cede3', 0, 0, 0),
(376, 'XIV_NOSU_26', 'Панда-5__Математический_клуб_Панда', 'b06ef53a8ac67f82f183d468f516bc1f', 0, 0, 0),
(377, 'XIV_NOSU_27', 'РДДТ0__РДДТ', 'a00f124c7e8d6577157fb721280cc888', 0, 80, 0),
(378, 'XIV_NOSU_28', 'Фракталы__СОШ_№22', '5e6b972dbd7f5191c56cfda0f6e704a6', 0, 0, 0),
(379, 'XIV_NOSU_29', 'РФМЛИ-8__РФМЛИ_Панда', 'e6def92db119400f7ec72bc19bf1f48a', 0, 0, 0),
(380, 'XIV_NOSU_30', 'БИНОМ__СОШ_№2_Архонская', '24d2c5c3db1d4a04ac33eb538b727ce5', 0, 0, 0),
(381, 'XIV_NOSU_31', 'РОМБУС__СОШ_№30', 'efbaae79da9e7caa76d4fd4c07bcb491', 0, 0, 0),
(382, 'XIV_NOSU_32', 'Советские_ёжики:)__ВЦНМО', '47aaf18945f9cde48b3b730ef1278976', 0, 0, 0),
(383, 'XIV_NOSU_33', 'Гонцы_Шапарина__ФМШ_2007_Москва', '9bb0c89ce497ee17bcb1062818fb3b9e', 0, 0, 0),
(384, 'XIV_NOSU_34', 'РДДТ-1__РДДТ', 'babcee40b936714228a954b0ee7ccdd1', 0, 80, 0),
(385, 'XIV_NOSU_35', 'Split_second__ВЦНМО', '36362cba3add34bb95c3402d5e06c79f', 0, 0, 0),
(386, 'XIV_NOSU_36', 'РФМЛИ_8А__РФМЛИ', '3f952e75971d7506d50ab4b08c8dc544', 0, 0, 0),
(387, 'XIV_NOSU_37', 'RFMLI_8A__РФМЛИ', 'e2784d0e8e734340be3c92d8e1b103a8', 0, 0, 0),
(388, 'XIV_NOSU_38', 'Радикал__РФМЛИ', 'ebcc38c0b6f9d2c63308860fd78d8b6c', 0, 0, 0),
(389, 'XIV_NOSU_39', 'Архимед-2__РФМЛИ', '2918a6fa79d185ee158c27c20c595397', 0, 0, 0),
(390, 'XIV_NOSU_40', '!NHAPE__МБОУ-Лицей', '23a599b7674ca61074c188a119b5490f', 0, 0, 0),
(391, 'XIV_NOSU_41', 'Избранные__МБОУ-Лицей', '85fb3acca7a5913e7c04e4c96c4cb4cb', 0, 0, 0),
(392, 'XIV_NOSU_42', 'Мегамозг__МБОУ-Лицей', 'd3bf919785fd8956c329d3fdc2aaff19', 0, 0, 0),
(393, 'XIV_NOSU_43', 'ИнЛи__Инженерный_лицей-интернат_Казань', '7ef8c6385ac4479fb43055a7828a7221', 0, 0, 0),
(394, 'XIV_NOSU_44', 'Бунтующие_медузы__ВЦНМО', 'd4314b88823c7193e9b9d47ebe900945', 0, 0, 0),
(395, 'XIV_NOSU_45', 'Молчание-Золото__РФМЛИ', '3cdee965545e1946cd88005686fb3160', 0, 0, 0),
(396, 'XIV_NOSU_46', 'IQGuys__МБОУ-Лицей', '68e478f472bd26ecd5547de6de411cb2', 0, 0, 0),
(397, 'XIV_NOSU_47', 'Magic_the_gathering__РДДТ', '81ef0685c1b07d51577080dd752928b5', 0, 95, 0),
(398, 'XIV_NOSU_48', 'Олимпус__ВЦНМО', 'b0d40c337b9af9e1ccd8ed56e929675b', 0, 0, 0),
(399, 'XIV_NOSU_49', 'User1', '46e313ebffcefa390634a8fcd24b07fb', 0, 0, 0),
(400, 'XIV_NOSU_50', 'User2', '62d95dbd9ada5a35e146e68e75692203', 0, 0, 0),
(401, 'XIV_NOSU_51', 'User3', 'd8751fe5568189a972a30a241f2207fc', 0, 0, 0),
(402, 'XIV_NOSU_52', 'User4', '81faa0386bb07c700d93743b004c0958', 0, 0, 0),
(403, 'XIV_NOSU_53', 'User5', '93365033b37d596b0d420c3c36fcbc9f', 0, 0, 0),
(404, 'test', 'test', 'dc54b78cb87cce2c6e12611082b648e2', 1, 0, 0),
(405, 'test1', 'bot1', 'dc54b78cb87cce2c6e12611082b648e2', 1, 0, 0),
(406, 'test3', 'bot3', 'dc54b78cb87cce2c6e12611082b648e2', 1, 0, 0),
(407, 'test4', 'bot4', 'dc54b78cb87cce2c6e12611082b648e2', 1, 0, 0),
(408, 'test2', 'bot2', 'dc54b78cb87cce2c6e12611082b648e2', 1, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `users_group`
--

CREATE TABLE `users_group` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users_group`
--

INSERT INTO `users_group` (`id`, `group_id`, `user_id`) VALUES
(468, 1, 404),
(469, 1, 401),
(470, 2, 401),
(471, 2, 406),
(472, 2, 404),
(473, 2, 399),
(474, 3, 401),
(475, 3, 399),
(476, 3, 406),
(477, 3, 404),
(478, 4, 405),
(479, 4, 402),
(480, 4, 404),
(481, 5, 406),
(482, 5, 407),
(483, 5, 399),
(484, 5, 404),
(485, 6, 399),
(486, 6, 402),
(487, 6, 405),
(488, 6, 404),
(489, 7, 402),
(490, 7, 401),
(491, 7, 399),
(492, 7, 397),
(493, 8, 397),
(494, 8, 380),
(495, 9, 404),
(496, 9, 402),
(497, 9, 405),
(498, 9, 397),
(499, 10, 401),
(500, 10, 404),
(501, 11, 404),
(502, 11, 380),
(503, 12, 404),
(504, 12, 380),
(505, 13, 404),
(506, 13, 380),
(507, 14, 404),
(508, 14, 380),
(509, 15, 397),
(510, 15, 407),
(511, 15, 406),
(512, 15, 404),
(513, 16, 406),
(514, 16, 399),
(515, 16, 401),
(516, 16, 397),
(517, 17, 399),
(518, 17, 401),
(519, 17, 407),
(520, 17, 404),
(521, 18, 397),
(522, 18, 405),
(523, 18, 402),
(524, 18, 406),
(525, 19, 401),
(526, 19, 397),
(527, 19, 405),
(528, 19, 399),
(529, 20, 397),
(530, 20, 402),
(531, 20, 399),
(532, 20, 401),
(533, 21, 408),
(534, 21, 406),
(535, 21, 405),
(536, 21, 407),
(537, 22, 402),
(538, 22, 399),
(539, 22, 397),
(540, 22, 401),
(541, 23, 401),
(542, 23, 408),
(543, 23, 407),
(544, 23, 397),
(545, 24, 402),
(546, 24, 406),
(547, 24, 405),
(548, 24, 399),
(549, 25, 401),
(550, 25, 399),
(551, 25, 397),
(552, 25, 402),
(553, 26, 399),
(554, 26, 401),
(555, 26, 397),
(556, 26, 402),
(557, 27, 397),
(558, 27, 405),
(559, 27, 406),
(560, 27, 408),
(561, 28, 397),
(562, 28, 377),
(563, 29, 405),
(564, 29, 377),
(565, 30, 397),
(566, 30, 377),
(567, 31, 397),
(568, 31, 405),
(569, 31, 406),
(570, 31, 377),
(571, 32, 397),
(572, 32, 377),
(573, 33, 397),
(574, 33, 377),
(575, 34, 397),
(576, 34, 377),
(577, 34, 405),
(578, 34, 384),
(579, 35, 405),
(580, 35, 407),
(581, 35, 408),
(582, 35, 384),
(583, 36, 408),
(584, 36, 397),
(585, 36, 377),
(586, 36, 384),
(587, 37, 408),
(588, 37, 384),
(589, 37, 397),
(590, 37, 377),
(591, 38, 408),
(592, 38, 384),
(593, 38, 397),
(594, 38, 377),
(595, 39, 397),
(596, 39, 408),
(597, 39, 384),
(598, 39, 377),
(599, 40, 397),
(600, 40, 384),
(601, 40, 408),
(602, 40, 377),
(603, 41, 384),
(604, 41, 397),
(605, 41, 408),
(606, 41, 377),
(607, 42, 408),
(608, 42, 377),
(609, 42, 397),
(610, 42, 384),
(611, 43, 397),
(612, 43, 377),
(613, 43, 408),
(614, 43, 384),
(615, 44, 397),
(616, 44, 384),
(617, 44, 408),
(618, 44, 377),
(619, 45, 397),
(620, 45, 384),
(621, 45, 406),
(622, 45, 405),
(623, 46, 384),
(624, 46, 397),
(625, 46, 405),
(626, 47, 397),
(627, 47, 405);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `final`
--
ALTER TABLE `final`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `final_points`
--
ALTER TABLE `final_points`
  ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sandbox`
--
ALTER TABLE `sandbox`
  ADD PRIMARY KEY (`id`),
  ADD KEY `creator` (`creator`);

--
-- Индексы таблицы `sources`
--
ALTER TABLE `sources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users_group`
--
ALTER TABLE `users_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `final`
--
ALTER TABLE `final`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `sandbox`
--
ALTER TABLE `sandbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT для таблицы `sources`
--
ALTER TABLE `sources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=409;

--
-- AUTO_INCREMENT для таблицы `users_group`
--
ALTER TABLE `users_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=628;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `sandbox`
--
ALTER TABLE `sandbox`
  ADD CONSTRAINT `sandbox_ibfk_1` FOREIGN KEY (`creator`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `sources`
--
ALTER TABLE `sources`
  ADD CONSTRAINT `sources_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `users_group`
--
ALTER TABLE `users_group`
  ADD CONSTRAINT `users_group_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
