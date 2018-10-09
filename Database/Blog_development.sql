-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 09, 2018 at 08:04 AM
-- Server version: 5.7.23-0ubuntu0.18.04.1
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Blog_development`
--

-- --------------------------------------------------------

--
-- Table structure for table `ar_internal_metadata`
--

CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2018-09-30 09:20:05', '2018-09-30 09:20:05');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(3, 'Sports', '2018-10-09 11:33:43', '2018-10-09 11:33:43'),
(4, 'Fashion', '2018-10-09 11:34:31', '2018-10-09 11:34:31'),
(5, 'Entertainment', '2018-10-09 11:46:39', '2018-10-09 11:46:39'),
(6, 'Technology', '2018-10-09 11:49:45', '2018-10-09 11:49:45');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `body` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `body`, `created_at`, `updated_at`, `post_id`) VALUES
(1, 'Manzi Heurver', 'manzi@gmail.com', 'This is a real meant of face Thapology', '2018-10-08 14:38:39', '2018-10-08 14:38:39', 2),
(2, 'Manzi Heurver', 'manzi@gmail.com', 'dcfhgcvmh,jn', '2018-10-08 16:41:46', '2018-10-08 16:41:46', 1),
(3, 'Ntwali Didier', 'onlinestreaming@gmail.com', 'Wooooww, what a wonderful flower!!!', '2018-10-09 11:07:51', '2018-10-09 11:07:51', 4),
(4, 'Manzi Heurver', 'manzi@gmail.com', 'Yooooh, Ntakundi  bazagerageze ubukunda', '2018-10-09 11:56:06', '2018-10-09 11:56:06', 7);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `body` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `tags` text,
  `image_file_name` varchar(255) DEFAULT NULL,
  `image_content_type` varchar(255) DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `category_id`, `body`, `created_at`, `updated_at`, `user_id`, `tags`, `image_file_name`, `image_content_type`, `image_file_size`, `image_updated_at`) VALUES
(5, 'Irushanwa Dushimimana wabaye Miss Heritage Rwanda 2018 yagomabaga kwitabira ntirikibaye', 4, 'Ryari kuba mu Ukwakira 2018 i Kampala muri Uganda,bigizwemo uruhare na Kompanyi ya Crystal Models Africa iyoborwa n’uwitwa Ronnie Nsbuga ifatanyije na Minisiteri y’Ubukerarugendo muri icyo gihugu, Ikigo cy’Igihugu cy’Ubukerarugendo, Umujyi wa Kampala n’Ikigo cy’igihugu cy’ingoro z’umurage.\r\n\r\nRyagombaga guhuza abakobwa bagera kuri 80 bo mu bihugu bitandukanye bya Afurika.\r\n\r\nAbaritegura ku rwego rwa Afurika baherutse gushyira hanze itangazo bavuga ko ritakibaye kubera ko hari ubwumvikane buke hagati yabo na Ronnie Nsbuga wari urifite mu nshingano bigatuma uyu mwaka barisubka rikazaba umwaka utaha mu 2019.\r\n\r\nKu rubuga rwabo banditse bagira bati “Kubera ibibazo bitunguranye irushanwa rya Miss Heritage Universe ntirikibereye muri Uganda ndetse uyu mwaka ntabwo rizigera riba.”\r\n\r\n“Habayeho kutumvikana na Nsbuga Ronnie twari dufitanye amasezerano duhitamo kuyasesa. Turisegura ku bakobwa bagombaga guhatana ndetse n’abandi bari bategereje iri rushanwa. Ikosa si iryacu. Tuzabamenyesha aho irushanwa ry’umwaka utaha rizabera n’igihugu kizaryakira.”\r\n\r\nMuri iri tangazo kandi bagaragaza ko hari irindi rushanwa ryitwa Miss Culture Worldwide rizaba hagati ya tariki 6- 16 Ukuboza muri Zimbabwe bagasaba abakobwa bari kwitabira Miss Heritage Universe babishaka ko bakwitabira kuko bashobora kubafasha bikazaborohera guhatana.\r\n\r\nDushimimana Lydia mu kiganiro na IGIHE, yavuze ko yamenye ko irushanwa ritakibaye. Abajijwe niba azitabira iri rindi ryitwa Miss Culture Worldwide avuga ko atazarijyamo.\r\n\r\nAti “Narabimenye ko irushanwa ritakibaye, ariko ntabwo nteganya kwitabira ririya rindi rya Miss Culture Worldwide kuko rizaba mu gihe nzaba ndi mu masomo.”\r\n\r\nAbategura Miss Heritage Universe si ubwa mbere bavuze ko rizaba bigahera mu magambo, kuko no mu mwaka ushize bari bafite irindi ryitwa Miss Heritage Global ryagombaga kwitabirwa na Shimwa Guelda birangira ritabaye kubera ubwunvikane buke bwavutse hagati mu bariteguraga bagacikamo ibice.', '2018-10-09 11:37:15', '2018-10-09 11:37:15', 1, 'Irushanwa ry’ubwiza ryitwa Miss Heritage Universe ryagombaga kubera muri Uganda, rikitabirwa na Dushimimana Lydia wabaye Nyampinga w’Umurage n’Umuco muri Miss Rwanda 2018 ntirikibaye.', 'dushimimana_ec9f-a9230.jpg', 'image/jpeg', 77660, '2018-10-09 11:37:15'),
(6, 'Cristiano Ronaldo ashobora gutakaza amasezerano ya miliyari y’amadolari afitanye na NIKE', 3, 'Uyu mukinnyi yarezwe n’umugore witwa Kathryn Mayorga utuye Las Vegas muri Leta Zunze Ubumwe za Amerika.\r\n\r\nMu Ugushyingo 2016 Cristiano Ronaldo w’imyaka 33 yasinye amasezerano y’ubuzima bwose n’uruganda rwo muri Leta Zunze Ubumwe za Amerika rukora rukanacuruza ibikoresho bya siporo ‘NIKE’.\r\n\r\nByatumye aba umukinnyi wa gatatu usinye amasezerano nk’ayo n’uru ruganda nyuma y’ibihanganye muri NBA, Michael Jordan na LeBron James.\r\n\r\nBBC yanditse ko amasezerano ye afite agaciro ka Miliyari y’amadolari, ni ukuvuga asaga miliyari 870 z’amafaranga y’u Rwanda.\r\n\r\nUru ruganda rwatangiye gukorana na Cristiano kuva mu mwaka wa 2003 ubwo yakinaga muri Sporting Clube de Lisbon y’iwabo muri Portugal rwaciye amarenga ko rushobora gusesa amasezerano n’uyu mukinnyi kubera ibirego ashinjwamo gufata ku ngufu.\r\n\r\nMu itangazo uru ruganda rwatanze bemeje ko iki kirego nabo kibareba bagira bati“Mu buryo bwimbitse natwe turebwa n’iki kirego kandi tuzakomeza gukurikiranira hafi uko bizagenda.”\r\n\r\nNIKE yatangaje ibi iminsi ibiri gusa nyuma y’urundi ruganda rusanzwe rukorana na Cristiano Ronaldo ‘EA Sports’ rutunganya imikino yo kuri Televiziyo (video games) narwo rwo muri Leta Zunze Ubumwe za Amerika, rwemeje ko bahangayikishijwe n’ibiri kuba ku mukinnyi bakorana.\r\n\r\nNubwo Cristiano Ronaldo aherutse gutangaza ko ibyamuvuzweho ari ibinyoma ari umugore wamubeshyeye ashaka kwimenyekanisha, iki kirego kiri mu maboko y’ubugenzacyaha bwa Polisi ya Las Vegas.\r\n\r\nMu gihe uyu rutahizamu yahamwa n’ibyaha byo gufata ku ngufu Kathryn Mayorga, ashobora gutakaza amasezerano y’inganda zikomeye yari afite bikanamuviramo gufungwa.\r\n\r\nMayorga avuga ko yahuye na Ronaldo muri Palms Hotel and Casino ku wa 13 Kamena 2009. Ronaldo ngo amutumira n’inshuti ye aho yari acumbitse.\r\n\r\nMu kirego cye, avuga ko Ronaldo yamusabye kubasanga muri jacuzzi ndetse amuha n’ibyo kwambara.\r\n\r\nUbwo uyu mugore ngo yari mu cyumba cyo guhinduriramo, Ronaldo yamusanzeyo aramwegera, amusaba imibonano mpuzabitsina akoresheje umunwa. Mayorga ngo yarabyanze, ariko undi amwinjiza mu buriri ahita amufata ku ngufu, agakomeza gutabaza avuga ati “oya, oya, oya.”', '2018-10-09 11:42:31', '2018-10-09 11:42:31', 2, 'Rutahizamu wa Juventus n’ikipe y’igihugu ya Portugal Cristiano Ronaldo, ashobora gutakaza amasezerano ya zimwe mu nganda asanzwe yamamariza kubera ibirego byo gufata ku ngufu', 'nubwo_ashinjdfeb-a25ff.jpg', 'image/jpeg', 65343, '2018-10-09 11:42:31'),
(7, 'Abanyarwanda batashye amaramasa mu bihembo bya Afrimma', 5, 'Charly na Nina na Butera Knowless bari bahatanye mu cyiciro cy’abagore bo muri Afurika y’Uburasirazuba bitwaye neza muri muzika. Umunyarwanda w’umubyinnyi Sherrie Silver yahatanaga mu cyiciro cy’abayoboye imbyino.\r\n\r\nCharly na Nina na Butera Knowless bari mu cyiciro kimwe na Victoria Kimani (Kenya), Vanessa Mdee (Tanzania), Leyla Kayondo (Uganda), Rema (Uganda), Akothee (Kenya), Nandy (Tanzania), Sheebah Karungi (Uganda) na Juliana Kanyomozi (Uganda).\r\n\r\nSheebah Karungi ni we wegukanye iki gihembo cyatangiwe muri Leta Zunze Ubumwe za Amerika, mu Mujyi wa Dallas i Texas.\r\n\r\nSherrie Silver nawe yari mu cyiciro cy’abayoboye imbyino bitwaye neza muri Afurika biturutse ku ndirimbo yagaragayemo ya Childish Gambino yitwa ‘This is America’.\r\n\r\nNtiyahiriwe kuko igihembo cyahawe Didi Emah ukomoka muri Nigeria.\r\n\r\nAbandi bahanzi bo mu karere begukanye ibihembo ni Eddy Kenzo wegukanye icy’umugabo witwaye neza ukomoka muri Afurika y’Uburasirazuba na Ykee Benda watwaye icy’umuhanzi ukizamuka witwaye neza.\r\n\r\nKhaligraph Jones ukomoka muri Kenya yahigitse abandi bahanzi mu njyana ya Hip Hop muri Afurika yegukana igihembo cy’ukora ariwe uhagaze neza ku mugabane.\r\n\r\nPapa Dennis nawe yegukanye igihembo mu bakora indirimbo zihimbaza Imana n’aho Fally Ipupa yegukana icy’umuhanzi wo muri Afurika yo hagati witwaye neza.\r\n\r\nAbahanzi bo muri Tanzania barimo Diamond, Harmonize, Vanessa Mdee n’abandi ntibabashije kwitwara neza mu byiciro bahatanagamo.\r\n\r\nIbi bihembo bya AFRIMMA [Africa Muzik Magazine Awards] byatanzwe ku cyumweru gishize tariki 7 Ukwakira bitegurwa n’abanyafurika baba muri Amerika bigamije guhemba abahanzi bakorera umuziki mu bihugu byabo no hanze yabyo.\r\n\r\nIby’uyu mwaka byatangwaga ku nshuro ya gatanu, byari mu byiciro 18.', '2018-10-09 11:48:35', '2018-10-09 11:48:35', 1, 'Nta munyarwanda muri batatu bahataniraga ibihembo bya Afrimma wagize amahirwe yo kwegukana na kimwe, bikomeza amateka y’uko nta n’umwe uregukana ibi bihembo kuva byatangira gutangwa mu 2012.', 'charly_na_nia0a0-6fc65.jpg', 'image/jpeg', 275154, '2018-10-09 11:48:35'),
(8, 'Apple yamuritse iPhone nshya n’isaha ishobora gukurikirana imikorere y’umutima', 6, 'Kuri uyu wa Gatatu tariki 12 Nzeri muri Steve Jobs Theater i Cupertino muri leta ya California, niho habereye iki gikorwa cyo kumurika ibikoresho bishya by’ikoranabuhanga bya Apple.\r\n\r\nNk’uko byari byitezwe, hashyizwe hanze Apple Watch Series 4, yaje ifite umwihariko wo kuba ikoranye ikoranabuhanga rigenzura uko umutima utera.\r\n\r\nUmuyobozi ushinzwe ibikorwa muri Apple, Jeff Williams yavuze ko babonye uburenganzira bw’ikigo gishinzwe Ibiribwa n’Imiti, FDA, bubemerera kuba iyi saha yakoreshwa mu buvuzi.\r\n\r\nIzajya ifasha uyambaye kuba yapima uko umutima we utera no kubona ibimenyetso by’ibibazo birimo kuba wahagarara cyangwa umwuka utageramo uko bikwiye (stroke), ku buryo wakwihutira kujya kwa muganga.\r\n\r\nABC News ivuga ko iyi saha ibasha kumenya niba umuntu anyereye cyangwa aguye hasi, igahamagara nimero z’abakora ubutabazi bwihuse igihe amaze umunota umwe atanyeganyega.\r\n\r\nApple Watch Serie 4 ifite umubyimba muto n’ikirahure kinini ugereranyije n’izayibanjirije, ikoresha akuma karanga ahantu (GPS) izajya igurishwa ku madolari 399, mu gihe ishobora gukoreshwa nka telefoni ari 499$.\r\n\r\nApple kandi yanashyize hanze telefoni nshya eshatu zirimo iPhone XS, iPhone XS Max na iPhone XR zose zifite ikirahure kinini kandi kigera ku mpande.\r\n\r\nIcyo zitandukaniyeho na iPhone X yasohotse umwaka ushize ni amafoto meza, amajwi asohoka neza kandi akagera kure ndetse n’ikoranabuhanga rikorana n’isura ariko ryihuta cyane (Face ID).\r\n\r\nIzi telefoni zizagera ku isoko tariki ya 21 Nzeri. iPhone XS Max izaba igura amadolari 1099, iPhone XS igure amadolari 999, ni mu gihe iPhone XR izatangira gucuruzwa ku wa 19 Ukwakira yo izajya igurishwa amadolari 749.', '2018-10-09 11:51:52', '2018-10-09 11:51:52', 2, 'Uruganda rukora ibikoresho by’ikoranabuhanga rwa Apple rwamuritse iPhone eshatu nshya ndetse n’isaha ifite ubushobozi bwo kugenzura uko umutima utera.', 'visi_perezid6834-b23dd.jpg', 'image/jpeg', 73489, '2018-10-09 11:51:52');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20180930095045'),
('20180930095145'),
('20180930095502'),
('20181001121656'),
('20181007085737'),
('20181007090803'),
('20181007103213'),
('20181007103338'),
('20181008143113');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `password_salt` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password_hash`, `password_salt`, `created_at`, `updated_at`) VALUES
(1, 'Fiacre Iradukunda', 'iradukundafiacre@gmail.com', '$2a$10$LxZGUHEvE6jVpeHmCwl7KuYX5L5q96PpRzBfEv/pu.RrqBTXq4mt2', '$2a$10$LxZGUHEvE6jVpeHmCwl7Ku', '2018-10-04 11:26:01', '2018-10-07 09:52:11'),
(2, 'Habimana Jean de Dieu', 'jellywestkigali@gmail.com', '$2a$10$gw/chPV8qmbPmuWzU4KwNuXxHvc55ksloUrz1Js8FALqJ2iMkBXSC', '$2a$10$gw/chPV8qmbPmuWzU4KwNu', '2018-10-07 10:22:50', '2018-10-09 11:23:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ar_internal_metadata`
--
ALTER TABLE `ar_internal_metadata`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
