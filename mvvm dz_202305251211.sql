--
-- Скрипт сгенерирован Devart dbForge Studio 2020 for MySQL, Версия 9.0.391.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 25.05.2023 12:11:29
-- Версия сервера: 8.0.31
-- Версия клиента: 4.1
--

-- 
-- Отключение внешних ключей
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Установить режим SQL (SQL mode)
-- 
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 
-- Установка кодировки, с использованием которой клиент будет посылать запросы на сервер
--
SET NAMES 'utf8mb4';

--
-- Установка базы данных по умолчанию
--
USE `mvvm dz`;

--
-- Удалить таблицу `tbl_product`
--
DROP TABLE IF EXISTS tbl_product;

--
-- Установка базы данных по умолчанию
--
USE `mvvm dz`;

--
-- Создать таблицу `tbl_product`
--
CREATE TABLE tbl_product (
  id int NOT NULL AUTO_INCREMENT,
  Name varchar(255) DEFAULT NULL,
  Category varchar(255) DEFAULT NULL,
  Manufacturer varchar(255) DEFAULT NULL,
  `Price per piece` decimal(19, 2) DEFAULT NULL,
  discount varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 21,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

-- 
-- Вывод данных для таблицы tbl_product
--
INSERT INTO tbl_product VALUES
(1, ' Книга "Гарри Поттер и философский камень"', ' литература', ' Блумсбери', 500.00, '0,1'),
(2, ' Смартфон iPhone 12 Pro', ' техника', ' Apple', 99990.00, '0,05'),
(3, ' Ноутбук IdeaPad 3', ' техника', ' Lenovo', 44990.00, '0,15'),
(4, ' Кроссовки Gel-Kayano 27', ' спортивные товары', ' ASICS', 12990.00, '0,2'),
(5, ' Шоколадная конфета Ferrero Rocher', ' продукты питания', ' Ferrero', 150.00, ' без скидки'),
(6, ' Рюкзак Back To School', ' товары для школы', ' Under Armor', 2990.00, '0,1'),
(7, ' Кофе в зернах "Arabica"', ' продукты питания', ' Lavazza', 700.00, ' без скидки'),
(8, ' Стиральная машина WM 1080', ' бытовая техника', ' LG', 29990.00, '0,07'),
(9, ' Шампунь "Elseve" для волос', ' товары для здоровья', ' L''Oreal', 300.00, '0,08'),
(10, ' Ноутбук MacBook Air', ' техника', ' Apple', 89990.00, '0,05'),
(11, ' Парфюм "La Vie Est Belle"', ' товары для красоты', ' Lancome', 7900.00, '0,12'),
(12, ' Керамическая сковорода "Titanium"', ' товары для кухни', ' Tefal', 1590.00, '0,2'),
(13, ' Набор фломастеров "Capitan"', ' товары для творчества', ' Koh-I-Noor', 490.00, ' без скидки'),
(14, ' Чай "Голден Сенча"', ' продукты питания', ' Lipton', 250.00, '0,15'),
(15, ' Монитор UltraSharp 27', ' компьютеры и комплектующие', ' Dell', 33990.00, '0,1'),
(16, ' Блендер UltraBlend', ' кухонная техника', ' Philips', 5990.00, ' без скидки'),
(17, ' Маршрутизатор RT-AC86U', ' компьютеры и комплектующие', ' ASUS', 16490.00, '0,05'),
(18, ' Колонки Xtreme 3', ' аудиотехника', ' JBL', 14990.00, '0,1'),
(19, ' Гель для душа "Cool Water"', ' товары для красоты', ' Davidoff', 590.00, ' без скидки'),
(20, ' Лампа настольная "Ella"', ' товары для дома', ' IKEA', 1590.00, '0,15');

-- 
-- Восстановить предыдущий режим SQL (SQL mode)
--
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Включение внешних ключей
-- 
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;