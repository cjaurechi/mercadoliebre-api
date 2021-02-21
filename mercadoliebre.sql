-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-07-2020 a las 19:42:45
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mercadoliebre`
--
CREATE DATABASE IF NOT EXISTS `mercadoliebre` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mercadoliebre`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT current_timestamp(),
  `updatedAt` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `brands`
--

INSERT INTO `brands` (`id`, `name`, `phone`, `address`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'Skinte', '445-603-2869', '51 Menomonie Avenue', '2020-01-18 05:54:06', '2020-06-10 23:01:48', NULL),
(2, 'Trunyx', '966-890-7638', '1524 Cardinal Road', '2019-08-30 03:57:56', '2020-06-10 23:01:51', NULL),
(3, 'Yata', '372-539-6368', '83 Meadow Vale Drive', '2019-08-12 13:06:35', '2020-06-10 23:01:56', NULL),
(4, 'Buzzshare', '217-141-1235', '4135 Fallview Terrace', '2020-02-24 08:04:45', '2020-06-10 23:01:59', NULL),
(5, 'Eamia', '535-553-4485', '92 Dexter Center', '2019-07-03 13:29:10', '2020-06-10 23:02:04', NULL),
(6, 'Demimbu', '265-814-4764', '06 Eliot Plaza', '2019-09-05 12:13:04', '2020-06-10 23:02:06', NULL),
(7, 'Aimbu', '797-184-9282', '68677 Dawn Lane', '2020-06-07 15:34:21', '2020-06-10 23:02:08', NULL),
(8, 'Innojam', '530-937-6734', '24 Division Avenue', '2019-12-26 22:07:44', '2020-06-10 23:02:10', NULL),
(9, 'Lajo', '252-474-9929', '70724 Maple Wood Parkway', '2020-01-28 21:25:15', '2020-06-10 23:02:13', NULL),
(10, 'Flipbug', '860-869-5989', '8 Schiller Pass', '2019-12-16 17:47:13', '2020-06-10 23:02:16', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `orderNumber` int(11) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `userId` int(10) UNSIGNED NOT NULL,
  `createdAt` datetime DEFAULT current_timestamp(),
  `updatedAt` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carts`
--

INSERT INTO `carts` (`id`, `orderNumber`, `total`, `userId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(30, 1000, '6454', 101, '2020-06-18 00:47:14', '2020-06-18 00:47:14', NULL),
(31, 1001, '19261', 101, '2020-06-18 04:08:40', '2020-06-18 04:08:40', NULL),
(32, 1002, '21120', 101, '2020-06-18 15:20:03', '2020-06-18 15:20:03', NULL),
(33, 1003, '32268', 101, '2020-06-18 15:21:08', '2020-06-18 15:21:08', NULL),
(34, 1004, '32268', 101, '2020-06-24 22:27:02', '2020-06-24 22:27:02', NULL),
(35, 1005, '15949', 101, '2020-06-24 22:32:33', '2020-06-24 22:32:33', NULL),
(36, 1006, '0', 101, '2020-07-13 21:59:52', '2020-07-13 21:59:52', NULL),
(37, 1007, '6454', 101, '2020-07-13 23:19:48', '2020-07-13 23:19:48', NULL),
(38, 1008, '95826', 101, '2020-07-13 23:34:59', '2020-07-13 23:34:59', NULL),
(39, 1009, '29791', 101, '2020-07-15 17:30:28', '2020-07-15 17:30:28', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `createdAt` datetime DEFAULT current_timestamp(),
  `updatedAt` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'Outdoors', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\r\n\r\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\r\n\r\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\r\n\r\nDuis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', '2019-08-23 18:10:16', '2020-06-10 23:02:26', NULL),
(2, 'Computers', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\r\n\r\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\r\n\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2019-06-13 13:31:06', '2020-06-10 23:02:29', NULL),
(3, 'Industrial', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\r\n\r\nIn sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\r\n\r\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\r\n\r\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\r\n\r\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', '2020-02-26 22:04:09', '2020-06-10 23:02:31', NULL),
(4, 'Home', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\r\n\r\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\r\n\r\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', '2019-06-13 13:40:27', '2020-06-10 23:02:33', NULL),
(5, 'Tools', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\r\n\r\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\r\n\r\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', '2020-02-14 07:50:37', '2020-06-10 23:02:34', NULL),
(6, 'Garden', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\r\n\r\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\r\n\r\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\r\n\r\nFusce posuere felis sed l', '2019-10-06 05:43:13', '2020-06-10 23:02:36', NULL),
(7, 'Computers', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\r\n\r\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\r\n\r\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\r\n\r\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh ', '2019-10-31 02:25:50', '2020-06-10 23:02:37', NULL),
(8, 'Toys', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.\r\n\r\nVestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.\r\n\r\nDuis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.\r\n\r\nMauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, mass', '2019-09-03 09:23:55', '2020-06-10 23:02:38', NULL),
(9, 'Music', 'Fusce consequat. Nulla nisl. Nunc nisl.\r\n\r\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\r\n\r\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\r\n\r\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '2019-08-13 12:33:10', '2020-06-10 23:02:40', NULL),
(10, 'Shoes', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\r\n\r\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\r\n\r\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\r\n\r\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\r\n\r\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. V', '2020-05-16 05:54:51', '2020-06-10 23:02:44', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL,
  `salePrice` decimal(10,0) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `subTotal` int(255) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 1,
  `productId` int(10) UNSIGNED NOT NULL,
  `userId` int(10) UNSIGNED NOT NULL,
  `sellerId` int(11) NOT NULL,
  `cartId` int(10) UNSIGNED DEFAULT NULL,
  `createdAt` datetime DEFAULT current_timestamp(),
  `updatedAt` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `items`
--

INSERT INTO `items` (`id`, `salePrice`, `quantity`, `subTotal`, `state`, `productId`, `userId`, `sellerId`, `cartId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(94, '6454', 1, 6454, 0, 46, 101, 87, 30, '2020-06-18 00:47:13', '2020-06-18 00:47:14', NULL),
(95, '9495', 1, 9495, 0, 18, 101, 19, 31, '2020-06-18 04:08:21', '2020-06-18 04:08:40', NULL),
(96, '9766', 1, 9766, 0, 7, 101, 41, 31, '2020-06-18 04:08:38', '2020-06-18 04:08:40', NULL),
(97, '6454', 1, 6454, 0, 46, 101, 87, 32, '2020-06-18 14:56:53', '2020-06-18 15:20:03', NULL),
(98, '7333', 2, 14666, 0, 9, 101, 26, 32, '2020-06-18 14:57:11', '2020-06-18 15:20:03', NULL),
(99, '6454', 5, 32268, 0, 46, 101, 87, 33, '2020-06-18 15:21:06', '2020-06-18 15:21:08', NULL),
(100, '6454', 2, 12907, 0, 46, 101, 87, 34, '2020-06-19 12:54:26', '2020-06-24 22:27:02', '2020-06-19 12:56:19'),
(101, '3314', 1, 3314, 0, 2, 101, 63, 34, '2020-06-19 12:54:33', '2020-06-24 22:27:02', '2020-06-19 12:56:19'),
(107, '6454', 5, 32268, 0, 46, 101, 87, 34, '2020-06-24 22:24:58', '2020-06-24 22:27:02', NULL),
(108, '6454', 1, 6454, 0, 46, 101, 87, 35, '2020-06-24 22:28:49', '2020-06-24 22:32:33', NULL),
(109, '9495', 1, 9495, 0, 18, 101, 19, 35, '2020-06-24 22:29:00', '2020-06-24 22:32:33', NULL),
(116, '6454', 1, 0, 0, 46, 101, 87, 36, '2020-07-13 21:59:12', '2020-07-13 21:59:52', NULL),
(117, '6454', 1, 6454, 0, 46, 101, 87, 37, '2020-07-13 23:19:46', '2020-07-13 23:19:48', NULL),
(119, '6454', 1, 6454, 0, 46, 101, 87, 38, '2020-07-13 23:34:46', '2020-07-13 23:34:59', NULL),
(120, '7448', 12, 89372, 0, 3, 101, 32, 38, '2020-07-13 23:34:53', '2020-07-13 23:34:59', NULL),
(122, '7448', 1, 7448, 0, 3, 101, 32, 39, '2020-07-15 17:30:15', '2020-07-15 17:30:28', NULL),
(123, '7448', 3, 22343, 0, 3, 101, 32, 39, '2020-07-15 17:30:24', '2020-07-15 17:30:28', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,0) UNSIGNED NOT NULL,
  `discount` int(10) UNSIGNED DEFAULT 0,
  `image` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `categoryId` int(10) UNSIGNED NOT NULL,
  `userId` int(10) UNSIGNED NOT NULL,
  `brandId` int(10) UNSIGNED NOT NULL,
  `createdAt` datetime DEFAULT current_timestamp(),
  `updatedAt` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `discount`, `image`, `description`, `categoryId`, `userId`, `brandId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'Cafetera Moulinex Dolce Gusto', '12000', 50, 'img-cafetera-moulinex.jpg', 'Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical al que nos tenía acostumbrados Dolce Gusto.En este post te contamos todo lo que necesitas saber sobre ella, desde sus características técnicas hasta la calidad de las cápsulas o price.', 1, 71, 3, '2021-02-21 11:28:09', NULL, NULL),
(2, 'Macbook Pro 2019', '99999', 3, 'img-macbook-pro-2019.jpg', 'Macbook Pro 2019 Mpxq2ll/a Intel Core i5 2.3 Ghz 8gb RAM 128gb SSD Pantalla 13.3\" Retina Apple Nueva Original. Importada de USA. Se entrega con la factura de compra para contar con la garantía del fabricante', 3, 63, 6, '2021-02-21 15:05:33', NULL, NULL),
(3, 'Teléfono móvil Samsung Galaxy S10', '70500', 15, 'img-samsung-galaxy-s10.jpg', 'Experiencia visual excepcional. Mirá tus series y películas favoritas con la mejor definición.Tendrás colores brillantes y detalles precisos en todos tus contenidos.Disfrutá aún más del mejor entretenimiento gracias a su vasta pantalla y ángulos de visión amplios.', 6, 32, 8, '2021-02-21 01:29:30', NULL, NULL),
(4, 'Smart TV Samsung 4K 50', '34990', 0, 'img-tv-samsung-smart.jpg', 'Con el Smart TV Samsung UN50MU6100, viví una nueva experiencia visual con la resolución 4K, que te presentará imágenes con gran detalle y de alta calidad. Ahora todo lo que veas cobrará vida con brillo y colores más reales. Gracias a su tamaño de 50\", podrás transformar tu espacio en una sala de cine y transportarte a donde quieras.', 3, 23, 3, '2021-02-21 15:53:59', NULL, NULL),
(5, 'Heladera no frost Whirlpool WRM45A', '47900', 10, 'img-heladera-whirpool.jpg', 'Disfrutá de la frescura de tus alimentos y almacenalos de manera práctica y cómoda en tu heladera Whirlpool, la protagonista de tu cocina. Su sistema no frost evita la generación de escarcha y te permitirá conservar el sabor y las propiedades nutritivas de los productos.A su vez, su freezer cuenta con una capacidad de 86 litros, que facilitará la distribución y el orden de tus congelados para que no te preocupes por la falta de espacio.', 8, 88, 8, '2020-02-29 15:45:37', NULL, NULL),
(6, 'Nikon Reflex D3500 - Kit', '53000', 20, 'img-camara-nikon.jpg', 'Incluye la cámara D3500, el objetivo zoom AF-P DX NIKKOR 18-55mm y el superteleobjetivo zoom compacto AF-P DX NIKKOR 70-300mm. Ambos objetivos enfocan de forma rápida y silenciosa, lo que resulta ideal para grabar metraje de vídeo sin que se escuche apenas el ruido del accionamiento.', 8, 89, 3, '2020-06-06 22:22:48', '2020-06-11 15:21:06', '2020-06-11 15:21:06'),
(7, 'Aire Acondicionado 3200w Frio / Calor', '20999', 12, 'img-aire-acondicionado.jpg', 'AIRE SPLIT 3200W TACA-3200WCHSA/KC FC TCL. Capacidad frio 3200 Watts. Capacidad calor 3300 Watts. Potencia Electrica(W)frio 996. Potencia Electrica(W)calor 1028. Eficiencia energética calor C. Eficiencia energética frio A. Frigorias 2750 UNIDAD INTERIOR. Peso Bruto 10kg. Peso Neto 7 kg', 8, 41, 2, '2020-05-20 15:22:50', NULL, NULL),
(8, 'Notebook Lenovo I3 Intel 8gb Ram', '36700', 5, 'img-laptop-lenovo.jpg', 'PROCESADOR / CHIPSET. CPU: Intel Core i3(8a generación) 8130U / 2.2 GHz. Velocidad turbo máxima: 3, 4 GHz. Numero de núcleos: Doble núcleo. Cache: 4 MB. Arquitectura de 64 bit: ss. MEMORIA CACHÉ. Tamaño instalada: 4 MB. ALMACENAMIENTO. Interfaz Serial ATA - 600', 6, 16, 6, '2019-07-29 03:34:40', NULL, NULL),
(9, 'Apple iPhone 11 Pro Dual SIM 256 GB', '148000', 2, 'img-iphone-11.jpg', '¡El nuevo smartphone que lo tiene todo! Con este lanzamiento, Apple ha superado todos sus récords. Su diseño se destaca por sus líneas finas y distinguidas a partir de una sola hoja de vidrio resistente, combinada con aluminio de excelente calidad.', 6, 26, 1, '2019-08-12 02:44:49', NULL, NULL),
(10, 'Teclado Apple Magic Inalámbrico', '11399', 0, 'img-apple-magic-keyboard.jpg', 'El teclado mágico combina un diseño elegante con una batería recargable incorporada y funciones clave mejoradas. Con un mecanismo de tijera estable debajo de cada tecla, así como un recorrido de teclas optimizado y un perfil bajo, el Teclado Mágico ofrece una experiencia de escritura notablemente cómoda y precisa.', 6, 36, 1, '2020-03-30 08:17:03', NULL, NULL),
(11, 'Mouse Inalámbrico Logitech M280', '1200', 10, 'img-mouse-logitech.jpg', 'Uso más cómodo para la mano derecha gracias a la forma contorneada con recubrimiento de goma blanda. Duración de las pilas hasta 18 meses, gracias al diseño para ahorrar energía.El M280 entra automáticamente en estado de suspensión cuando no se está usando.', 2, 29, 7, '2019-07-19 16:18:22', NULL, NULL),
(12, 'Parlante Inalámbrico Bose Soundtouch 10', '29990', 12, 'img-parlante-bose.jpg', 'Parlante Inalámbrico Bose Soundtouch 10. SoundTouch®.La manera más sencilla de reproducir música en todo su hogar de forma inalámbrica. Características. » Marca: Bose. » Modelo: SoundTouch. » Color: Negro', 7, 53, 2, '2020-05-25 03:08:47', NULL, NULL),
(13, 'Home Theatre Sony Bdv-e4100', '32990', 0, 'img-home-theater-sony.jpg', 'El sonido Surround de 5.1 canales y 1000 W proporciona un audio de verdadero impacto en los efectos especiales de películas y efectos de sonido de música y deportes. Con la tecnología Near Field Communication(NFC) podés disfrutar de Sonido One- Touch para reproducir música de forma instantánea', 5, 50, 10, '2019-08-15 15:49:12', NULL, NULL),
(14, 'Sony S6700 Reproductor De Blu-ray', '10999', 5, 'img-sony-blueray.jpg', 'Disfruta de tus películas favoritas con hasta cuatro veces más detalles que Full HD, gracias a la conversión de señales 4K. Cuando se conecta a un televisor compatible,un procesador de video avanzado convierte el video estándar en una señal cercana a la resolución 4K (3840 x 2160). Con ocho millones de píxeles, obtendrás imágenes más nítidas y detalladas, y la mayor calidad de la image te permite sentarte más cerca de la pantalla para que te sientas como en el cine.', 8, 39, 1, '2020-01-20 18:38:47', NULL, NULL),
(15, 'Bicicleta Mountain Bike Fierce Rodado 29', '15979', 12, 'img-bicicleta-fierce.jpg', 'Bicicleta Mountain Bike Fierce Rodado 29 21 velocidades. Tipo: Mountain Bike. Rodado: 29. Material Cuadro: Aluminio. Talle: 18. Suspensión: Delantera. Velocidades: 21 - Shimano. Sistema de Freno: Disco Mecánico. Llantas: Doble pared.', 5, 7, 6, '2019-06-13 12:07:15', NULL, NULL),
(16, 'Sony Srs-xb12 Parlante Bluetooth Portátil', '4699', 0, 'img-parlante-sony.jpg', 'Deja que la música dance cobre vida con EXTRA BASS™ Anima el ambiente con EXTRA BASS™1. Un radiador pasivo trabaja con el parlante monoaural para potenciar los tonos bajos y mejorar los graves, a pesar del tamaño compacto.', 2, 39, 1, '2020-03-23 21:04:47', NULL, NULL),
(17, 'Nike cheta mal', '5520', 10, 'image-1592451529123.jpg', 'Tan piolas pero se rompen al toque', 10, 101, 1, '2020-06-18 03:38:49', '2020-07-13 23:44:51', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tokens`
--

CREATE TABLE `tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `token` varchar(255) NOT NULL,
  `userId` int(10) UNSIGNED NOT NULL,
  `createdAt` datetime DEFAULT current_timestamp(),
  `updatedAt` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tokens`
--

INSERT INTO `tokens` (`id`, `token`, `userId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(45, 'SRzdua9cVeatNPE34S4gy1qGx4DsKzo6cMQVoZqb6Hf1Oc1FpAgGdGT8WLjMkZLHrWRqZrfwNFhI7M2Y5+1V2w==', 101, '2020-07-13 23:29:57', '2020-07-13 23:29:57', NULL),
(46, 'ZZGTC5Ff16hC0wPQGF4ly6Nt+/LgnrgANR3zp/FKl4ZQePG9g4dAe5C+B68Zk74iVL78ruXgRNeLBF0YxOjXOQ==', 101, '2020-07-15 17:29:36', '2020-07-15 17:29:36', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT current_timestamp(),
  `updatedAt` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `admin`, `username`, `email`, `password`, `image`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 0, 'dsedgman0', 'oaskwith0@virginia.edu', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-09-29 02:07:06', NULL, NULL),
(2, 0, 'tstrank1', 'emcgebenay1@epa.gov', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-08-11 09:23:33', NULL, NULL),
(3, 0, 'jlorroway2', 'dmacconnal2@loc.gov', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2020-03-10 18:21:31', NULL, NULL),
(4, 0, 'pknevett3', 'dgaynsford3@toplist.cz', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-09-01 07:19:35', NULL, NULL),
(5, 0, 'chasted4', 'klannon4@home.pl', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2020-02-27 02:19:02', NULL, NULL),
(6, 0, 'sstringman5', 'jimlen5@ning.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-06-13 18:39:51', NULL, NULL),
(7, 0, 'fdowker6', 'ctowler6@alexa.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-09-26 17:03:49', NULL, NULL),
(8, 0, 'mkynman7', 'ddesseine7@drupal.org', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2020-05-07 17:14:36', NULL, NULL),
(9, 0, 'bballister8', 'jdow8@disqus.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-10-15 17:18:38', NULL, NULL),
(10, 0, 'lshawyer9', 'gseiffert9@ustream.tv', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-08-04 12:40:33', NULL, NULL),
(11, 0, 'haddinalla', 'lgornalla@examiner.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-07-28 06:38:45', NULL, NULL),
(12, 0, 'dandrzejb', 'ngauthorppb@prweb.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-06-30 09:36:13', NULL, NULL),
(13, 0, 'rsaytonc', 'gthornbarrowc@google.cn', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2020-03-14 22:43:12', NULL, NULL),
(14, 0, 'rbeniond', 'ebertholind@omniture.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2020-04-12 13:11:18', NULL, NULL),
(15, 0, 'ksorrelle', 'wspinoe@digg.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-11-23 20:56:30', NULL, NULL),
(16, 0, 'rpoyserf', 'gbattisonf@unesco.org', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-09-07 00:06:38', NULL, NULL),
(17, 0, 'gshearwoodg', 'nrobinettg@cloudflare.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-12-30 05:46:12', NULL, NULL),
(18, 0, 'ndearanh', 'hsutherleyh@comcast.net', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-07-28 14:07:44', NULL, NULL),
(19, 0, 'jziemensi', 'rbiddlestoni@cargocollective.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-10-01 20:48:38', NULL, NULL),
(20, 0, 'mschubuserj', 'alorkinsj@hhs.gov', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-11-07 22:43:07', NULL, NULL),
(21, 0, 'cgiabuzzik', 'lelsipk@mashable.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2020-02-12 18:19:08', NULL, NULL),
(22, 0, 'ayousefl', 'jmartellol@squidoo.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-06-27 13:17:37', NULL, NULL),
(23, 0, 'fflewittm', 'dminshullm@nba.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-08-24 22:14:28', NULL, NULL),
(24, 0, 'cquirkn', 'rhowardgatern@taobao.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-10-05 20:13:43', NULL, NULL),
(25, 0, 'agrossmano', 'loffenero@mashable.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2020-03-16 02:44:47', NULL, NULL),
(26, 0, 'sdenfordp', 'kparsonsonp@moonfruit.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-07-13 17:24:56', NULL, NULL),
(27, 0, 'mphibbq', 'khugliq@angelfire.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-10-31 07:03:07', NULL, NULL),
(28, 0, 'kmathevonr', 'ssavatierr@trellian.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2020-01-06 09:47:08', NULL, NULL),
(29, 0, 'cdrewsons', 'mblavers@cloudflare.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-08-26 10:33:25', NULL, NULL),
(30, 0, 'apredohlt', 'mrawlest@moonfruit.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-10-14 08:09:40', NULL, NULL),
(31, 0, 'awinksu', 'wdoogueu@si.edu', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2020-02-13 18:35:23', NULL, NULL),
(32, 0, 'gpowleslandv', 'ascarcev@ebay.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2020-01-16 21:49:32', NULL, NULL),
(33, 0, 'jmasseiw', 'stommenw@home.pl', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-12-04 19:54:28', NULL, NULL),
(34, 0, 'ewetherillx', 'awhippx@fda.gov', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2020-06-05 19:00:20', NULL, NULL),
(35, 0, 'jfessionsy', 'rvittey@deliciousdays.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-09-14 19:07:34', NULL, NULL),
(36, 0, 'ananglez', 'adeakinz@people.com.cn', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-10-29 17:07:04', NULL, NULL),
(37, 0, 'lhirtz10', 'smorfell10@flavors.me', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-12-14 19:57:31', NULL, NULL),
(38, 0, 'krobbie11', 'acafferty11@illinois.edu', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-11-01 02:11:13', NULL, NULL),
(39, 0, 'bburker12', 'hscrooby12@cbc.ca', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2020-04-16 09:58:19', NULL, NULL),
(40, 0, 'sborgnet13', 'igierok13@tamu.edu', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-08-22 11:56:24', NULL, NULL),
(41, 0, 'omursell14', 'agladtbach14@nhs.uk', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-07-06 08:36:22', NULL, NULL),
(42, 0, 'alancaster15', 'ljefferson15@ibm.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-08-11 15:39:30', NULL, NULL),
(43, 0, 'ggegg16', 'rstallan16@techcrunch.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2020-04-13 00:36:17', NULL, NULL),
(44, 0, 'gtempest17', 'btukesby17@virginia.edu', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-09-23 07:30:50', NULL, NULL),
(45, 0, 'ebohden18', 'afarlamb18@time.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-12-21 06:06:29', NULL, NULL),
(46, 0, 'rquare19', 'bwensley19@soup.io', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2020-06-01 12:48:53', NULL, NULL),
(47, 0, 'fhardisty1a', 'acongram1a@photobucket.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-08-26 13:27:33', NULL, NULL),
(48, 0, 'aarp1b', 'chestrop1b@admin.ch', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-10-08 15:33:12', NULL, NULL),
(49, 0, 'bshilliday1c', 'emicklewright1c@networksolutions.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2020-01-27 08:08:13', NULL, NULL),
(50, 0, 'wtheurer1d', 'adoog1d@utexas.edu', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-11-30 14:25:45', NULL, NULL),
(51, 0, 'malvy1e', 'mbarbera1e@vistaprint.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-12-06 19:01:37', NULL, NULL),
(52, 0, 'hkitt1f', 'cspurgeon1f@dagondesign.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2020-04-24 09:41:59', NULL, NULL),
(53, 0, 'gsidery1g', 'bthorndycraft1g@hhs.gov', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2020-01-17 11:58:11', NULL, NULL),
(54, 0, 'afairbourne1h', 'thuetson1h@joomla.org', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-10-20 16:28:36', NULL, NULL),
(55, 0, 'dwhitbread1i', 'cgregol1i@auda.org.au', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2020-04-19 09:44:02', NULL, NULL),
(56, 0, 'nstandbrook1j', 'rcisson1j@purevolume.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-06-27 18:00:33', NULL, NULL),
(57, 0, 'bvoaden1k', 'prelph1k@sun.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-06-28 11:39:05', NULL, NULL),
(58, 0, 'rkempston1l', 'gharmson1l@google.de', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-07-13 04:07:10', NULL, NULL),
(59, 0, 'gcheal1m', 'jaishford1m@timesonline.co.uk', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-06-19 20:41:21', NULL, NULL),
(60, 0, 'lstanney1n', 'eneasham1n@paypal.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-12-23 08:25:40', NULL, NULL),
(61, 0, 'pcocklin1o', 'hkeslake1o@zdnet.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-07-07 13:03:45', NULL, NULL),
(62, 0, 'gkaygill1p', 'fsalack1p@google.pl', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2020-01-31 10:49:19', NULL, NULL),
(63, 0, 'clednor1q', 'ypashan1q@techcrunch.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-06-25 18:21:25', NULL, NULL),
(64, 0, 'tcargen1r', 'ygaddesby1r@si.edu', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2020-03-07 04:21:30', NULL, NULL),
(65, 0, 'wgoudman1s', 'nbailiss1s@pen.io', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-09-07 15:18:42', NULL, NULL),
(66, 0, 'rlawille1t', 'pcicchitello1t@samsung.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-12-03 02:43:30', NULL, NULL),
(67, 0, 'mgrzegorzewski1u', 'tsandiford1u@howstuffworks.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-06-24 07:52:31', NULL, NULL),
(68, 0, 'dwybern1v', 'mkornas1v@bing.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2020-03-20 19:25:42', NULL, NULL),
(69, 0, 'mcluse1w', 'mmcgiveen1w@house.gov', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2020-05-12 19:18:45', NULL, NULL),
(70, 0, 'lsivior1x', 'gflanders1x@forbes.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2020-05-05 12:21:40', NULL, NULL),
(71, 0, 'lassiratti1y', 'eleopard1y@chronoengine.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2020-04-14 05:43:22', NULL, NULL),
(72, 0, 'pfydoe1z', 'alamborne1z@wunderground.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-09-17 11:20:44', NULL, NULL),
(73, 0, 'belcoate20', 'sbourthoumieux20@cbsnews.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2020-03-29 23:51:54', NULL, NULL),
(74, 0, 'dmaccague21', 'pmcindrew21@woothemes.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2020-03-27 07:16:39', NULL, NULL),
(75, 0, 'ibealton22', 'arodell22@vk.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2020-06-02 11:53:40', NULL, NULL),
(76, 0, 'gdurrell23', 'kvasiljevic23@goo.ne.jp', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-08-26 16:22:16', NULL, NULL),
(77, 0, 'mdwyr24', 'igonthier24@etsy.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-12-25 04:00:53', NULL, NULL),
(78, 0, 'gbordman25', 'vfyfe25@weebly.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-08-22 05:48:59', NULL, NULL),
(79, 0, 'ahatherley26', 'pboldt26@booking.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2020-05-08 09:20:57', NULL, NULL),
(80, 0, 'adairton27', 'lmatthesius27@homestead.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-09-16 12:38:55', NULL, NULL),
(81, 0, 'ctopliss28', 'ahartrick28@163.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-12-07 06:10:16', NULL, NULL),
(82, 0, 'mmcdiarmid29', 'kwatt29@com.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2020-02-26 11:51:34', NULL, NULL),
(83, 0, 'pwestcar2a', 'gmccaughey2a@zimbio.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-10-14 11:17:37', NULL, NULL),
(84, 0, 'cbusher2b', 'srawkesby2b@sitemeter.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-10-17 21:11:12', NULL, NULL),
(85, 0, 'bsealeaf2c', 'sfrissell2c@newyorker.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-06-28 14:07:01', NULL, NULL),
(86, 0, 'cforgie2d', 'joxtoby2d@nhs.uk', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2020-04-17 10:18:06', NULL, NULL),
(87, 0, 'rransome2e', 'cnevill2e@geocities.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-09-21 14:51:36', NULL, NULL),
(88, 0, 'gpethybridge2f', 'cquirke2f@desdev.cn', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-08-30 05:05:15', NULL, NULL),
(89, 0, 'gmobley2g', 'abendan2g@cpanel.net', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2020-06-02 09:03:43', NULL, NULL),
(90, 0, 'tdeason2h', 'mgalbreth2h@ed.gov', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2020-06-07 16:24:28', NULL, NULL),
(91, 0, 'rtoms2i', 'tmacdonald2i@so-net.ne.jp', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2020-01-06 11:00:30', NULL, NULL),
(92, 0, 'lratt2j', 'aenrdigo2j@surveymonkey.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-09-01 03:40:49', NULL, NULL),
(93, 0, 'nkubek2k', 'jgibard2k@naver.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2020-05-31 21:05:15', NULL, NULL),
(94, 0, 'fweond2l', 'rantcliffe2l@tamu.edu', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-07-20 05:36:22', NULL, NULL),
(95, 0, 'oranking2m', 'ldrabble2m@ca.gov', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-07-31 17:45:38', NULL, NULL),
(96, 0, 'mbeecker2n', 'rdodamead2n@shop-pro.jp', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-06-26 03:28:37', NULL, NULL),
(97, 0, 'rtyt2o', 'joldnall2o@angelfire.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2020-05-15 01:58:29', NULL, NULL),
(98, 0, 'zpitts2p', 'ctallet2p@opensource.org', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2020-02-26 15:54:19', NULL, NULL),
(99, 0, 'cebertz2q', 'grimes2q@nifty.com', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2020-06-02 14:30:56', NULL, NULL),
(100, 0, 'ghenriquet2r', 'rficken2r@youtu.be', '$2a$10$YJNmWHie1PjNZKcUNmlq.O.3pmOUidm8ww3EMjelgDRm3XaoAh1Ii', 'image-default.png', '2019-09-17 04:37:32', NULL, NULL),
(101, 0, 'gonza', 'gonzalo.zev@gmail.com', '$2a$10$n62ngHUaZTWZ1rbajzE0DuIJxBQLKcP8E9y.nomCfbAMKhothOmiO', 'image-1591841238342.png', '2020-06-11 02:07:18', '2020-06-11 02:07:18', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_ibfk_1` (`userId`),
  ADD KEY `productId` (`productId`),
  ADD KEY `cartId` (`cartId`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `brandId` (`brandId`),
  ADD KEY `categoryId` (`categoryId`);

--
-- Indices de la tabla `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=757;

--
-- AUTO_INCREMENT de la tabla `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT de la tabla `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `items_ibfk_2` FOREIGN KEY (`cartId`) REFERENCES `carts` (`id`);

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`brandId`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_ibfk_3` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`);

--
-- Filtros para la tabla `tokens`
--
ALTER TABLE `tokens`
  ADD CONSTRAINT `tokens_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
