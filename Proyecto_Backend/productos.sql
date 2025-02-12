-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-12-2024 a las 04:14:29
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_backend`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `nombre_producto` varchar(150) NOT NULL,
  `precio_producto` float NOT NULL,
  `stock_producto` int(20) NOT NULL,
  `imagen_producto` longtext DEFAULT NULL,
  `id_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`nombre_producto`, `precio_producto`, `stock_producto`, `imagen_producto`, `id_producto`) VALUES
('Pan de jamón', 15000, 80, '', 1),
('Cachito Jamón y Queso', 1800, 40, 'data:image/jpg;base64,/9j/4AAQSkZJRgABAQEASABIAAD/4QCCRXhpZgAATU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAABJADAAIAAAAUAAAAUJAEAAIAAAAUAAAAZJKRAAIAAAADMzMAAJKSAAIAAAADMzMAAAAAAAAyMDIyOjExOjE2IDExOjMyOjE1ADIwMjI6MTE6MTYgMTE6MzI6MTUAAAD/4QGgaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49J++7vycgaWQ9J1c1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCc/Pg0KPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyI+PHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj48cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0idXVpZDpmYWY1YmRkNS1iYTNkLTExZGEtYWQzMS1kMzNkNzUxODJmMWIiIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyI+PHhtcDpDcmVhdGVEYXRlPjIwMjItMTEtMTZUMTE6MzI6MTUuMzMwPC94bXA6Q3JlYXRlRGF0ZT48L3JkZjpEZXNjcmlwdGlvbj48L3JkZjpSREY+PC94OnhtcG1ldGE+DQo8P3hwYWNrZXQgZW5kPSd3Jz8+/9sAQwAGBAUGBQQGBgUGBwcGCAoQCgoJCQoUDg8MEBcUGBgXFBYWGh0lHxobIxwWFiAsICMmJykqKRkfLTAtKDAlKCko/9sAQwEHBwcKCAoTCgoTKBoWGigoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgo/8AAEQgAQwAyAwEiAAIRAQMRAf/EAB8AAAEFAQEBAQEBAAAAAAAAAAABAgMEBQYHCAkKC//EALUQAAIBAwMCBAMFBQQEAAABfQECAwAEEQUSITFBBhNRYQcicRQygZGhCCNCscEVUtHwJDNicoIJChYXGBkaJSYnKCkqNDU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6g4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2drh4uPk5ebn6Onq8fLz9PX29/j5+v/EAB8BAAMBAQEBAQEBAQEAAAAAAAABAgMEBQYHCAkKC//EALURAAIBAgQEAwQHBQQEAAECdwABAgMRBAUhMQYSQVEHYXETIjKBCBRCkaGxwQkjM1LwFWJy0QoWJDThJfEXGBkaJicoKSo1Njc4OTpDREVGR0hJSlNUVVZXWFlaY2RlZmdoaWpzdHV2d3h5eoKDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uLj5OXm5+jp6vLz9PX29/j5+v/aAAwDAQACEQMRAD8A01mVhxSPgqa5ObxXp9u+FaWVumEjP9az7zxtIWK2tnjjhnJP04H+eK5rnadtdENasT1wDVS3AFeW6n4v1SQFRcABTwIhgfT3rX0TxmRGDqCAqBywOCPw/wD1UmmNSR6bCoOK0IYx9a53RdZsr9V+zXCkkcIxw35V0MD5FCRQ/YPSin596KYHzfG83JCbSBjO3P6fTFa+j6Vcatcunnssajcw3cniora2k3MdpZAM7uML+lXNBtDqeu6fpdvM8P2qdIPMzgjccf16VzYitaLjF6m+Gw7m+dr3SzH4f0NWaG4vQ1wBwFBbb9SAanbwHFdWrT2UyybWwWR+ntxX0JZ6BcaBZ/2f4D0ezLRfLc6leEYZu4zwSfXHA6Y9OW+J2iajqsGn2lu9mPEU04j82zbYrx4O7d3wD/8AW61wzp1ormVR/M64VKUnZxVvkeBXOn3uj3jQPMRuViJCevHP1I/rWzoHjK9062Cy3TylRlY5VLhh6A9fQ16Zp/w98PXbLZapf65qV2vW8it3W2jY/wB1ypHbqSRXBeO/BV14YvBFhri1YlY7nA4PUZ7huh9OPbA9OjKUopT3PPrxUZtw2NVviZboxVrIlgcErIxH4fLRXCiO5jAQwOSvGcjn9aK0sjK7NGwSZF2RSFcKZGVFOG/x6VTudRFtd21zYstveROJFcdmByCK9E+FdhpeoySyzbZNShBKp5m5fLJPIH1z+Y+tc54h8PtceLNSluQgjacrGmcEqPw4rz61FU5e0m9Gz18LiFUiqUVsi5q/xI8aaxarFLqxtrT+IWSCMH33DJ/Iis3wd4qvvDPiVtTJF8rL5b+fIxLjnkHPHX36VkyadfWTEpBIsDv5YDD7x64Hr07VdttPvZmillhLIxwBt4+lYynJu+51xoUnHlSPR7f4v+Jbm+TyY7SK1dwGj2MW2+gOcDj0Fd14i05dZ0W8t5x80sZ2tjO1gODXHeF/BQNxazFf3fDMp/hru/FV2NH8P3l0qhphGVhQkDfIRhRz7/yrtwM5VE5S2PKzGFKnKMaXzPmbySeRPCwPQtb8n60VcjQ+Wu2MqMDA+Q4/MUV1HEW7SGXQbuyntTKs0cqkGMgkk59846AjvXo2j65oWp3ySeJNPS21APtNwpJiY4+XcAflYjHGD9a83Bga5tY5Zmk3L5mAm4Ox4ye2R6Vet7GT7cqNHEbEfPIzJudiFz09z19c1LtLSWoRbjrF2PZtf8P6d4p0ZrazuLZ3XDwtC4PlsBxkDt7elZPh3wnfQCM6uIbR4jgvNIu0+4GeT/OvNzfFrcyWzywSOoCINp8pT0PTg/Ke/G7rVBL+1m1iG2tHZZ2fZ5jLjGFAY5I6kjr/AI1lUoQqyUnpY2pYmpRi4xe57tqPjDw54fsljhvEvp+ix2x3l2zjlhwOnvjHSvK/EniDUPEU9w91DKIz8kEKkqsI6E59ehLcnn2ArD0+1gsdNlllSOe8nmCxoVwI25wAR0zjqKdZXEtysaxM8siKRO23Gxu6knsSM4z2GK20UbR2Mbty5pblD+2mtf3H9ml/K/d7vJJzjjORwaKvWyxzW8UjWUDF0DFlj4OR1HFFLTsPXuOsVAuCAAFVmRVA4ABxgDp2q1fxrFp4kjG2RYnlDA87uRn8jRRS+0T0IrdibO5GeHKxtjupAyKw7CWQWcr723W0gjhJOdikjgf40UVRJoafGsnhzVLxxm685B5ncbn5x6ZyfzNWRbRSvMGXh4E3bSVz37e9FFEhxMnzHj+RHZUX5QAegFFFFUI//9k=', 14),
('Quesadillas', 1300, 30, 'data:image/jpg;base64,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', 15),
('Piñita Docena', 3000, 10, 'data:image/jpg;base64,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', 16);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
