-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 23-03-2021 a las 21:21:28
-- Versión del servidor: 8.0.13-4
-- Versión de PHP: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `yvtyOvj7dL`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantas`
--

CREATE TABLE `plantas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `precio` int(50) NULL,
  `desbloqueado` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `efecto_del_nutriente` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `costo_soles` int(50) NOT NULL,
  `recarga_en_segundos` int(50) NOT NULL,
  `imagen` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `plantas`
--

INSERT INTO `plantas` (`id`, `nombre`, `descripcion`, `precio`,`desbloqueado`,
`efecto_del_nutriente`,`costo_soles`,`recarga_en_segundos`,`imagen`
) VALUES
(1,'Lanzaguisantes','Los Lanzaguisantes son tu primera línea de defensa. Disparan guisantes a los zombis que atacan.','null','al iniciar Player''s House - Día 1','se convierte en un guisante Gatling y dispara una andanada de 60 guisantes.',100,5,'https://static.wikia.nocookie.net/plantsvszombies/images/c/ca/Peashooter2.png/revision/latest/scale-to-width-down/96?cb=20130717035301'),
    (2,'Girasol','Los girasoles son esenciales para que produzcas más sol. ¡Intenta plantar tantos como puedas!','null','al vencer a Player''s House - Día 1','Produce 150 soles',50,5,'https://static.wikia.nocookie.net/plantsvszombies/images/d/de/Sunflower2.png/revision/latest/scale-to-width-down/96?cb=20130717013524'),
    (3,'Nuez','Las nueces de pared tienen cáscaras duras que puedes usar para proteger otras plantas.','null','al vencer a Player''s House - Día 2','le otorga una armadura dura que lo protege por 8000 DPS.',50,20,'https://static.wikia.nocookie.net/plantsvszombies/images/1/17/Wall-nut2.png/revision/latest?cb=20160602233713'),
    (4,'Papapum','Las papapums explotan al contacto, pero tardan un tiempo en armarse. Plántalos antes que los zombis.','null','al vencer a Player''s House - Día 3','se arma instantáneamente y coloca dos clones armados en casillas aleatorias.',25,20,'https://static.wikia.nocookie.net/plantsvszombies/images/a/a0/Potato_Mine2.png/revision/latest/scale-to-width-down/96?cb=20130717013506'),
    (5,'Coltapulta','Las coltapultas arrojan repollos al enemigo.','null','al vencer a Player''s House - Día 4','lanza coles grandes a cada zombi en pantalla.',100,5,'https://static.wikia.nocookie.net/plantsvszombies/images/7/76/Cabbage-pult2.png/revision/latest/scale-to-width-down/96?cb=20190123002212'),
    (6,'Bumerang','¡Los Bumerangs pueden alcanzar hasta tres objetivos en su carril, dos veces!','null','al vencer al Antiguo Egipto - Día 2','dispara 16 bumeranes hacia arriba, abajo, izquierda y derecha.',175,5,'https://static.wikia.nocookie.net/plantsvszombies/images/5/57/Bloomerang2.png/revision/latest/scale-to-width-down/96?cb=20141116194340'),
    (7,'Lechuga iceberg','Las lechugas iceberg congelan a un zombi cuando las pisa.','null','al vencer al Antiguo Egipto - Día 5','congela a todos los zombis en pantalla como un hongo de hielo.',0,20,'https://static.wikia.nocookie.net/plantsvszombies/images/d/d0/Iceberg_Lettuce2.png/revision/latest/scale-to-width-down/96?cb=20160818034437'),
    (8,'Comepiedras','Los Comepiedras consumen tumbas en las que están plantadas.','null','al vencer al Antiguo Egipto - Día 9','null',0,10,'https://static.wikia.nocookie.net/plantsvszombies/images/1/1d/Grave_Buster2.png/revision/latest/scale-to-width-down/96?cb=20160831011130'),
    (9,'Bonk Choi','Bonk Choi golpea rápidamente a los enemigos cercanos que están delante o detrás de ellos.','null','al vencer al Antiguo Egipto - Día 13','golpea rápidamente a los zombis en un área de 3x3 a su alrededor.',150,5,'https://static.wikia.nocookie.net/plantsvszombies/images/7/75/Bonk_Choy2.png/revision/latest/scale-to-width-down/96?cb=20141117200914'),
    (10,'Repetidora','Los repetidoras disparan dos guisantes a la vez.','null','al vencer al Antiguo Egipto - Día 19','dispara una andanada de 90 guisantes y luego escupe un guisante grande por valor de 600 de daño, por un total de 2400 daños.',200,5,'https://static.wikia.nocookie.net/plantsvszombies/images/9/9f/Repeater2.png/revision/latest/scale-to-width-down/96?cb=20160902063403'),
    (11,'Birasol','Los Birasoles dan el doble de sol que un girasol normal.','null','al vencer al Antiguo Egipto - Día 24','Produce 250 soles',125,10,'https://static.wikia.nocookie.net/plantsvszombies/images/1/1e/Twin_Sunflower2.png/revision/latest/scale-to-width-down/96?cb=20160831071055'),
    (12,'Lanzamaíz','Las lanzamaíces arrojan granos de maíz y mantequilla paralizante a los zombis.','null','al vencer a Mares Piratas - Día 1','lanza mantequilla a cada zombi en pantalla.',100,5,'https://static.wikia.nocookie.net/plantsvszombies/images/b/b4/Kernel-pult2.png/revision/latest/scale-to-width-down/96?cb=20141116194713'),
    (13,'Boca de dragón','Los Boca de dragones exhalan fuego que daña a los zombis en 6 casillas adyacentes.','null','al vencer a Mares Piratas - Día 3','lanza fuego en un área de 3x3 frente a él, lo que inflige 1800 de daño.',150,5,'https://static.wikia.nocookie.net/plantsvszombies/images/f/f8/Snapdragon2.png/revision/latest/scale-to-width-down/96?cb=20160830234149'),
    (14,'Pinchohierba','Las Pinchohierbas destruyen los objetos rodantes y dañan a los zombis que los pisan.','null','al vencer a Mares Piratas - Día 6','crea un aluvión de picos a lo largo del camino que arrastra a los zombis cerca de él mientras los daña.',100,5,'https://static.wikia.nocookie.net/plantsvszombies/images/0/07/Spikeweed2.png/revision/latest/scale-to-width-down/96?cb=20141116195054'),
    (15,'Frijuelle','Frijuelle recupera a los zombis que se acercan demasiado. Los hará rebotar en el agua si está cerca.','null','al vencer a Mares Piratas - Día 9','Rebota a todos los zombis 1 casilla.',50,20,'https://static.wikia.nocookie.net/plantsvszombies/images/5/5a/Spring_Bean2.png/revision/latest/scale-to-width-down/96?cb=20210302120107'),
    (16,'Cococañon','Los Cococañones disparan por un solo carril, provocando una explosión media al impactar.','null','al vencer a Mares Piratas - Día 11','lanza un gran coco que empuja a los zombies hacia el extremo derecho, haciéndolos explotar.',400,5,'https://static.wikia.nocookie.net/plantsvszombies/images/2/21/Coconut_Cannon2.png/revision/latest/scale-to-width-down/96?cb=20141116195133'),
    (17,'Tripitidora','Tripitidoras disparan guisantes en tres carriles.','null','al vencer a Mares Piratas - Día 14','dispara una andanada amplia de guisantes frente a ellos en forma de hoja. Cada cabeza dispara 60 guisantes.',300,5,'https://static.wikia.nocookie.net/plantsvszombies/images/e/ed/Threepeater2.png/revision/latest/scale-to-width-down/96?cb=20141116195503'),
    (18,'Pinchoroca','Las Pinchorocas destruyen a varios zombis rodantes y dañan a los zombies que caminan sobre ellos.','null','al vencer a Mares Piratas - Día 18','el mismo que el de la hierba espinosa, pero inflige más daño.',250,5,'https://static.wikia.nocookie.net/plantsvszombies/images/0/00/Spikerock2.png/revision/latest/scale-to-width-down/96?cb=20141116195435'),
    (19,'Petacereza','Las Petacerezas explotan cuando se colocan, haciendo explotar a los zombis en un área de 3x3.','null','al vencer a Mares Piratas - Día 24','null',150,35,'https://static.wikia.nocookie.net/plantsvszombies/images/9/93/Cherry_Bomb2.png/revision/latest/scale-to-width-down/96?cb=20190624015619'),
    (20,'Bipitidora','Bipitidora dispara guisantes hacia adelante y hacia atrás.','null','al vencer al Salvaje Oeste - Día 1','dispara un aluvión de 60 guisantes hacia adelante y un aluvión de 90 guisantes hacia atrás más 1 guisante grande al mismo tiempo.',125,5,'https://static.wikia.nocookie.net/plantsvszombies/images/4/46/Split_Pea2.png/revision/latest/scale-to-width-down/96?cb=20160831004326'),
    (21,'Frijol','Frijol produce un ataque paralizante de malestar gastrointestinal.','null','al vencer al Salvaje Oeste - Día 4','crea una ráfaga de gas aturdidor y luego crea 3 clones de sí mismo.',50,20,'https://static.wikia.nocookie.net/plantsvszombies/images/a/a1/Chili_Bean2.png/revision/latest/scale-to-width-down/96?cb=20160827004139'),
    (22,'Vaina','Las vainas de guisantes se pueden plantar en el mismo espacio por hasta 5 veces la destrucción.','null','al vencer al Salvaje Oeste - Día 6','dispara 5 guisantes grandes e inflige 400 de daño por guisante.',125,5,'https://static.wikia.nocookie.net/plantsvszombies/images/1/13/Pea_Pod2.png/revision/latest/scale-to-width-down/96?cb=20141116195736'),
    (23,'Junco eléctrico','Junco eléctrico dispara rayos al zombi más cercano hasta un carril de distancia. El rayo se arqueará y golpeará a otros zombis.','null','al vencer al Salvaje Oeste - Día 9','crea una nube que apunta a zombis aleatorios hasta que se desvanece.',125,5,'https://static.wikia.nocookie.net/plantsvszombies/images/a/a1/Lightning_Reed2.png/revision/latest/scale-to-width-down/96?cb=20181230181008'),
    (24,'Melon-pulta','Melon-pulta hace mucho daño a un grupo de zombies.','null','al vencer al Salvaje Oeste - Día 11','lanza melones gigantes a todos los zombies que infligen 2,5 veces el daño de un melón normal.',325,5,'https://static.wikia.nocookie.net/plantsvszombies/images/f/fe/Melon-pult2.png/revision/latest/scale-to-width-down/96?cb=20141116195851'),
    (25,'Cascara-rabia','Las nueces cascara-rabias plantas resistentes que bloquean a los zombis que vuelan bajo.','null','al vencer al Salvaje Oeste - Día 18','le otorga una armadura que resiste 12000 DPS.',125,20,'https://static.wikia.nocookie.net/plantsvszombies/images/a/ab/Tall-nut2.png/revision/latest/scale-to-width-down/96?cb=20141116195809'),
    (26,'Melonpultas congeladas','Las melonpultas congeladas hacen mucho daño y ralentizan a los grupos de zombis.','null','al vencer al Salvaje Oeste - Día 24','lanza melones congelados gigantes a todos los zombis que infligen 2,5 veces el daño de un melón congelado normal.',500,5,'https://static.wikia.nocookie.net/plantsvszombies/images/2/24/Winter_Melon2.png/revision/latest/scale-to-width-down/96?cb=20141116195910');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `plantas`
--
ALTER TABLE `plantas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `plantas`
--
ALTER TABLE `plantas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
