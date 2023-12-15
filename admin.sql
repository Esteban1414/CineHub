-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-06-2023 a las 22:04:29
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `admin`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `imagen` varchar(1500) NOT NULL,
  `facebook` varchar(50) NOT NULL,
  `instagram` varchar(50) NOT NULL,
  `github` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `nombre`, `descripcion`, `imagen`, `facebook`, `instagram`, `github`) VALUES
(16, 'Fernando', 'Lider de Cine-Hub y Documentador', 'fer.webP', 'https://www.facebook.com/profile.php?id=1000048283', 'https://instagram.com/uribe4370?igshid=ZGUzMzM3NWJ', 'https://github.com/FernandoUribeT'),
(17, 'Marco', 'Cine-Hub supporter y Ciberseguridad', 'marco.webP', 'https://www.facebook.com/profile.php?id=1000926544', 'https://instagram.com/memeschemist?igshid=MzRlODBi', 'https://github.com/MarcoGG3'),
(18, 'Esteban', 'Cine-Hub supporter y Backend Developer', 'cali.webP', 'https://www.facebook.com/estebandaniel.mancillaloz', 'https://www.instagram.com/estebandmlx/', 'https://github.com/Esteban1414'),
(19, 'Ariel', 'Cine-Hub supporter y Ciberseguridad', 'arielfin.webP', 'https://www.facebook.com/profile.php?id=1000095710', 'https://www.instagram.com/wtfisariel/', 'https://github.com/arielrosasuni'),
(22, 'Danae', 'Cine-Hub supporter y Editor de video', 'mamae.webP', 'https://www.facebook.com/profile.php?id=1000927492', 'https://instagram.com/danae_hub?igshid=MzNlNGNkZWQ', 'https://github.com/Mamaesito'),
(25, 'Hector', 'Cine-Hub supporter y Frontend Developer', 'Hector.webP', 'https://www.facebook.com/hectordaniel.martinezfigu', 'https://www.instagram.com/hector01020/', 'https://github.com/hector010203');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `correo`
--

CREATE TABLE `correo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `mensaje` varchar(50) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `correo`
--

INSERT INTO `correo` (`id`, `nombre`, `email`, `mensaje`, `fecha`) VALUES
(56, 'Esteban', 'emancilla5@ucol.mx', 'Muy buen blog', '2023-05-20 04:22:28'),
(57, 'Esteban', 'emancilla5@ucol.mx', 'Muy buen blog', '2023-05-21 01:05:26'),
(58, 'Ariel', 'arosas7@ucol.mx', 'Muy buen blog', '2023-05-23 00:09:38'),
(59, 'Esteban', 'emancilla5@ucol.mx', 'Muy buen blog', '2023-05-23 04:51:36'),
(60, 'Marisol', 'loz.marisol.mls@gmail.com', 'Muy buen blog', '2023-05-23 05:18:37'),
(61, 'Esteban', 'emancilla5@ucol.mx', 'Muy buen blog', '2023-05-24 15:30:33'),
(62, 'Fernando', 'furibe1@ucol.mx', 'Hola', '2023-05-27 05:05:37'),
(63, 'Fernando', 'furibe1@ucol.mx', 'a', '2023-06-01 19:53:56'),
(64, 'Fernando', 'furibe1@ucol.mx', 'a', '2023-06-01 19:55:02'),
(65, 'Fernando', 'furibe1@ucol.mx', 'Muy buen blog', '2023-06-01 19:55:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galardonadas`
--

CREATE TABLE `galardonadas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `imagen` varchar(1500) NOT NULL,
  `comentario` varchar(10000) NOT NULL,
  `presentacion` varchar(500) NOT NULL,
  `fecha` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `galardonadas`
--

INSERT INTO `galardonadas` (`id`, `titulo`, `imagen`, `comentario`, `presentacion`, `fecha`) VALUES
(2, 'Gladiator', 'gladiator.webP', 'Russell Crowe el intérprete que ganó el Oscar a Mejor actor: Gladiator. El filme, dirigido por Ridley Scott, consiguió 12 nominaciones a los premios de la Academia de Cine de Hollywood. ', 'https://www.youtube.com/embed/UBYNeTIX7zs', 2001),
(3, 'Una mente maravillosa', 'beautiful_mind.webP', 'Ganadora de 4 Oscar, incluyendo Mejor Película. John Nash, brillante matemático, quien al borde del reconocimiento internacional se ve repentinamente implicado en una misteriosa conspiración.', 'https://www.youtube.com/embed/zx2Yj-Gcdc0', 2002),
(4, 'Chicago', 'chicago.webP', 'Chicago se convirtió en el primer musical en ganar el Óscar a Mejor película. Adrien Brody gana el Óscar a Mejor actor a los 29 años, convirtiéndose en el actor más joven en ganar el Óscar en dicha categoría.', 'https://www.youtube.com/embed/VoyhhAahOhY', 2003),
(5, 'El Señor de los Anillos: El retorno del rey', 'Elretornodelrey.webP', 'El retorno del Rey ganó los once Óscar a los que había sido nominada, convirtiéndose así en una de las tres películas en ganar todas las nominaciones y en una de las películas más premiadas de la historia, igualando en número de premios a Titanic y Ben-Hur.', 'https://www.youtube.com/embed/AoKFtf4A_mc', 2004),
(6, 'Million Dollar Baby', 'millonary_baby.webP', 'El largometraje recibió cuatro premios Óscar, incluyendo a mejor película, mejor director, mejor actriz principal (Hilary Swank) y mejor actor de reparto (Morgan Freeman).', 'https://www.youtube.com/embed/fiVmCp3EIp4', 2005),
(7, ' Crash', 'crash.webP', '\'Crash\' fue elegida como mejor película por el Sindicato de Actores y también se ha llevado el Oscar en la 78ª edición de los Premios Oscar. El éxito de taquilla demuestra que llegó a gran público.', 'https://www.youtube.com/embed/tfQs7WbVse8', 2006),
(8, ' Infiltrados', 'infiltrados.webP', '\'Infiltrados\', fue un éxito comercial, obtuvo varios reconocimientos incluidos cuatro Óscar en la 79ª edición de los Premios Oscar, a la mejor película, mejor director, mejor guion adaptado y mejor montaje.', 'https://www.youtube.com/embed/7i7tUNXSj7M', 2007),
(9, 'No es país para viejos', 'pais_viejos.webP', 'La película de Joel y Ethan Coen  logró cuatro estatuillas en la 80 edición de los Óscar de Hollywood que, gracias a Javier Bardem, Tilda Swinton, Marion Cotillard y Daniel Day-Lewis, tuvo un marcado sabor europeo', 'https://www.youtube.com/embed/7ODrmhTbVIA', 2008),
(10, 'Slumdog Millionaire', 'slumdog.webP', '\'Slumdog Millionaire\', un film que a pesar de los graves problemas que tuvo a lo largo de su producción y que estuvo a punto de no estrenarse en los cines, obtuvo un rotundo éxito y ganó 8 oscars, incluyendo el de mejor película del año.', 'https://www.youtube.com/embed/CF8EhpJp1ww', 2009),
(11, 'En tierra hostil', 'tierra_hostil.webP', '\'En tierra hostil\', se llevó los galardones a Mejor Película, Dirección, (Kathryn Bigelow), Edición, Guión Original, Edición de Sonido y Mezcla de Sonido.', 'https://www.youtube.com/embed/RziREMIxmN8', 2010),
(12, 'El discurso del rey', 'discurso_rey.webP', 'La película \'El discurso del rey\' ha obtenido cuatro premios Oscar, entre ellos el de mejor director para Tom Hooper, mejor actor principal para Colin Firth y mejor película.', 'https://www.youtube.com/embed/RpgIxvf4rCw', 2011),
(13, 'The Artist', 'the_artist.webP', 'La película muda de origen francés ha obtenido cinco premios Oscar esta noche en la gala celebrada en Los Angeles: mejor película, mejor actor (Jean Dujardin), mejor director, mejor música original (Ludovic Bource) y mejor vestuario.', 'https://youtu.be/wKNNoEPaiGw', 2012),
(14, 'Argo', 'Argo.webP', ' La cinta dirigida, producida y protagonizada por Ben Affleck, se ha alzado con el Óscar a la mejor película en la 85 edición de los premios Óscar. Ha dedicado el premio muy emocionado a su mujer, la también actriz Jennifer Garner.', 'https://youtu.be/FtLKn5Y1ulc', 2013),
(15, '12 años de esclavitud', 'esclavitud.webP', 'El tercer largometraje del director McQueen, fue ganadora de tres Premios Óscar en la edición 86º del certamen por mejor película, mejor actriz de reparto (Lupita Nyong\'o) y mejor guion adaptado.', 'https://www.youtube.com/embed/F-Wxqt7qabo', 2014),
(31, 'Birdman', 'Birdman.webP', 'Birdman\', la película del director mexicano Alejandro González Iñárritu y protagonizada por Michael Keaton, ha sido la ganadora del Óscar a la mejor película.', 'https://www.youtube.com/embed/yStklotsqE4', 2015),
(32, 'Spotlight', 'spotlight.webP', '\'Spotlight\' se alza con el Óscar a la mejor película. La obra del director Tom McCarthy, protagonizada por Michael Keaton, Mark Ruffalo y Rachel McAdams, se ha alzado con el Óscar a la mejor película.', 'https://www.youtube.com/embed/ZKV3TKuHm3k', 2016),
(33, 'Moonlight', 'Moonlight.webP', 'Se ha llevado el Óscar a la mejor película después de un esperpéntico final cuando el musical \'La La Land\' había sido pronunciado, inicialmente, como el vencedor de este galardón.', 'https://www.youtube.com/embed/GCQn_FkFElI', 2017),
(34, 'La forma del agua', 'Shape_water.webP', 'La cinta de fantasía \'La forma del agua\', del director mexicano Guillermo del Toro, fue la vencedora del Óscar a la mejor película en la 90 edición de los galardones de la Academia de Hollywood.', 'https://www.youtube.com/embed/fHNc_43zXEY', 2018),
(35, 'Green Book', 'green.webP', 'Se ha llevado el Oscar a mejor película. El filme dirigido por Peter Farrelly obtuvo idéntico botín, ya que además del premio a la mejor película, ha conseguido el Oscar al mejor actor de reparto y el Oscar al mejor guión original.', 'https://www.youtube.com/embed/XnCBmMcO7UE', 2019),
(36, 'Parásitos', 'parasite.webP', 'La cinta dirigida por Bong Joon-ho, fue galardonada con el premio a mejor película en los Oscar. \'Parásitos\' supuso toda una revolución en la ceremonia de los Oscars 2020, llevándose varios premios, entre ellos el del Oscar a la mejor película.', 'https://www.youtube.com/embed/Wg_Ql89fWy4', 2020),
(37, 'Nomadland', 'nomadland.webP', 'Se ha llevado el Óscar a la mejor película. Era la favorita tras arrasar en la temporada de premios desde que triunfase en el Festival de Venecia en el 2020. El drama dirigido por Chloé Zhao lo ha ganado todo.', 'https://www.youtube.com/embed/t1hkWbhhga8', 2021),
(38, 'CODA. Los sonidos del silencio	', 'CODA.webP', 'Se ha convertido en la ganadora del Oscar a Mejor Película. La cinta dirigida por Siân Heder no partía como una de las grandes favoritas pese a que ya había ganado el Gran Premio del Jurado a mejor película en el Festival de Sundance.', 'https://www.youtube.com/embed/JX4tMSq95iE', 2022),
(39, 'Todo En Todas Partes Al Mismo Tiempo', 'TETP.webP', 'Logró el premio a mejor película durante la 95 edición de los galardones de la Academia de Hollywood, celebrando este domingo (12.03.2023) en el Teatro Dolby de Los Ángeles (EE.UU.)', 'https://www.youtube.com/embed/ebjjjpNkY4E', 2023);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inicio`
--

CREATE TABLE `inicio` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `imagen` mediumtext NOT NULL,
  `href` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inicio`
--

INSERT INTO `inicio` (`id`, `titulo`, `imagen`, `href`) VALUES
(148, 'Guardianes de la galaxia Vol. 3', 'GDLG.webP', 'peliculas.php#lo+mreciente'),
(149, 'Oppenheimer', 'oppenheimer.webP', 'peliculas.php#proximamente'),
(150, 'El viaje de Chihiro', 'chihiro.webP', 'peliculas.php#clasicos'),
(151, 'Game of Thrones', 'got-inicio.webp', 'series.php#clasicos'),
(152, 'The Walking Dead', 'Walking Dead.webP', 'series.php#clasicos'),
(153, 'Breaking Bad', 'breaking-bad-inicio-3.webP', 'series.php#clasicos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `imagen` varchar(1500) NOT NULL,
  `comentario` varchar(10000) NOT NULL,
  `noticia` varchar(500) NOT NULL,
  `video` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id`, `titulo`, `imagen`, `comentario`, `noticia`, `video`) VALUES
(13, '	\'Joker: Folie A Deux\' se estrenará el 4 de octubre de 2024.', 'joker2.webP', 'Todd Phillips vuelve a la carga junto a Joaquin Phoenix y Lady Gaga en la secuela de \'Joker\'.', 'https://www.fotogramas.es/noticias-cine/a32903237/joker-2-pelicula-trailer-estreno-joaquin-phoenix/', ''),
(14, 'Calendario pixar: \'toy story 5\' y las demás películas y series que llegarán próximamente', 'toy story.webp', 'Calendario pixar: \'toy story 5\' y las demás películas y series que llegarán próximamente', 'https://www.fotogramas.es/noticias-cine/a38304671/pixar-calendario-peliculas-series-proximos-estrenos/', ''),
(15, 'La historia de abuso y éxito de Brendan Fraser, el actor ganador del Oscar', 'brendanoscar.webp', 'Tras casi 20 años alejado de Hollywood, el actor regresó a la pantalla grande por todo lo alto.', 'https://www.eluniversal.com.mx/espectaculos/la-historia-de-abuso-y-exito-de-brendan-fraser-el-actor-ganador-del-oscar/', ''),
(16, 'Netflix revela las primeras imágenes de la que podría ser su película familiar de 2024, el regreso de bob esponja', 'bobesponja.webp', ' Al anunciar oficialmente la nueva película con una imagen promocional, que compartieron en Twitter, Netflix les dio a los fans un primer vistazo a la película titulada \'Saving Bikini Bottom: The Sandy Cheeks Movie\'', 'https://www.fotogramas.es/noticias-cine/a43752294/netflix-bob-esponja-pelicula-arenita-mejillas/', ''),
(17, '\'Secret Invasion\': Fecha de estreno, reparto, sinopsis y más sobre la próxima serie de marvel', 'secretinvasionNoticias.webp', 'La serie se basará en la novela gráfica \'Invasión secreta\' de Brian Michael Bendis pero, teniendo en cuanta el giro positivo que han dado los Skrulls respecto a los cómics, es difícil de creer que las historias vayan a tener muchas similitudes.', 'https://www.fotogramas.es/series-tv-noticias/a36437864/secret-invasion-fecha-trailer-reparto/#:~:text=Apunta%3A%20la%20fecha%20de%20estreno,Man%3A%20Lejos%20de%20casa\'.', ''),
(18, 'Jena Malone actriz de \'Los juegos del hambre\' denuncia abuso sexual durante el rodaje de la pelicula', 'jenamalone.webp', '\'\'Una mezcla arremolinada de emociones que ahora estoy aprendiendo a clasificar; desearía que no estuviera relacionado con un evento tan traumático para mí, pero creo que ese es el verdadero desenfreno de la vida\'\', mencionó en su cuenta de Instagram.', 'https://aristeguinoticias.com/0203/kiosko/actriz-de-los-juegos-del-hambre-denuncia-abuso-sexual-durante-filmacion-de-la-pelicula/', ''),
(19, 'Todo sobre \'gladiator 2\', la esperada secuela que prepara ridley scott tras el legado de máximo', 'gladiator.webP', 'El desarrollo original de una segunda parte comenzó en junio de 2001 y han sido intermitentes desde entonces. Un borrador (con una perspectiva religiosa) surgió en 2006, con Máximo (Russell Crowe) listo para ser resucitado por los dioses romanos y enviado de regreso a la Tierra para detener el desarrollo del cristianismo.', 'https://www.fotogramas.es/noticias-cine/a42471230/gladiator-2-fecha-estreno-sinopsis-trailer-reparto/', ''),
(20, '¿Qué futuro le espera a la IA en el cine?', 'ia.webp', ' la IA puede cambiar radicalmente el mundo del cine en el futuro, permitiendo la creación de películas y actores virtuales, lo que tendría un gran impacto en la industria del entretenimiento al permitir a los cineastas materializar cualquier idea con la ayuda de la IA en constante evolución.', 'https://www.fotogramas.es/premios-oscar-cine/a43286947/oscars-2023-rihanna-homenaje-chadwick-boseman-cancion-black-panther/#:~:text=en%20la%20ceremonia-,Oscars%202023%3A%20As%C3%AD%20de%20emotivo%20ha%20sido%20el%20homenaje%20de,Black%20Panther%3A%20Wakanda%20forever\'.', ''),
(21, '\'Super mario bros\', la película más taquillera de 2023, alcanza un nuevo e increíble logro en taquilla', 'marionoticias.webp', '\'Super Mario Bros. La película\' ha hecho historia. Bueno, lo cierto es que lleva haciendo historia casi desde que se estreno. Ya hay muchos que ven en Nintendo, en plena forma en los videojuegos gracias al éxito de ventas de la Nintendo Switch (la tercera consola más vendida de la historia) como un posible competidor para Disney.', 'https://www.fotogramas.es/noticias-cine/a43746724/super-mario-bros-pelicula-taquilla-billon/', ''),
(22, 'Stallone explica los motivos de su ausencia en \'Creed III\'', 'stalone.webp', 'Sylvester Stallone ha revelado los verdaderos motivos sobre su ausencia en \'Creed III\', una cinta dirigida por Michael B. Jordan, que califica como una “situación lamentable”.', 'https://www.elperiodico.com/es/gente/20230315/stallone-explica-motivos-ausencia-creed-iii-84688210#:~:text=El%20pasado%20junio%2C%20se%20supo,hab%C3%ADa%20alg%C3%BAn%20papel%20para%20m%C3%AD%E2%80%9D.', ''),
(24, '\'Dune 2\' presenta un espectacular primer trailer con Zendaya y Timothée Chalamet en la épica secuela de Denis Villeneuve', 'dune2.webp', 'Ahora ya es oficial. Pero antes del estreno mundial, Villeneuve se sentía optimista acerca de tener la oportunidad de ver su visión en dos partes a través de la línea de meta, ', 'https://www.fotogramas.es/noticias-cine/a38082953/dune-2-trailer-fotos-sinopsis-reparto/', 'https://www.youtube.com/embed/Way9Dexny3w'),
(25, '\"Fracaso en taquilla\" esta pelicula costo 200 millones y alejo a Rhianna del cine', 'battleship.webp', 'Con un presupuesto de 209 millones de dólares, Battleship recaudó solo 303 millones en todo el mundo y unos irrisorios 65 millones de dólares en los Estados Unidos, con Rihanna llevándose el trofeo a la peor actriz de reparto del año. ', 'https://www.sensacine.com/noticias/cine/noticia-1000022512/', ''),
(27, '¡Five Nights At Freddy\'s tráiler oficial!', 'fnaf_movie.webP', 'El rodaje de Five Nights at Freddy\'s comenzó el 1 de febrero de 2023, tras retrasarse casi dos años debido a cambios en el guión, y concluyó el pasado 3 de abril. Tres días después, el 6 de abril de 2023, el productor de la cinta, Jason Blum, anunció en su cuenta de Twitter que la película se estrenaría el 27 de octubre de 2023, justo a tiempo para Halloween.', 'https://www.gq.com.mx/articulo/five-nights-at-freddys-de-que-trata-trailer-elenco-fecha-de-lanzamiento', 'https://www.youtube.com/embed/f-zqS2CiZqw'),
(28, '¡Kung Fu Panda 4!', 'kungfu.webP', 'La nueva película de Kung Fu Panda 4 está prevista para estrenarse en cines el próximo 8 de marzo de 2024, por lo que aún faltan muchos meses para llegar a la fecha. Jack Black revela que la película contará con un nuevo villano, conocido como \'El Camaleón\', quien tiene nada menos que la habilidad de llevar a viejos villanos de la saga de regreso. ', 'https://www.milenio.com/espectaculos/cine/kung-fu-panda-4-fecha-estreno-trama-pelicula', ''),
(29, '\'Aquaman y el reino perdido\': fecha de estreno, reparto, sinopsis y más detalles de la secuela', 'copia_aquaman2.webp', 'A pesar del lavado de cara por el que pasa DC Comics en estos momentos, \'Aquaman 2\' se estrenará en cines en este 2023. Así, el personaje interpretado por Jason Momoa es el último rastro del antiguo DC junto con \'The Flash\' ', 'https://www.fotogramas.es/noticias-cine/a25637064/aquaman-2-trailer-fotos-sinopsis-reparto/', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas_clasicas`
--

CREATE TABLE `peliculas_clasicas` (
  `id` int(11) NOT NULL,
  `imagen` varchar(1500) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `comentario` varchar(10000) NOT NULL,
  `netflix` varchar(100) NOT NULL,
  `hbomax` varchar(100) NOT NULL,
  `primevideo` varchar(255) NOT NULL,
  `disney` varchar(100) NOT NULL,
  `star` varchar(255) NOT NULL,
  `trailer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `peliculas_clasicas`
--

INSERT INTO `peliculas_clasicas` (`id`, `imagen`, `titulo`, `comentario`, `netflix`, `hbomax`, `primevideo`, `disney`, `star`, `trailer`) VALUES
(1, 'Volver al futuro.webP', 'Volver al futuro', 'El adolescente Marty McFly es amigo de Doc, un científico que ha construido una máquina del tiempo. Cuando los dos prueban el artefacto, un error fortuito hace que Marty llegue a 1955, año en el que sus padres iban al instituto y todavía no se habían conocido.', 'https://www.netflix.com/mx/title/60010110', '', '', '', '', 'https://www.youtube.com/embed/qvsgGtivCgs'),
(2, 'forrest.webP', 'Forrest Gump', 'Sentado en un banco en Savannah, Georgia, Forrest Gump espera al autobús. Mientras éste tarda en llegar, el joven cuenta su vida a las personas que se sientan a esperar con él. Aunque sufre un pequeño retraso mental, esto no le impide hacer cosas maravillosas. ', '', '', 'https://www.primevideo.com/detail/Forrest-Gump/0NHF7IFLIDER9XNBFBK2HLMQXC/ref=atv_nb_lcl_es_ES?language=es_ES&ie=UTF8/', '', '', 'https://www.youtube.com/embed/bLvqoHBptjg'),
(3, 'harry_poter.webP', 'Harry Potter y la piedra filosofal', ' Harry Potter descubre que es hijo de dos conocidos hechiceros, de los que ha heredado poderes mágicos. Debe asistir a una famosa escuela de magia y hechicería, donde entabla una amistad con dos jóvenes que se convertirán en sus compañeros de aventura. ', '', 'https://www.hbomax.com/mx/es/feature/urn:hbo:feature:GYY7NkAImuJzDwgEAAAAL?countryRedirect=1', 'https://www.primevideo.com/detail/Harry-Potter-y-la-piedra-filosofal/0JXM9K5QSXG0X1O6M4CHGIYACB?_encoding=UTF8&language=es_ES', '', '', 'https://www.youtube.com/embed/ZgrCZVjPg9g'),
(4, 'chihiro.webP', 'El viaje de Chihiro', 'Chihiro es una niña de diez años caprichosa y testaruda que cree que el universo entero debe someterse a sus deseos. Camino de su nuevo hogar, la familia se equivoca de camino y termina en un pueblo fantasmal donde los espera un magnífico banquete.', 'https://www.netflix.com/mx/title/60023642', '', '', '', '', 'https://www.youtube.com/embed/YgO6g_gHtaE'),
(5, 'Elretornodelrey.webP', 'El Señor de los Anillos: el retorno del Rey', 'La batalla por la Tierra Media ha empezado. Las fuerzas de Saruman han sido destruidas y por primera vez parece que hay una pequeña esperanza. Sin embargo, el poder de Sauron crece y su interés se centra en Gondor, el último reducto de los hombres, cuyo heredero es Aragorn. ', '', 'https://www.hbomax.com/mx/es/feature/urn:hbo:feature:GXeF-mg4zu8PCwwEAADwj?countryRedirect=1', 'https://www.primevideo.com/detail/El-se%C3%B1or-de-los-anillos-El-retorno-del-rey/0HSV2LNFSFOOZGPN9QYJL6I0PD', '', '', 'https://www.youtube.com/embed/r5X-hFf6Bwo'),
(6, 'titanic.webP', 'Titanic', 'Titanic cuenta la historia de amor entre Jack y Rose, dos jóvenes de diferentes clases sociales a bordo del Titanic. El barco se hunde trágicamente en su viaje inaugural y la película explora las diferencias sociales, la supervivencia y el sacrificio durante la catástrofe. ', '', '', 'https://www.primevideo.com/detail/Titanic/79PSCDXSFAV54GG2R2ECV9XLLI?_encoding=UTF8&language=es_ES', '', 'https://www.starplus.com/es-419/movies/titanic/1vXLGiOUqEP9', 'https://www.youtube.com/embed/tA_qMdzvCvk');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas_proximas`
--

CREATE TABLE `peliculas_proximas` (
  `id` int(11) NOT NULL,
  `imagen` varchar(1500) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `comentario` varchar(10000) NOT NULL,
  `trailer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `peliculas_proximas`
--

INSERT INTO `peliculas_proximas` (`id`, `imagen`, `titulo`, `comentario`, `trailer`) VALUES
(1, 'sirenita.webP', 'La sirenita', 'Anhelando conocer el mundo más allá del mar, una joven sirena visita la superficie y se enamora del apuesto príncipe Eric. Siguiendo su corazón, hace un trato con la malvada bruja del mar, Úrsula, para experimentar la vida en tierra.', 'https://www.youtube.com/embed/Z3ye3kkwiO4'),
(2, 'spiderman.webP', 'Spider-Man: A Través del Spider-Verse', 'Miles Morales se embarca en una aventura épica que transportará al simpático Spiderman de Brooklyn a través del Multiverso para unir fuerzas con Gwen Stacy y un nuevo equipo.', 'https://www.youtube.com/embed/oBmazlyP220'),
(3, 'elemental.webP', 'Elemental', 'La historia sigue a Ember y Wade, una pareja de una ciudad donde los habitantes de fuego, agua, tierra y aire viven juntos. “La joven fogosa y el joven que va con la corriente están a punto de descubrir algo elemental: cuánto tienen realmente en común”', 'https://www.youtube.com/embed/MgzHRIeaOL8'),
(4, 'flash1.webP', 'The Flash', 'Flash viaja a través del tiempo para evitar el asesinato de su madre, pero sin saberlo provoca cambios que resultan en la creación de un multiverso.', 'https://www.youtube.com/embed/-FsCwGj9aDw'),
(5, 'indiana.webP', 'Indiana Jones 5', 'Ese conflicto entre Voller e Indiana Jones se producirá a partir de 1969. El protagonista de la película llegará al dato de que uno de los antiguos líderes de la NASA estuvo vinculado con el nazismo.', 'https://www.youtube.com/embed/LTDdC71bN30'),
(6, 'oppenheimer.webP', 'Oppenheimer', 'El físico J Robert Oppenheimer trabaja con un equipo de científicos durante el Proyecto Manhattan, que condujo al desarrollo de la bomba atómica.', 'https://www.youtube.com/embed/bK6ldnjE3Y0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas_recientes`
--

CREATE TABLE `peliculas_recientes` (
  `id` int(11) NOT NULL,
  `imagen` varchar(1500) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `comentario` varchar(10000) NOT NULL,
  `netflix` varchar(100) NOT NULL,
  `hbomax` varchar(255) NOT NULL,
  `primevideo` varchar(255) NOT NULL,
  `disney` varchar(100) NOT NULL,
  `star` varchar(255) NOT NULL,
  `trailer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `peliculas_recientes`
--

INSERT INTO `peliculas_recientes` (`id`, `imagen`, `titulo`, `comentario`, `netflix`, `hbomax`, `primevideo`, `disney`, `star`, `trailer`) VALUES
(1, 'mariobros.webP', 'Super Mario Bros', 'Un fontanero llamado Mario viaja por un laberinto subterráneo con su hermano, Luigi, intentando salvar a una princesa capturada.', 'https://www.netflix.com/mx/', '', '', '', '', 'https://www.youtube.com/embed/8YQM6VlfiqM'),
(2, 'pope.webP', 'El exorcista del Papa', 'El Exorcista del Papa sigue a Amorth mientras investiga la terrorífica posesión de un niño que termina descubriendo una conspiración que hace siglos fue encubierta de manera desesperada por el Vaticano.', 'https://www.netflix.com/mx/', '', '', '', '', 'https://www.youtube.com/embed/SoIOGkxB-Rk'),
(3, 'suzume.webP', 'Suzume', 'Suzume, de 17 años, descubre una misteriosa puerta en las montañas, y pronto empiezan a aparecer otras puertas por todo Japón. Cuando las puertas se abren, liberan desastres y destrucción, y depende de Suzume volver a cerrarlas.', 'https://www.netflix.com/mx/', '', '', '', '', 'https://www.youtube.com/embed/2rPPppw6Bhk'),
(4, 'zodiaco.webp', 'Los Caballeros del Zodíaco ', 'Basada en la sensación internacional del anime, Caballeros del Zodiaco por primera vez lleva a la pantalla grande la saga de Saint Seiya en acción real. Seiya (Mackenyu), pasa el tiempo luchando por dinero mientras busca a su hermana secuestrada. ', '', '', '', 'https://www.netflix.com/mx/', '', 'https://www.youtube.com/embed/CLiniBPN_R4'),
(5, 'GDLG.webP', 'Guardianes de la galaxia Vol. 3', 'Sigue a Star-Lord, todavía recuperándose de la pérdida de Gamora, que debe reunir a su equipo para defender el universo junto con la protección de uno de los suyos. Una misión que, si no se completa, podría llevar al final de los Guardianes tal como los conocemos.', '', '', '', 'https://www.disneyplus.com/es-mx', '', 'https://www.youtube.com/embed/UZreWt7sFmw'),
(6, 'rapidos.webP', 'Rápidos y furiosos 10', 'A lo largo de muchas misiones prácticamente imposibles, contra viento y marea, Dominic Toretto (Vin Diesel) y su familia han sido más astutos, más ágiles y más rápidos que todos los enemigos en su camino.', 'https://www.netflix.com/mx/', 'https://www.hbomax.com/', '', '', '', 'https://www.youtube.com/embed/O5BOxn8Go8U');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rate_blog`
--

CREATE TABLE `rate_blog` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rate_blog`
--

INSERT INTO `rate_blog` (`id`, `user_id`, `rate`) VALUES
(3, 1, 5),
(4, 2, 3),
(5, 56, 5),
(6, 52, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rate_peliculas`
--

CREATE TABLE `rate_peliculas` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rate_peliculas`
--

INSERT INTO `rate_peliculas` (`id`, `post_id`, `user_id`, `rate`) VALUES
(19, 1, 1, 5),
(20, 2, 1, 1),
(21, 2, 3, 5),
(22, 1, 56, 5),
(23, 9, 56, 1),
(24, 9, 59, 3),
(25, 8, 59, 3),
(26, 6, 59, 5),
(27, 5, 59, 5),
(28, 4, 59, 4),
(29, 1, 59, 5),
(30, 2, 59, 2),
(31, 3, 59, 5),
(32, 7, 56, 4),
(33, 5, 56, 1),
(34, 6, 56, 5),
(35, 3, 56, 3),
(36, 2, 56, 5),
(37, 8, 56, 1),
(38, 9, 3, 4),
(39, 8, 3, 5),
(40, 6, 3, 5),
(41, 4, 3, 4),
(42, 1, 3, 5),
(43, 3, 3, 5),
(44, 5, 3, 5),
(45, 7, 3, 4),
(46, 9, 52, 2),
(47, 8, 52, 2),
(48, 7, 52, 1),
(49, 1, 52, 5),
(50, 2, 52, 3),
(51, 3, 52, 4),
(52, 5, 52, 5),
(53, 6, 52, 5),
(54, 9, 53, 4),
(55, 8, 53, 3),
(56, 7, 53, 2),
(57, 6, 53, 5),
(58, 1, 53, 5),
(59, 3, 53, 4),
(60, 2, 53, 1),
(61, 5, 53, 5),
(62, 9, 1, 3),
(63, 8, 1, 4),
(64, 7, 1, 1),
(65, 6, 1, 5),
(66, 5, 1, 5),
(67, 4, 1, 5),
(68, 3, 1, 4),
(69, 9, 2, 1),
(70, 8, 2, 1),
(71, 7, 2, 1),
(72, 6, 2, 5),
(73, 5, 2, 1),
(74, 4, 2, 4),
(75, 3, 2, 5),
(76, 2, 2, 1),
(77, 1, 2, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rate_series`
--

CREATE TABLE `rate_series` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rate_series`
--

INSERT INTO `rate_series` (`id`, `post_id`, `user_id`, `rate`) VALUES
(3, 1, 1, 5),
(4, 8, 1, 3),
(5, 2, 1, 1),
(6, 3, 1, 5),
(7, 9, 1, 4),
(8, 4, 1, 5),
(9, 7, 1, 2),
(10, 1, 2, 2),
(11, 2, 56, 1),
(12, 5, 59, 5),
(13, 6, 59, 5),
(14, 7, 59, 2),
(15, 4, 59, 5),
(16, 3, 59, 5),
(17, 2, 59, 3),
(18, 1, 59, 5),
(19, 9, 59, 4),
(20, 8, 59, 5),
(21, 8, 56, 1),
(22, 9, 56, 1),
(23, 7, 56, 5),
(24, 6, 56, 1),
(25, 4, 56, 1),
(26, 5, 56, 4),
(27, 3, 56, 5),
(28, 1, 56, 1),
(29, 9, 3, 5),
(30, 8, 3, 5),
(31, 7, 3, 1),
(32, 6, 3, 5),
(33, 5, 3, 5),
(34, 4, 3, 3),
(35, 3, 3, 5),
(36, 2, 3, 3),
(37, 1, 3, 5),
(38, 9, 52, 4),
(39, 8, 52, 4),
(40, 7, 52, 2),
(41, 6, 52, 4),
(42, 5, 52, 5),
(43, 4, 52, 3),
(44, 3, 52, 4),
(45, 2, 52, 4),
(46, 1, 52, 5),
(47, 5, 53, 5),
(48, 6, 53, 5),
(49, 3, 53, 5),
(50, 2, 53, 2),
(51, 1, 53, 4),
(52, 9, 53, 5),
(53, 8, 53, 5),
(54, 7, 53, 3),
(55, 4, 53, 5),
(56, 6, 1, 5),
(57, 5, 1, 5),
(58, 9, 2, 1),
(59, 8, 2, 1),
(60, 7, 2, 1),
(61, 6, 2, 1),
(62, 5, 2, 1),
(63, 4, 2, 1),
(64, 3, 2, 5),
(65, 2, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reseñas_peliculas`
--

CREATE TABLE `reseñas_peliculas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `comentario` varchar(10000) NOT NULL,
  `imagen` varchar(1500) NOT NULL,
  `reviews` int(11) NOT NULL,
  `rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reseñas_peliculas`
--

INSERT INTO `reseñas_peliculas` (`id`, `titulo`, `comentario`, `imagen`, `reviews`, `rate`) VALUES
(1, 'El viaje de Chihiro', 'Sumérgete en un mundo de fantasía y descubre la magia de \"El Viaje de Chihiro\" donde verás  un universo lleno de criaturas místicas, personajes entrañables y una historia cautivadora que dejará una huella imborrable en tu corazón, que te invita a creer en la magia, apreciar la belleza de lo invisible y te deja lecciones valiosas. Te envuelve en una narrativa cautivadora que te mantendrá intrigado y emocionado hasta el último segundo. Prepara tu corazón y tu imaginación para un viaje inolvidable junto a Chihiro.', 'chihiro.webP', 7, 5),
(2, 'Volver al Futuro', '\'Volver al Futuro\' es una película de ciencia ficción y aventuras que se ha convertido en un clásico de la cultura popular. La trama ingeniosa, el elenco talentoso y la banda sonora icónica la convierten en una película imprescindible para cualquier amante del cine. Es una historia relevante en la actualidad y una experiencia que todo el mundo debería disfrutar.  La película es fácil de seguir, con efectos especiales que siguen siendo impresionantes, a pesar de haber sido estrenada hace más de treinta años.', 'Volver al futuro.webP', 7, 3),
(3, 'Django', '\'Django\' es una obra maestra del cine que te transportará a un mundo salvaje y despiadado, donde la venganza se teje con hilos de justicia y la pasión arde en cada fotograma. Es una combinación perfecta de una narrativa poderosa, actuaciones brillantes y una dirección impecable. Te surmegira a una época oscura de la historia estadounidense y te lleva de la mano a través de un viaje intenso y emocionante en un mundo lleno de peligro y redención, donde la venganza y la pasión se entrelazan de manera inolvidable. Prepárate para un viaje épico y emocional que te dejará sin aliento.', 'django.webp', 7, 4),
(4, 'Revenant: el renacido', 'Basada en hechos reales, esta película te dejará sin aliento y te llevará a los límites de la supervivencia y la redención. \"El Renacido\" es una experiencia cinematográfica intensa y emocional. La dirección de Iñárritu es magistral, sumergiéndote en un entorno implacable y hostil a través de una narración visceral y una cinematografía impactante, es una película imprescindible para los amantes del cine que buscan una experiencia cinematográfica intensa y desgarradora. Por lo que no la recomendammos si eres sensible a la violencia gráfica.', 'revenant.webP', 4, 4),
(5, 'El Señor de los Anillos: el retorno del Rey', 'Es el magistral cierre de una trilogía épica que ha dejado una huella imborrable en el cine y en el corazón de los espectadores. \"El Retorno del Rey\" te cautiva con su profundidad emocional y su exploración de temas universales como la amistad, el coraje y la lucha contra la oscuridad interna y externa. Es una experiencia cinematográfica que no debes perderte.  Te sumerge en un mundo de fantasía y te cautiva con su narrativa épica y emocional. Prepárate para ser transportado a la Tierra Media y ser testigo de una batalla final entre el bien y el mal.', 'Elretornodelrey.webP', 7, 4),
(6, 'Super Mario Bros', 'Prepárate para una aventura llena de diversión y nostalgia con \"Super Mario Bros\", la adaptación cinematográfica del icónico videojuego que ha cautivado a millones de jugadores en todo el mundo. Es una película que busca entretener y hacer que te sumerjas en una historia repleta de acción y humor. Con su dosis de acción, comedia y personajes inolvidables, te sumergirá en un viaje lleno de sorpresas y te hará sonreír. No importa si eres un fanático de antaño o si acabas de descubrir el universo de Mario,  no puedes dejar pasar.  ¡No te arrepentirás!', 'marionoticias.webp', 7, 5),
(7, 'Los Caballeros del Zodíaco ', 'La animación de la película es impresionante, dando vida a los combates y a los poderes cósmicos de los Caballeros de una manera cautivadora. Los efectos visuales te sumergirán en un mundo lleno de magia y espectacularidad, mientras que la banda sonora épica añade una capa adicional de emoción a cada escena. Es una película que te atrapará con su acción épica, personajes memorables y una trama que te mantendrá al borde de tu asiento. Si estás listo para un viaje lleno de valentía y poderes cósmicos, no dudes en darle una oportunidad a esta emocionante película. ', 'zodiaco.webP', 6, 2),
(8, 'Guardianes de la galaxia Vol. 3', 'Esta entrega nos llevará por caminos emocionales y nos hará reflexionar sobre temas profundos como la amistad, la lealtad y el poder del perdón. Te sorprenderás con giros argumentales inesperados y revelaciones que te dejarán con la boca abierta. Es una película que no puedes dejar pasar. Su mezcla perfecta de acción desenfrenada, humor ingenioso y emociones profundas la convierte en una experiencia cinematográfica imperdible. Prepárate para embarcarte en un viaje espacial épico que te dejará con ganas de más. ¡No te arrepentirás!', 'GDLG.webP', 7, 3),
(9, 'Rápidos y furiosos 10', 'En esta décima entrega, el equipo de pilotos liderados por Dominic Toretto regresa con más intensidad que nunca. Las carreras callejeras, las acrobacias imposibles y las persecuciones de alto octanaje te mantendrán pegado a la pantalla, mientras el peligro y la emoción se apoderan de ti. Es una película que no puedes perderte si buscas una experiencia cargada de acción, emoción y velocidad. No importa si eres un seguidor de la saga desde sus inicios o si eres nuevo en este mundo, esta entrega te atrapará y te dejará deseando más.', 'rapidos.webP', 7, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reseñas_series`
--

CREATE TABLE `reseñas_series` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `comentario` varchar(10000) NOT NULL,
  `imagen` varchar(1500) NOT NULL,
  `reviews` int(11) NOT NULL,
  `rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reseñas_series`
--

INSERT INTO `reseñas_series` (`id`, `titulo`, `comentario`, `imagen`, `reviews`, `rate`) VALUES
(1, 'Breaking Bad', '\'Breaking Bad\' es una serie de TV que sigue la historia de un profesor de química que se convierte en un narcotraficante. La serie es excelente debido a su escritura, actuaciones y cinematografía. Nosotros recomendamos la serie por su complejidad moral y temas importantes, aunque si eres sensible a la violencia y temas relacionados con las drogas, talvez esta serie no sea para ti . Además, la serie puede ser emocionalmente agotadora debido a su tono oscuro y pesado.', 'Breaking_Bad.webP', 7, 4),
(2, 'The Simpsons', '\'Los Simpson\' es una serie animada que sigue las aventuras de una familia disfuncional. La recomendaría por su humor inteligente, sátira social y capacidad para adaptarse y evolucionar con el tiempo. Es una serie clásica y duradera que ha tenido un gran impacto en la cultura popular. No la recomendaría si no te gusta el humor animado o prefieres series más serias y dramáticas. Algunos críticos han acusado a la serie de perder calidad en sus temporadas más recientes.', 'Simpson.webP', 7, 2),
(3, 'Vikingos', '\'Vikingos\' es una serie de televisión que sigue a Ragnar Lodbrok en el siglo VIII mientras navegan por Europa en busca de aventuras y gloria. La serie destaca por su recreación de la cultura vikinga y personajes fuertes. Recomendamos la serie por su narrativa interesante, producción impresionante y visión fascinante de la historia vikinga. Sin embargo, no la recomendamos si buscas una serie históricamente precisa y puede ser un poco lenta en algunos momentos.', 'Vikings.webP', 7, 5),
(4, 'You', '\'You\' es una serie de TV que sigue la historia de un hombre obsesionado con las mujeres que conoce y dispuesto a hacer cualquier cosa para estar con ellas. Recomendamos la serie por su narrativa excelente, actuaciones convincentes, suspenso constante y giros impactantes en la trama. No la recomendamos si eres sensible a la violencia y temas relacionados con el acoso y el control emocional en una relación, ya que puede ser emocionalmente agotadora debido a su naturaleza perturbadora y oscura.', 'You.webP', 7, 3),
(5, 'Demon Slayer: Kimetsu no Yaiba', '\'Demon Slayer\' es una serie de anime que sigue a Tanjiro Kamado, un joven cazador de demonios. La serie destaca por su animación impresionante, acción emocionante y personajes memorables. Es recomendada por su trama emocionante y personajes interesantes, pero no para aquellos que no disfrutan del anime o la violencia gráfica.', 'demon_slayer_reseñas.webP', 7, 4),
(6, 'Game of Thrones', '\'Game of Thrones\' es una serie de TV basada en las novelas de George R.R. Martin sobre varias casas nobles que luchan por el trono de los Siete Reinos. Recomendamos la serie por su popularidad, producción impresionante y personajes complejos, así como unos efectos visuales que llevan todo al siguiente nivel. Sin embargo, no la recomendamos si eres sensible a la violencia y temas controvertidos. La serie también ha sido criticada por su representación de ciertos personajes y grupos. ', 'got-inicio.webp', 7, 4),
(7, 'The Mandalorian', '\'The Mandalorian\' es una serie de TV de ciencia ficción de Disney+ sobre un cazador de recompensas solitario en el universo de Star Wars. Recomendamos la serie por su producción impresionante, efectos visuales, banda sonora y su enfoque único en el personaje principal y su relación con un niño de la misma especie que Yoda. No la recomendamos si no te gusta la ciencia ficción o no eres fanático de Star Wars. Además, la serie puede sentirse repetitiva en algunos episodios y carecer de un enfoque más amplio en el universo de Star Wars.', 'mandalorian.webP', 7, 2),
(8, 'The Walking Dead', '\'The Walking Dead\' es una serie de televisión de horror y drama que sigue a un grupo de sobrevivientes después de un apocalipsis zombie. La serie es emocionante y atractiva para los fanáticos del género y aborda temas interesantes sobre la supervivencia y la humanidad en situaciones extremas. Recomendamos la serie por sus efectos especiales, actuaciones y personajes bien desarrollados, pero no la recomendamos si eres sensible a la violencia y los temas relacionados con la muerte y la destrucción.', 'Walking Dead.webP', 7, 3),
(9, 'The Last of Us', '\'The Last of Us\' es una serie de televisión basada en un videojuego del mismo nombre. Sigue a Joel y Ellie mientras atraviesan un mundo postapocalíptico lleno de peligros para encontrar una posible cura para una pandemia mortal. Recomendamos la serie debido a la aclamación del videojuego, la producción prometedora y la trama emocionante. Sin embargo, no la recomendamos si no eres fanático del género postapocalíptico o si prefieres otro tipo de programas de televisión. Además, la serie puede ser emocionalmente desgarradora y violenta.', 'TLOU.webp', 7, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(2) NOT NULL,
  `roles` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `roles`) VALUES
(1, 'Dueño'),
(2, 'Administrador'),
(3, 'Usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `series_clasicas`
--

CREATE TABLE `series_clasicas` (
  `id` int(11) NOT NULL,
  `imagen` varchar(1500) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `comentario` varchar(10000) NOT NULL,
  `netflix` varchar(100) NOT NULL,
  `hbomax` varchar(100) NOT NULL,
  `primevideo` varchar(255) NOT NULL,
  `disney` varchar(100) NOT NULL,
  `star` varchar(255) NOT NULL,
  `crunchyroll` varchar(100) NOT NULL,
  `trailer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `series_clasicas`
--

INSERT INTO `series_clasicas` (`id`, `imagen`, `titulo`, `comentario`, `netflix`, `hbomax`, `primevideo`, `disney`, `star`, `crunchyroll`, `trailer`) VALUES
(1, 'Breaking_Bad.webP', 'Breaking Bad', 'Un profesor de química con cáncer terminal se asocia con un exalumno suyo para fabricar y vender metanfetamina a fin de que su familia no pase apuros económicos.', 'https://www.netflix.com/mx/title/70143836', '', '', '', '', '', 'https://www.youtube.com/embed/HhesaQXLuRY'),
(2, 'got-inicio.webp', 'Game of Thrones', 'En un mundo fantástico y en un contexto medieval varias familias, relativas a la nobleza, se disputan el poder para dominar el territorio ficticio de Poniente (Westeros) y tomar el control de los Siete Reinos desde el Trono de Hierro, lugar donde el rey ejerce el poder.', '', 'https://www.hbomax.com/mx/es/series/urn:hbo:series:GVU2cggagzYNJjhsJATwo', '', '', '', '', 'https://www.youtube.com/embed/KPLWWIOCOOQ'),
(3, 'malcolm.webP', 'Malcolm in the Middle', 'La serie sigue a una familia la cual, es protagonizada por Malcolm, un chico más o menos normal al cual se le descubre que tiene un cociente intelectual del nivel de un genio.', '', '', 'https://www.primevideo.com/detail/Malcolm-in-the-Middle/0Q7KJM4SD88GICQLL7HYHNSBMC?_encoding=UTF8&la', '', '', '', 'https://www.youtube.com/embed/PfID_33TL_A'),
(4, 'Simpson.webP', 'Simpson', 'Los Simpson son una familia políticamente incorrecta, de clase media, que habita en la ficticia localidad estadounidense de Springfield.', '', '', '', '', 'https://www.starplus.com/es-mx?cid=DSS-Search-Google-71700000086371357-&s_kwcid=AL!8468!3!541359013870!b!!g!!los%20simpson&gclid=Cj0KCQjwiZqhBhCJARIsACHHEH-7J75vc40W9NChH_YpdJ3Cbgrmw2MpaHnpcU-QAbD-xiXTFGd2w68aAhvjEALw_wcB&gclsrc=aw.ds', '', 'https://www.youtube.com/embed/_jgYEYERYFQ'),
(5, 'Vikingos.webP', 'Vikingos', 'Narra las aventuras del héroe Ragnar Lodbrok, de sus hermanos vikingos y su familia. Además de ser un guerrero valiente, Ragnar encarna las tradiciones nórdicas de la devoción a los dioses.', 'https://www.netflix.com/mx/title/70301870', '', '', '', '', '', 'https://www.youtube.com/embed/VWBDosdLhoY'),
(6, 'Walking Dead.webP', 'The Walking Dead', 'The Walking Dead tiene lugar después del inicio de un apocalipsis zombi mundial. Los zombis se arrastran hacia los humanos vivos y otras criaturas para comerlos.', 'https://www.netflix.com/mx/title/70177057', '', '', '', '', '', 'https://www.youtube.com/embed/sfAc2U20uyg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `series_proximas`
--

CREATE TABLE `series_proximas` (
  `id` int(11) NOT NULL,
  `imagen` varchar(1500) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `comentario` varchar(10000) NOT NULL,
  `trailer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `series_proximas`
--

INSERT INTO `series_proximas` (`id`, `imagen`, `titulo`, `comentario`, `trailer`) VALUES
(1, 'idol.webP', 'The Idol', 'Tesfaye interpretará al líder de un culto/secta/grupo de autoayuda (llámalo como quieras) de Hollywood que comenzará una sórdida relación con una estrella incipiente del pop (Lily-Rose Depp).', 'https://www.youtube.com/embed/R_dfXVyf1Z0'),
(2, 'Secret Invasion.webP', 'Secret Invasion', 'Los Skrulls se han infiltrado sigilosamente en la sociedad humana, y así tomar el control de puestos clave de la sociedad y garantizar su victoria final.', 'https://www.youtube.com/embed/sQY6Umchw2M'),
(3, 'witcher.webP', 'The Witcher', 'Geralt de Rivia, un cazador de monstruos solitario, intenta encontrar su lugar en un mundo en el que a menudo las personas son peores que las bestias', 'https://www.youtube.com/embed/cQp-nlhAQwY'),
(4, 'ahsoka.webP', 'Ahsoka', 'Seguiremos a la Jedi, en la caza del malvado Gran Almirante Thrawncon la esperanza de localizar al desaparecido Ezra Bridger, el joven Jedi que desapareció con Thrawn hace muchos años.', 'https://www.youtube.com/embed/fVDM8z26Q1U'),
(5, 'Echo.webP', 'Echo ', 'La historia del origen de Echo vuelve a mostrar a Maya López, cuyo comportamiento despiadado en la ciudad de Nueva York la alcanza en su pueblo natal. Debe enfrentarse a su pasado, reconectarse con sus raíces nativas americanas', 'https://www.youtube.com/embed/HewiZqo1bKM'),
(6, 'Berlín.webp', 'Berlín ', 'Cuenta la historia del atracador Andrés de Follonosa o también conocido como Berlín en sus días como ladrón antes de planear robar la Fábrica de Moneda y Timbre.', 'https://www.youtube.com/embed/Q-GRz4m7nP0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `series_recientes`
--

CREATE TABLE `series_recientes` (
  `id` int(11) NOT NULL,
  `imagen` varchar(1500) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `comentario` varchar(10000) NOT NULL,
  `netflix` varchar(100) NOT NULL,
  `hbomax` varchar(100) NOT NULL,
  `primevideo` varchar(255) NOT NULL,
  `disney` varchar(100) NOT NULL,
  `star` varchar(100) NOT NULL,
  `crunchyroll` varchar(255) NOT NULL,
  `trailer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `series_recientes`
--

INSERT INTO `series_recientes` (`id`, `imagen`, `titulo`, `comentario`, `netflix`, `hbomax`, `primevideo`, `disney`, `star`, `crunchyroll`, `trailer`) VALUES
(1, 'TLOU.webP', 'The Last of Us', 'La trama describe las vivencias de Joel y Ellie, un par de supervivientes de una pandemia en Estados Unidos que provoca la mutación de los seres humanos en criaturas caníbales.', '', 'https://www.hbomax.com/mx/es/series/urn:hbo:series:GYyofRQHeuJ6fiQEAAAEy?countryRedirect=1', '', '', '', '', 'https://www.youtube.com/embed/yyGetSp7CIc'),
(2, 'gotham_knights.webp', 'Gotham Knights', 'Una nueva organización criminal ha barrido las calles de Gotham City. La batfamilia, compuesta por Batgirl, Nightwing, Capucha Roja y Robin, deberá proteger Gotham, devolver la esperanza a sus ciudadanos, la disciplina a sus policías y el miedo a sus criminales.', '', 'https://www.hbomax.com/mx/es/series/urn:hbo:series:GY_98Sg0MQbiWtQEAAAL3?countryRedirect=1', '', '', '', '', 'https://www.youtube.com/embed/UTr1Icyluag'),
(3, 'bronca.webP', 'Bronca', 'Danny Cho es un un contratista fracasado que ya está harto de hacer trapicheos y no salir adelante. Por su parte Amy Lau es una empresaria descontenta, atrapada en una vida que nunca quiso con un matrimonio.', 'https://www.netflix.com/mx/title/81447461', '', '', '', '', '', 'https://www.youtube.com/embed/Rl3nZ93BFRs'),
(4, 'demon_slayer.webP', 'Demon Slayer: To the Swordsmith Village', 'El viaje de Tanjiro lo lleva a la Aldea de los Herreros, donde se reúne con dos Hashira, miembros de los espadachines de más alto rango del Cuerpo de Cazadores de Demonios.', '', '', '', '', '', 'https://www.crunchyroll.com/es/offer-demonslayer', 'https://www.youtube.com/embed/C_pKddExbXI'),
(5, 'diplomatica.webP', 'La diplomática', 'Ante las numerosas tensiones de Occidente con Irán, el presidente de Estados Unidos le pide que se traslade a Londres como embajadora para poder realizar una función de diplomacia y coordinación con Inglaterra en la crisis internacional.', 'https://www.netflix.com/mx/title/81288983', '', '', '', '', '', 'https://www.youtube.com/embed/oM-ySokX55o'),
(6, 'Love n Dead.webp', 'Love and Death', 'Se trata de la historia de Candy Montgomery, que asesinó a su amiga y vecina Betty Gore a principios de los 80s.', '', 'https://www.hbomax.com/mx/es/series/urn:hbo:series:GZAZHkgS32aXCwgEAAANK?countryRedirect=1', '', '', '', '', 'https://www.youtube.com/embed/Z778sJGKB3E');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiempo_token`
--

CREATE TABLE `tiempo_token` (
  `duration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tiempo_token`
--

INSERT INTO `tiempo_token` (`duration`) VALUES
(5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol_id` int(1) NOT NULL,
  `token` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `username`, `email`, `password`, `rol_id`, `token`) VALUES
(1, 'Esteban', 'emancilla5@ucol.mx', '$2y$10$r9mMJiZxu9YDhGoe1/CWoeEXa/TIOLMm0PtcOXAzO1DqTSPiccbuO', 1, 183459),
(2, 'Ariel', 'arosas7@ucol.mx', '$2y$10$IK.gt.E25infM0CKbNiy3.Dyaz5ByGcq7V42RUl4zP02sQr17eFZS', 1, 0),
(3, 'Hector', 'hmartinez10@ucol.mx', '$2y$10$OImClQUgf79E/W1jV251ReVkgkXNvlp2NWk6zA6/WxjJfg0.KvONi', 1, 0),
(52, 'Fernando', 'furibe1@ucol.mx', '$2y$10$pu1wBcBPb897sVPpifEc3uADPp18LwvdkKU5BfSP0U0uDUhz9Hduq', 2, 0),
(53, 'Daniel', 'emancillalozoya@gmail.com', '$2y$10$4LipbP7HIq5xRyvNRa/2lOogZaoGZh2ycxEloTrP/OzfM3IWypfle', 2, 323732),
(56, 'Marisol', 'loz.marisol.mls@gmail.com', '$2y$10$dHJviyaZqAgS09Gy2jbkqeOwBjFNHsRBhtopTzdP6d6/G2DTZi5vK', 3, 783189),
(59, 'Nazvia', 'nmichel2@ucol.mx', '$2y$10$d7KJuAz2M5RtCV80wso8qOE7xJ4WL.pSpR9XhtEX5vgxvEWeb4hWu', 3, 369154);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `correo`
--
ALTER TABLE `correo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `galardonadas`
--
ALTER TABLE `galardonadas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inicio`
--
ALTER TABLE `inicio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `peliculas_clasicas`
--
ALTER TABLE `peliculas_clasicas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `peliculas_proximas`
--
ALTER TABLE `peliculas_proximas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `peliculas_recientes`
--
ALTER TABLE `peliculas_recientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rate_blog`
--
ALTER TABLE `rate_blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_blog` (`user_id`);

--
-- Indices de la tabla `rate_peliculas`
--
ALTER TABLE `rate_peliculas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `rate_series`
--
ALTER TABLE `rate_series`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id_series` (`post_id`),
  ADD KEY `user_id_series` (`user_id`);

--
-- Indices de la tabla `reseñas_peliculas`
--
ALTER TABLE `reseñas_peliculas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reseñas_series`
--
ALTER TABLE `reseñas_series`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `series_clasicas`
--
ALTER TABLE `series_clasicas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `series_proximas`
--
ALTER TABLE `series_proximas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `series_recientes`
--
ALTER TABLE `series_recientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles` (`rol_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `correo`
--
ALTER TABLE `correo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `galardonadas`
--
ALTER TABLE `galardonadas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `inicio`
--
ALTER TABLE `inicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `peliculas_clasicas`
--
ALTER TABLE `peliculas_clasicas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `peliculas_proximas`
--
ALTER TABLE `peliculas_proximas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `peliculas_recientes`
--
ALTER TABLE `peliculas_recientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de la tabla `rate_blog`
--
ALTER TABLE `rate_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `rate_peliculas`
--
ALTER TABLE `rate_peliculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT de la tabla `rate_series`
--
ALTER TABLE `rate_series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `reseñas_peliculas`
--
ALTER TABLE `reseñas_peliculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `reseñas_series`
--
ALTER TABLE `reseñas_series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `series_clasicas`
--
ALTER TABLE `series_clasicas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `series_proximas`
--
ALTER TABLE `series_proximas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `series_recientes`
--
ALTER TABLE `series_recientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `rate_blog`
--
ALTER TABLE `rate_blog`
  ADD CONSTRAINT `user_id_blog` FOREIGN KEY (`user_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `rate_peliculas`
--
ALTER TABLE `rate_peliculas`
  ADD CONSTRAINT `post_id` FOREIGN KEY (`post_id`) REFERENCES `reseñas_peliculas` (`id`),
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `rate_series`
--
ALTER TABLE `rate_series`
  ADD CONSTRAINT `post_id_series` FOREIGN KEY (`post_id`) REFERENCES `reseñas_series` (`id`),
  ADD CONSTRAINT `user_id_series` FOREIGN KEY (`user_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `roles` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
