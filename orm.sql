-- Adminer 4.8.1 MySQL 8.0.28 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` tinyint NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `articles` (`id`, `title`, `content`) VALUES
(1,	'article1',	'content1'),
(2,	'article2',	'content2'),
(3,	'article3',	'content3'),
(4,	'article4',	'content4'),
(5,	'article5',	'content5'),
(6,	'article6',	'content6'),
(7,	'article7',	'content7'),
(8,	'article8',	'content8'),
(9,	'article9',	'content9'),
(10,	'article10',	'content10');

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `news` (`id`, `title`, `body`, `comment`) VALUES
(306,	'Saving Test00',	'Saving Test00',	'Saving Test00'),
(307,	'Saving Test1',	'Saving Test2',	'Saving Test3'),
(308,	'Saving Test001',	'Saving Test001',	'Saving Test001');

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'hello',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `posts` (`id`, `title`) VALUES
(17,	'hello'),
(18,	'hello');

-- 2022-03-09 14:43:19
