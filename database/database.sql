CREATE DATABASE IF NOT EXISTS `database_proyectoWeb`;

USE `database_proyectoWeb`;

CREATE TABLE `courses` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_info` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_short` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_long` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL,
  `courses_id` int(10) unsigned NOT NULL,
  `name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_id` (`courses_id`),
  CONSTRAINT `courses_models_ibfk_1` FOREIGN KEY (`courses_id`) REFERENCES `courses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


LOCK TABLES `courses` WRITE;
insert into courses (id, name, price, short_info, long_info, image_short, image_long) values (1, 'Curso numero 1', 12, 'ìnfoCorta', 'infoLargaº', 'linkImagen1', 'linkImagen2');
insert into courses (id, name, price, short_info, long_info, image_short, image_long) values (2, 'Curso numero 2', 12, 'ìnfoCorta', 'infoLarga1', 'linkImagen1', 'linkImagen2');
insert into courses (id, name, price, short_info, long_info, image_short, image_long) values (3, 'Curso numero 3', 12, 'ìnfoCorta', 'infoLarga2', 'linkImagen1', 'linkImagen2');
insert into courses (id, name, price, short_info, long_info, image_short, image_long) values (4, 'Curso numero 4', 12, 'ìnfoCorta', 'infoLarga3', 'linkImagen1', 'linkImagen2');
insert into courses (id, name, price, short_info, long_info, image_short, image_long) values (5, 'Curso numero 5', 12, 'ìnfoCorta', 'infoLarga4', 'linkImagen1', 'linkImagen2');
insert into courses (id, name, price, short_info, long_info, image_short, image_long) values (6, 'Curso numero 6', 12, 'ìnfoCorta', 'infoLarga5', 'linkImagen1', 'linkImagen2');
insert into courses (id, name, price, short_info, long_info, image_short, image_long) values (7, 'Curso numero 7', 12, 'ìnfoCorta', 'infoLarga6', 'linkImagen1', 'linkImagen2');
insert into courses (id, name, price, short_info, long_info, image_short, image_long) values (8, 'Curso numero 8', 12, 'ìnfoCorta', 'infoLarga7', 'linkImagen1', 'linkImagen2');
insert into courses (id, name, price, short_info, long_info, image_short, image_long) values (9, 'Curso numero 9', 12, 'ìnfoCorta', 'infoLarga8', 'linkImagen1', 'linkImagen2');
insert into courses (id, name, price, short_info, long_info, image_short, image_long) values (10, 'Curso numero 10', 12, 'ìnfoCorta', 'infoLarga9', 'linkImagen1', 'linkImagen2');
insert into courses (id, name, price, short_info, long_info, image_short, image_long) values (11, 'Curso numero 11', 12, 'ìnfoCorta', 'infoLarga10', 'linkImagen1', 'linkImagen2');
insert into courses (id, name, price, short_info, long_info, image_short, image_long) values (12, 'Curso numero 12', 12, 'ìnfoCorta', 'infoLarga11', 'linkImagen1', 'linkImagen2');
insert into courses (id, name, price, short_info, long_info, image_short, image_long) values (13, 'Curso numero 13', 12, 'ìnfoCorta', 'infoLarga12', 'linkImagen1', 'linkImagen2');
insert into courses (id, name, price, short_info, long_info, image_short, image_long) values (14, 'Curso numero 14', 12, 'ìnfoCorta', 'infoLarga13', 'linkImagen1', 'linkImagen2');
insert into courses (id, name, price, short_info, long_info, image_short, image_long) values (15, 'Curso numero 15', 12, 'ìnfoCorta', 'infoLarga14', 'linkImagen1', 'linkImagen2');
insert into courses (id, name, price, short_info, long_info, image_short, image_long) values (16, 'Curso numero 16', 12, 'ìnfoCorta', 'infoLarga15', 'linkImagen1', 'linkImagen2');
insert into courses (id, name, price, short_info, long_info, image_short, image_long) values (17, 'Curso numero 17', 12, 'ìnfoCorta', 'infoLarga16', 'linkImagen1', 'linkImagen2');
insert into courses (id, name, price, short_info, long_info, image_short, image_long) values (18, 'Curso numero 18', 12, 'ìnfoCorta', 'infoLarga17', 'linkImagen1', 'linkImagen2');
insert into courses (id, name, price, short_info, long_info, image_short, image_long) values (19, 'Curso numero 19', 12, 'ìnfoCorta', 'infoLarga18', 'linkImagen1', 'linkImagen2');
insert into courses (id, name, price, short_info, long_info, image_short, image_long) values (20, 'Curso numero 20', 12, 'ìnfoCorta', 'infoLarga19', 'linkImagen1', 'linkImagen2');
UNLOCK TABLES;

LOCK TABLES `users` WRITE;
insert into users (id, courses_id, name, email, password ) values (1, 1, 'ìnfoCorta', 'infoLargaº', 'linkImagen1');
insert into users (id, courses_id, name, email, password ) values (2, 2, 'ìnfoCorta', 'infoLarga1', 'linkImagen1');
insert into users (id, courses_id, name, email, password ) values (3, 3, 'ìnfoCorta', 'infoLarga2', 'linkImagen1');
insert into users (id, courses_id, name, email, password ) values (4, 4, 'ìnfoCorta', 'infoLarga3', 'linkImagen1');
insert into users (id, courses_id, name, email, password ) values (5, 5, 'ìnfoCorta', 'infoLarga4', 'linkImagen1');
insert into users (id, courses_id, name, email, password ) values (6, 6, 'ìnfoCorta', 'infoLarga5', 'linkImagen1');
insert into users (id, courses_id, name, email, password ) values (7, 7, 'ìnfoCorta', 'infoLarga6', 'linkImagen1');
insert into users (id, courses_id, name, email, password ) values (8, 8, 'ìnfoCorta', 'infoLarga7', 'linkImagen1');
insert into users (id, courses_id, name, email, password ) values (9, 9, 'ìnfoCorta', 'infoLarga8', 'linkImagen1');
insert into users (id, courses_id, name, email, password ) values (10, 10, 'ìnfoCorta', 'infoLarga9', 'linkImagen1');
insert into users (id, courses_id, name, email, password ) values (11, 11, 'ìnfoCorta', 'infoLarga10', 'linkImagen1');
insert into users (id, courses_id, name, email, password ) values (12, 12, 'ìnfoCorta', 'infoLarga11', 'linkImagen1');
insert into users (id, courses_id, name, email, password ) values (13, 13, 'ìnfoCorta', 'infoLarga12', 'linkImagen1');
insert into users (id, courses_id, name, email, password ) values (14, 14, 'ìnfoCorta', 'infoLarga13', 'linkImagen1');
insert into users (id, courses_id, name, email, password ) values (15, 15, 'ìnfoCorta', 'infoLarga14', 'linkImagen1');
insert into users (id, courses_id, name, email, password ) values (16, 16, 'ìnfoCorta', 'infoLarga15', 'linkImagen1');
insert into users (id, courses_id, name, email, password ) values (17, 17, 'ìnfoCorta', 'infoLarga16', 'linkImagen1');
insert into users (id, courses_id, name, email, password ) values (18, 18, 'ìnfoCorta', 'infoLarga17', 'linkImagen1');
insert into users (id, courses_id, name, email, password ) values (19, 19, 'ìnfoCorta', 'infoLarga18', 'linkImagen1');
insert into users (id, courses_id, name, email, password ) values (20, 20, 'ìnfoCorta', 'infoLarga19', 'linkImagen1');
UNLOCK TABLES;