-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Ven 23 Avril 2021 à 08:27
-- Version du serveur :  5.7.33-0ubuntu0.18.04.1
-- Version de PHP :  7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `nom_de_ta_base`
--

-- --------------------------------------------------------

--
-- Structure de la table `accounts`
--

CREATE TABLE `accounts` (
  `name` varchar(255) NOT NULL,
  `owner` varchar(64) DEFAULT NULL,
  `money` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('bank_savings', 'Livret Bleu', 0),
('barber', 'Barbershop', 1),
('property_black_money', 'Argent Sale Propriété', 0),
('society_ambulance', 'Ambulance', 1),
('society_ammunation', 'Ammunation', 1),
('society_avocat', 'Avocat', 1),
('society_ballas', 'Ballas', 1),
('society_banker', 'Banque', 1),
('society_blanchisseur', 'blanchisseur', 1),
('society_burgershot', 'Burgershot', 1),
('society_cardealer', 'Concessionnaire', 1),
('society_families', 'Families', 1),
('society_fbi', 'FBI', 1),
('society_fishing', 'Poissonnerie', 1),
('society_fueler', 'Raffineur', 1),
('society_gouvernement', 'Gouvernement', 1),
('society_journaliste', 'journaliste', 1),
('society_kfc', 'kfc', 1),
('society_ltd', 'LTD', 1),
('society_lumberjack', 'Bûcheron', 1),
('society_mafia', 'Mafia', 1),
('society_marabunta', 'marabunta', 1),
('society_mecano', 'Mécano', 1),
('society_miner', 'Mineur', 1),
('society_motorcycle', 'Moto', 1),
('society_ms13', 'MS13', 1),
('society_police', 'Police', 1),
('society_qlf', 'QLF', 1),
('society_realestateagent', 'Agent immobilier', 1),
('society_slaughterer', 'Abatteur', 1),
('society_speedrap', 'Speed Rap', 1),
('society_surenos', 'Surenos', 1),
('society_tabac', 'Tabac', 1),
('society_tailer', 'Tailleur', 1),
('society_taxi', 'Taxi', 1),
('society_tequilala', 'Tequilala', 1),
('society_thelost', 'thelost', 1),
('society_unemployed2', 'Civil', 1),
('society_unicorn', 'Unicorn', 1),
('society_vagos', 'Vagos', 1),
('society_vigne', 'Vigneron', 1),
('society_weazelnews', 'Weazel News', 1),
('tattooshop', 'Salon de tatouage', 1);

-- --------------------------------------------------------

--
-- Structure de la table `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(2, 'society_police', 10000, NULL),
(3, 'society_ambulance', 10000, NULL),
(4, 'society_cardealer', 10000, NULL),
(5, 'society_mecano', 10000, NULL),
(9, 'society_miner', 10000, NULL),
(10, 'society_slaughterer', 10000, NULL),
(11, 'society_fueler', 10000, NULL),
(12, 'society_lumberjack', 10000, NULL),
(13, 'society_fishing', 10000, NULL),
(14, 'society_tailer', 10000, NULL),
(15, 'society_ballas', 10000, NULL),
(16, 'society_taxi', 10000, NULL),
(20, 'society_vigne', 10000, NULL),
(21, 'society_journaliste', 10000, NULL),
(24, 'society_gouv', 10000, NULL),
(25, 'society_realestateagent', 10000, NULL),
(27, 'society_unicorn', 9990, NULL),
(29, 'society_avocat', 10000, NULL),
(30, 'society_banker', 10000, NULL),
(109, 'society_burgershot', 10000, NULL),
(110, 'society_fbi', 10000, NULL),
(111, 'society_tequilala', 10000, NULL),
(113, 'property_black_money', 10000, 'steam:1100001337317d2'),
(120, 'society_ammunation', 10000, NULL),
(123, 'society_thelost', 10000, NULL),
(125, 'society_motorcycle', 10000, NULL),
(155, 'property_black_money', 10000, 'steam:11000013ebc94b6'),
(191, 'society_speedrap', 10000, NULL),
(233, 'society_surenos', 10000, NULL),
(261, 'society_gouvernement', 10000, NULL),
(267, 'property_black_money', 10000, 'steam:110000140d2267c'),
(402, 'society_tabac', 10000, NULL),
(403, 'society_ltd', 10000, NULL),
(404, 'society_police', 10000, NULL),
(405, 'society_tattoo', 10000, NULL),
(406, 'society_barber', 10000, NULL),
(662, 'barber', 10000, NULL),
(663, 'society_blanchisseur', 10000, NULL),
(664, 'society_families', 0, NULL),
(665, 'society_kfc', 10000, NULL),
(666, 'society_mafia', 0, NULL),
(667, 'society_marabunta', 0, NULL),
(668, 'society_ms13', 0, NULL),
(669, 'society_qlf', 0, NULL),
(670, 'society_vagos', 0, NULL),
(671, 'society_weazelnews', 10000, NULL),
(672, 'tattooshop', 10000, NULL),
(673, 'bank_savings', 0, 'steam:110000134661f32'),
(674, 'property_black_money', 0, 'steam:110000134661f32'),
(675, 'bank_savings', 0, 'steam:11000013e1a3942'),
(676, 'property_black_money', 0, 'steam:11000013e1a3942'),
(677, 'bank_savings', 0, 'steam:11000013e8d34e0'),
(678, 'property_black_money', 0, 'steam:11000013e8d34e0'),
(681, 'bank_savings', 0, 'steam:1100001337317d2'),
(682, 'bank_savings', 0, 'steam:110000141646959'),
(683, 'property_black_money', 0, 'steam:110000141646959'),
(684, 'bank_savings', 0, 'steam:1100001373d95d7'),
(685, 'property_black_money', 0, 'steam:1100001373d95d7'),
(686, 'bank_savings', 0, 'steam:110000140d2267c'),
(687, 'bank_savings', 0, 'steam:110000136df9ba3'),
(688, 'property_black_money', 0, 'steam:110000136df9ba3'),
(689, 'bank_savings', 0, 'steam:110000133f8f4fc'),
(690, 'property_black_money', 0, 'steam:110000133f8f4fc'),
(691, 'bank_savings', 0, 'steam:110000143cbf8d7'),
(692, 'property_black_money', 0, 'steam:110000143cbf8d7'),
(693, 'bank_savings', 0, 'steam:11000013ebc94b6'),
(694, 'property_black_money', 0, 'steam:110000143a5e8cc'),
(695, 'bank_savings', 0, 'steam:110000143a5e8cc'),
(696, 'bank_savings', 0, 'steam:110000141bd87ab'),
(697, 'property_black_money', 0, 'steam:110000141bd87ab'),
(700, 'bank_savings', 0, 'steam:11000011328bdf5'),
(701, 'property_black_money', 0, 'steam:11000011328bdf5'),
(702, 'bank_savings', 0, 'steam:1100001361915f4'),
(703, 'property_black_money', 0, 'steam:1100001361915f4'),
(704, 'bank_savings', 0, 'steam:110000133f666d5'),
(705, 'property_black_money', 0, 'steam:110000133f666d5'),
(706, 'bank_savings', 0, 'steam:110000145026598'),
(707, 'property_black_money', 0, 'steam:110000145026598'),
(710, 'property_black_money', 0, 'steam:110000119dd0187'),
(711, 'bank_savings', 0, 'steam:110000119dd0187'),
(714, 'property_black_money', 0, 'steam:11000011390c550'),
(715, 'bank_savings', 0, 'steam:11000011390c550'),
(720, 'bank_savings', 0, 'steam:11000013ca1f270'),
(721, 'property_black_money', 0, 'steam:11000013ca1f270'),
(722, 'bank_savings', 0, 'steam:1100001417a6a6e'),
(723, 'property_black_money', 0, 'steam:1100001417a6a6e'),
(724, 'bank_savings', 0, 'steam:110000136fbf2b2'),
(725, 'property_black_money', 0, 'steam:110000136fbf2b2'),
(726, 'bank_savings', 0, 'steam:1100001430938be'),
(727, 'property_black_money', 0, 'steam:1100001430938be'),
(728, 'bank_savings', 0, 'steam:11000011bce8bb5'),
(729, 'property_black_money', 0, 'steam:11000011bce8bb5'),
(730, 'property_black_money', 0, 'steam:11000011a156483'),
(731, 'bank_savings', 0, 'steam:11000011a156483'),
(732, 'bank_savings', 0, 'steam:110000107320f68'),
(733, 'property_black_money', 0, 'steam:110000107320f68'),
(734, 'property_black_money', 0, 'steam:110000146462de4'),
(735, 'bank_savings', 0, 'steam:110000146462de4'),
(736, 'bank_savings', 0, 'steam:110000141ec0a57'),
(737, 'property_black_money', 0, 'steam:110000141ec0a57'),
(738, 'bank_savings', 0, 'steam:11000013cfd632d'),
(739, 'property_black_money', 0, 'steam:11000013cfd632d'),
(740, 'bank_savings', 0, 'steam:11000013d03b50a'),
(741, 'property_black_money', 0, 'steam:11000013d03b50a'),
(742, 'bank_savings', 0, 'steam:11000013c168d39'),
(743, 'property_black_money', 0, 'steam:11000013c168d39'),
(744, 'bank_savings', 0, 'steam:11000014642b85c'),
(745, 'property_black_money', 0, 'steam:11000014642b85c'),
(746, 'bank_savings', 0, 'steam:11000014084b1c5'),
(747, 'property_black_money', 0, 'steam:11000014084b1c5'),
(748, 'bank_savings', 0, 'steam:1100001206834df'),
(749, 'property_black_money', 0, 'steam:1100001206834df'),
(750, 'bank_savings', 0, 'steam:1100001417888bb'),
(751, 'property_black_money', 0, 'steam:1100001417888bb'),
(752, 'bank_savings', 0, 'steam:110000145c3e4b6'),
(753, 'property_black_money', 0, 'steam:110000145c3e4b6'),
(754, 'bank_savings', 0, 'steam:11000013da98b98'),
(755, 'property_black_money', 0, 'steam:11000013da98b98'),
(758, 'bank_savings', 0, 'steam:11000013e1a8133'),
(759, 'property_black_money', 0, 'steam:11000013e1a8133'),
(760, 'bank_savings', 0, 'steam:110000140c0cece'),
(761, 'property_black_money', 0, 'steam:110000140c0cece'),
(762, 'bank_savings', 0, 'steam:11000013b7fe2c9'),
(763, 'property_black_money', 0, 'steam:11000013b7fe2c9'),
(764, 'bank_savings', 0, 'steam:110000141e731fe'),
(765, 'property_black_money', 0, 'steam:110000141e731fe'),
(766, 'bank_savings', 0, 'steam:1100001124e463f'),
(767, 'property_black_money', 0, 'steam:1100001124e463f'),
(768, 'bank_savings', 0, 'steam:110000145a81bcd'),
(769, 'property_black_money', 0, 'steam:110000145a81bcd'),
(770, 'bank_savings', 0, 'steam:110000143ba004d'),
(771, 'property_black_money', 0, 'steam:110000143ba004d'),
(772, 'bank_savings', 0, 'steam:110000146bf6a8f'),
(773, 'property_black_money', 0, 'steam:110000146bf6a8f'),
(774, 'bank_savings', 0, 'steam:1100001471c2b6a'),
(775, 'property_black_money', 0, 'steam:1100001471c2b6a'),
(776, 'bank_savings', 0, 'steam:11000013ebfc53d'),
(777, 'property_black_money', 0, 'steam:11000013ebfc53d'),
(778, 'bank_savings', 0, 'steam:11000013727fd62'),
(779, 'property_black_money', 0, 'steam:11000013727fd62'),
(780, 'bank_savings', 0, 'steam:1100001453eeda5'),
(781, 'property_black_money', 0, 'steam:1100001453eeda5'),
(782, 'bank_savings', 0, 'steam:1100001429aab9d'),
(783, 'property_black_money', 0, 'steam:1100001429aab9d'),
(784, 'property_black_money', 0, 'steam:11000013c698f5a'),
(785, 'bank_savings', 0, 'steam:11000013c698f5a'),
(786, 'bank_savings', 0, 'steam:110000146398e63'),
(787, 'property_black_money', 0, 'steam:110000146398e63'),
(788, 'bank_savings', 0, 'steam:1100001199c2baa'),
(789, 'property_black_money', 0, 'steam:1100001199c2baa'),
(790, 'bank_savings', 0, 'steam:110000132b1e172'),
(791, 'property_black_money', 0, 'steam:110000132b1e172'),
(792, 'bank_savings', 0, 'steam:11000014765bc73'),
(793, 'property_black_money', 0, 'steam:11000014765bc73'),
(794, 'bank_savings', 0, 'steam:110000146544985'),
(795, 'property_black_money', 0, 'steam:110000146544985'),
(796, 'bank_savings', 0, 'steam:1100001461e356b'),
(797, 'property_black_money', 0, 'steam:1100001461e356b'),
(798, 'bank_savings', 0, 'steam:1100001402c0657'),
(799, 'property_black_money', 0, 'steam:1100001402c0657'),
(800, 'bank_savings', 0, 'steam:11000011449fc52'),
(801, 'property_black_money', 0, 'steam:11000011449fc52'),
(802, 'society_unemployed2', 0, NULL),
(803, 'bank_savings', 0, 'steam:110000145e4e695'),
(804, 'property_black_money', 0, 'steam:110000145e4e695');

-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `addon_inventory`
--

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
('barber', 'Barbershop', 1),
('property', 'Propriété', 0),
('society_ambulance', 'Ambulance', 1),
('society_ammunation', 'Ammunation', 1),
('society_avocat', 'Avocat', 1),
('society_ballas', 'Ballas', 1),
('society_blanchisseur', 'blanchisseur', 1),
('society_burgershot', 'Burgershot', 1),
('society_burgershot_fridge', 'Burgershot(fridge)', 1),
('society_cardealer', 'Concesionnaire', 1),
('society_families', 'Families', 1),
('society_fbi', 'FBI', 1),
('society_fishing', 'Poissonnerie', 1),
('society_fueler', 'Raffineur', 1),
('society_gouvernement', 'Gouvernement', 1),
('society_journaliste', 'journaliste', 1),
('society_kfc', 'kfc', 1),
('society_kfc_fridge', 'kfc (frigo)', 1),
('society_ltd', 'LTD', 1),
('society_lumberjack', 'Bûcheron', 1),
('society_mafia', 'Mafia', 1),
('society_marabunta', 'marabunta', 1),
('society_mecano', 'Mécano', 1),
('society_miner', 'Mineur', 1),
('society_motorcycle', 'Moto', 1),
('society_ms13', 'MS13', 1),
('society_police', 'Police', 1),
('society_qlf', 'QLF', 1),
('society_slaughterer', 'Abatteur', 1),
('society_speedrap', 'Speed Rap', 1),
('society_surenos', 'Surenos', 1),
('society_tabac', 'Tabac', 1),
('society_tailer', 'Tailleur', 1),
('society_taxi', 'Taxi', 1),
('society_tequilala', 'Tequilala', 1),
('society_tequilala_fridge', 'Tequilala (frigo)', 1),
('society_thelost', 'thelost', 1),
('society_unemployed2', 'Civil', 1),
('society_unicorn', 'Unicorn', 1),
('society_unicorn_fridge', 'Unicorn (frigo)', 1),
('society_vagos', 'Vagos', 1),
('society_vigne', 'Vigneron', 1),
('society_weazelnews', 'Weazel News', 1),
('tattooshop', 'Salon de tatouage', 1);

-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `baninfo`
--

CREATE TABLE `baninfo` (
  `identifier` varchar(25) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `playername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `bank_transfer`
--

CREATE TABLE `bank_transfer` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `identifier` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `banlist`
--

CREATE TABLE `banlist` (
  `identifier` varchar(25) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetplayername` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `sourceplayername` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `timeat` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `expiration` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `permanent` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `banlisthistory`
--

CREATE TABLE `banlisthistory` (
  `id` int(11) NOT NULL,
  `identifier` varchar(25) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetplayername` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `sourceplayername` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `timeat` int(11) NOT NULL,
  `added` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `expiration` int(11) NOT NULL,
  `permanent` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `bike`
--

CREATE TABLE `bike` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `bike`
--

INSERT INTO `bike` (`name`, `model`, `price`, `category`) VALUES
('XMax', '20xmax', 200000, 'bikeimport'),
('Honda 450 CRF', '450crf', 16800, 'bikeimport'),
('Akuma', 'akuma', 4500, 'motos'),
('Avarus', 'avarus', 10000, 'motos'),
('Bagger', 'bagger', 5500, 'motos'),
('Bati 801', 'bati', 4000, 'motos'),
('Bati 801 RR', 'bati2', 7500, 'motos'),
('BF 400', 'bf400', 4000, 'motos'),
('Chimera', 'chimera', 35000, 'motos'),
('Cliffhanger', 'cliffhanger', 6500, 'motos'),
('Daemon', 'daemon', 5500, 'motos'),
('Daemon', 'daemon2', 7000, 'motos'),
('Defiler', 'Defiler', 6800, 'motos'),
('Diabolus', 'diablous', 15000, 'motos'),
('Diabolus Custom', 'diablous2', 25000, 'motos'),
('Double - T', 'double', 10000, 'motos'),
('Enduro', 'enduro', 5000, 'motos'),
('Esskey', 'esskey', 4200, 'motos'),
('Faggio Sport', 'faggio', 1000, 'motos'),
('Faggio Mod', 'faggio3', 2500, 'motos'),
('FCR 1000', 'fcr', 24000, 'motos'),
('FCR 1000 Custom', 'fcr2', 26000, 'motos'),
('MT-07', 'fz07', 100000, 'bikeimport'),
('Gargoyle', 'gargoyle', 7500, 'motos'),
('Hakuchou', 'hakuchou', 18000, 'motos'),
('Hexer', 'hexer', 12000, 'motos'),
('Innovation', 'innovation', 5000, 'motos'),
('Lectro', 'lectro', 5000, 'motos'),
('Manchez', 'manchez', 5300, 'motos'),
('Nemesis', 'nemesis', 5800, 'motos'),
('Nightblade', 'nightblade', 35000, 'motos'),
('PCJ 600', 'pcj', 6200, 'motos'),
('Rat Bike', 'ratbike', 5000, 'motos'),
('Ruffian', 'ruffian', 2000, 'motos'),
('Sanchez V2', 'sanchez', 4000, 'motos'),
('Sanchez 2', 'sanchez2', 4000, 'motos'),
('Sanctus', 'sanctus', 4500, 'motos'),
('Sovereign', 'sovereign', 25000, 'motos'),
('Thrust', 'thrust', 9000, 'motos'),
('TMax', 'tmax', 200000, 'bikeimport'),
('SuperMoto', 'trr', 10000, 'bikeimport'),
('Vader', 'vader', 25000, 'motos'),
('Vindicator', 'vindicator', 12000, 'motos'),
('Vortex', 'vortex', 5000, 'motos'),
('Wolfsbane', 'wolfsbane', 45000, 'motos'),
('Zombie Bobber', 'zombiea', 10000, 'motos'),
('Zombie Chopper', 'zombieb', 15000, 'motos');

-- --------------------------------------------------------

--
-- Structure de la table `bike_categories`
--

CREATE TABLE `bike_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `bike_categories`
--

INSERT INTO `bike_categories` (`name`, `label`) VALUES
('bikeimport', 'Moto Importées'),
('motos', 'Motos');

-- --------------------------------------------------------

--
-- Structure de la table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(40) NOT NULL,
  `sender` varchar(40) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(40) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `cardealer_vehicles`
--

CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `datastore`
--

CREATE TABLE `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `datastore`
--

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('barber', 'Barbershop', 1),
('property', 'Propriété', 0),
('society_ambulance', 'Ambulance', 1),
('society_ammunation', 'Ammunation', 1),
('society_avocat', 'Avocat', 1),
('society_ballas', 'Ballas', 1),
('society_blanchisseur', 'blanchisseur', 1),
('society_burgershot', 'Burgershot', 1),
('society_families', 'Families', 1),
('society_fbi', 'FBI', 1),
('society_fishing', 'Poissonnerie', 1),
('society_fueler', 'Raffineur', 1),
('society_gouvernement', 'Gouvernement', 1),
('society_journaliste', 'journaliste', 1),
('society_kfc', 'kfc', 1),
('society_lumberjack', 'Bûcheron', 1),
('society_mafia', 'Mafia', 1),
('society_marabunta', 'marabunta', 1),
('society_miner', 'Mineur', 1),
('society_ms13', 'MS13', 1),
('society_police', 'Police', 1),
('society_qlf', 'QLF', 1),
('society_slaughterer', 'Abatteur', 1),
('society_speedrap', 'Speed Rap', 1),
('society_surenos', 'Surenos', 1),
('society_tabac', 'Tabac', 1),
('society_tailer', 'Tailleur', 1),
('society_taxi', 'Taxi', 1),
('society_tequilala', 'Tequilala', 1),
('society_thelost', 'thelost', 1),
('society_unemployed2', 'Civil', 1),
('society_unicorn', 'Unicorn', 1),
('society_vagos', 'Vagos', 1),
('society_vigne', 'Vigneron', 1),
('tattooshop', 'Salon de tatouage', 1),
('user_ears', 'Ears', 0),
('user_glasses', 'Glasses', 0),
('user_helmet', 'Helmet', 0),
('user_mask', 'Mask', 0);

-- --------------------------------------------------------

--
-- Structure de la table `datastores`
--

CREATE TABLE `datastores` (
  `name` varchar(255) NOT NULL,
  `owner` varchar(64) DEFAULT NULL,
  `data` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `data` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(406, 'society_ballas', NULL, '{}'),
(408, 'society_families', NULL, '{}'),
(412, 'society_gouv', NULL, '{}'),
(416, 'society_ms13', NULL, '{}'),
(417, 'society_police', NULL, '{}'),
(423, 'society_unicorn', NULL, '{}'),
(446, 'society_ammunation', NULL, '{}'),
(452, 'society_thelost', NULL, '{}'),
(453, 'society_blanchisseur', NULL, '{}'),
(454, 'society_marabunta', NULL, '{}'),
(455, 'property', 'steam:11000011bce8bb5', '{}'),
(456, 'user_ears', 'steam:11000011bce8bb5', '{}'),
(458, 'user_helmet', 'steam:11000011bce8bb5', '{}'),
(460, 'property', 'steam:1100001337317d2', '{}'),
(463, 'user_helmet', 'steam:1100001337317d2', '{\"skin\":{\"helmet_1\":89,\"helmet_2\":0},\"hasHelmet\":true}'),
(464, 'user_mask', 'steam:1100001337317d2', '{}'),
(478, 'user_helmet', 'steam:1100001453d1a6f', '{}'),
(479, 'user_mask', 'steam:1100001453d1a6f', '{}'),
(480, 'property', 'steam:110000141bd87ab', '{}'),
(482, 'user_glasses', 'steam:110000141bd87ab', '{}'),
(483, 'user_helmet', 'steam:110000141bd87ab', '{}'),
(485, 'property', 'steam:11000011390c550', '{}'),
(486, 'user_ears', 'steam:11000011390c550', '{}'),
(487, 'user_glasses', 'steam:11000011390c550', '{}'),
(488, 'user_helmet', 'steam:11000011390c550', '{}'),
(489, 'user_mask', 'steam:11000011390c550', '{}'),
(490, 'property', 'steam:110000132b1e172', '{}'),
(493, 'user_helmet', 'steam:110000132b1e172', '{}'),
(494, 'user_mask', 'steam:110000132b1e172', '{}'),
(499, 'user_mask', 'steam:1100001468b905f', '{}'),
(507, 'user_glasses', 'steam:110000134236dda', '{}'),
(514, 'user_mask', 'steam:11000013d169232', '{}'),
(534, 'user_mask', 'steam:1100001459dfee5', '{}'),
(535, 'property', 'steam:110000143cbf8d7', '{}'),
(538, 'user_helmet', 'steam:110000143cbf8d7', '{}'),
(540, 'property', 'steam:11000013ebc94b6', '{}'),
(541, 'user_ears', 'steam:11000013ebc94b6', '{}'),
(542, 'user_glasses', 'steam:11000013ebc94b6', '{}'),
(543, 'user_helmet', 'steam:11000013ebc94b6', '{}'),
(544, 'user_mask', 'steam:11000013ebc94b6', '{}'),
(555, 'property', 'steam:11000013ec3b648', '{}'),
(556, 'user_ears', 'steam:11000013ec3b648', '{}'),
(557, 'user_glasses', 'steam:11000013ec3b648', '{}'),
(558, 'user_helmet', 'steam:11000013ec3b648', '{}'),
(559, 'user_mask', 'steam:11000013ec3b648', '{}'),
(561, 'user_glasses', 'steam:1100001325c33d5', '{}'),
(563, 'user_helmet', 'steam:1100001325c33d5', '{}'),
(564, 'user_mask', 'steam:1100001325c33d5', '{}'),
(565, 'property', 'steam:1100001463babfc', '{}'),
(567, 'user_glasses', 'steam:1100001463babfc', '{}'),
(569, 'user_mask', 'steam:1100001463babfc', '{}'),
(570, 'property', 'steam:110000142c5fd26', '{}'),
(572, 'user_glasses', 'steam:110000142c5fd26', '{}'),
(573, 'user_helmet', 'steam:110000142c5fd26', '{}'),
(574, 'user_mask', 'steam:110000142c5fd26', '{}'),
(579, 'user_mask', 'steam:11000014411a73a', '{}'),
(600, 'property', 'steam:110000114052647', '{}'),
(603, 'user_helmet', 'steam:110000114052647', '{}'),
(613, 'user_mask', 'steam:1100001464bb33e', '{}'),
(617, 'user_glasses', 'steam:11000014325de75', '{}'),
(618, 'user_helmet', 'steam:11000014325de75', '{}'),
(619, 'user_mask', 'steam:11000014325de75', '{}'),
(637, 'user_ears', 'steam:11000013ec91ba6', '{}'),
(638, 'user_glasses', 'steam:11000013ec91ba6', '{}'),
(639, 'user_helmet', 'steam:11000013ec91ba6', '{}'),
(640, 'user_mask', 'steam:11000013ec91ba6', '{}'),
(656, 'property', 'steam:11000013ed85a61', '{}'),
(659, 'user_helmet', 'steam:11000013ed85a61', '{}'),
(660, 'user_mask', 'steam:11000013ed85a61', '{}'),
(661, 'property', 'steam:11000010911df55', '{}'),
(663, 'user_glasses', 'steam:11000010911df55', '{}'),
(664, 'user_helmet', 'steam:11000010911df55', '{}'),
(665, 'user_mask', 'steam:11000010911df55', '{}'),
(666, 'property', 'steam:11000013c0b5d4e', '{}'),
(667, 'user_glasses', 'steam:11000013c0b5d4e', '{}'),
(668, 'user_helmet', 'steam:11000013c0b5d4e', '{}'),
(670, 'user_mask', 'steam:11000013c0b5d4e', '{}'),
(671, 'property', 'steam:110000141b8122c', '{}'),
(674, 'user_helmet', 'steam:110000141b8122c', '{}'),
(675, 'user_mask', 'steam:110000141b8122c', '{}'),
(676, 'property', 'steam:110000142645525', '{}'),
(683, 'user_helmet', 'steam:1100001413d182e', '{}'),
(686, 'property', 'steam:11000013e441c03', '{}'),
(689, 'user_helmet', 'steam:11000013e441c03', '{}'),
(712, 'property', 'steam:1100001436560af', '{}'),
(720, 'user_helmet', 'steam:110000145a1de7f', '{}'),
(724, 'user_glasses', 'steam:1100001043424bd', '{}'),
(726, 'user_helmet', 'steam:1100001043424bd', '{}'),
(732, 'property', 'steam:11000013cf047ad', '{}'),
(735, 'user_helmet', 'steam:11000013cf047ad', '{}'),
(737, 'society_surenos', NULL, '{}'),
(738, 'property', 'steam:11000014331c5ad', '{}'),
(743, 'user_glasses', 'steam:11000014405f67a', '{}'),
(744, 'user_helmet', 'steam:11000014405f67a', '{}'),
(746, 'user_ears', 'steam:11000014405f67a', '{}'),
(747, 'property', 'steam:11000014405f67a', '{}'),
(751, 'property', 'steam:1100001424d69d3', '{}'),
(763, 'property', 'steam:1100001470c1500', '{}'),
(770, 'property', 'steam:11000013cd3c11f', '{}'),
(774, 'property', 'steam:11000014566c993', '{}'),
(778, 'user_helmet', 'steam:11000014566c993', '{}'),
(779, 'property', 'steam:1100001454f9690', '{}'),
(782, 'user_helmet', 'steam:1100001454f9690', '{}'),
(804, 'society_gouvernement', NULL, '{}'),
(805, 'property', 'steam:11000013e9b6dff', '{}'),
(806, 'user_ears', 'steam:11000013e9b6dff', '{}'),
(807, 'user_glasses', 'steam:11000013e9b6dff', '{}'),
(808, 'user_helmet', 'steam:11000013e9b6dff', '{}'),
(815, 'property', 'steam:110000140d2267c', '{}'),
(817, 'user_helmet', 'steam:110000140d2267c', '{}'),
(820, 'property', 'steam:110000146f065c5', '{}'),
(822, 'user_helmet', 'steam:110000146f065c5', '{}'),
(824, 'user_glasses', 'steam:110000146f065c5', '{}'),
(825, 'property', 'steam:110000146e7a8dc', '{}'),
(830, 'property', 'steam:1100001373d95d7', '{}'),
(831, 'user_ears', 'steam:1100001373d95d7', '{}'),
(832, 'user_helmet', 'steam:1100001373d95d7', '{}'),
(834, 'user_glasses', 'steam:1100001373d95d7', '{}'),
(840, 'property', 'steam:11000010a8a56d9', '{}'),
(842, 'user_glasses', 'steam:11000010a8a56d9', '{}'),
(843, 'user_helmet', 'steam:11000010a8a56d9', '{}'),
(845, 'property', 'steam:11000014518180b', '{}'),
(855, 'property', 'steam:110000141febbc7', '{}'),
(857, 'user_glasses', 'steam:110000141febbc7', '{}'),
(861, 'property', 'steam:110000143c3e82a', '{}'),
(864, 'user_helmet', 'steam:110000143c3e82a', '{}'),
(865, 'property', 'steam:110000141646959', '{}'),
(868, 'user_glasses', 'steam:110000141646959', '{}'),
(869, 'user_helmet', 'steam:110000141646959', '{}'),
(870, 'property', 'steam:110000144936d51', '{}'),
(872, 'user_glasses', 'steam:110000144936d51', '{}'),
(873, 'user_helmet', 'steam:110000144936d51', '{}'),
(883, 'user_helmet', 'steam:110000144040a71', '{}'),
(900, 'property', 'steam:1100001427538f8', '{}'),
(905, 'property', 'steam:11000014450e22d', '{}'),
(910, 'property', 'steam:110000136fbf2b2', '{}'),
(913, 'user_helmet', 'steam:110000136fbf2b2', '{}'),
(920, 'property', 'steam:1100001341eefad', '{}'),
(922, 'user_helmet', 'steam:1100001341eefad', '{}'),
(935, 'property', 'steam:11000013f7fafc2', '{}'),
(936, 'user_ears', 'steam:11000013f7fafc2', '{}'),
(950, 'property', 'steam:110000142bd70ae', '{}'),
(952, 'user_glasses', 'steam:110000142bd70ae', '{}'),
(953, 'user_helmet', 'steam:110000142bd70ae', '{}'),
(960, 'property', 'steam:110000146da7e6f', '{}'),
(965, 'property', 'steam:11000013ee75d8c', '{}'),
(968, 'user_helmet', 'steam:11000013ee75d8c', '{}'),
(970, 'property', 'steam:11000014560ff34', '{}'),
(975, 'property', 'steam:110000145912f96', '{}'),
(980, 'property', 'steam:110000144e3f648', '{}'),
(983, 'user_helmet', 'steam:110000144e3f648', '{}'),
(1020, 'property', 'steam:11000013727fd62', '{}'),
(1021, 'user_ears', 'steam:11000013727fd62', '{}'),
(1022, 'user_glasses', 'steam:11000013727fd62', '{}'),
(1023, 'user_helmet', 'steam:11000013727fd62', '{}'),
(1025, 'property', 'steam:11000013e19123c', '{}'),
(1028, 'user_helmet', 'steam:11000013e19123c', '{}'),
(1036, 'user_ears', 'steam:110000144a10a84', '{}'),
(1037, 'user_glasses', 'steam:110000144a10a84', '{}'),
(1038, 'user_helmet', 'steam:110000144a10a84', '{}'),
(1110, 'property', 'steam:11000014020502f', '{}'),
(1113, 'user_helmet', 'steam:11000014020502f', '{}'),
(1127, 'user_glasses', 'steam:11000014493a2db', '{}'),
(1135, 'property', 'steam:1100001134a8fb0', '{}'),
(1138, 'user_helmet', 'steam:1100001134a8fb0', '{}'),
(1140, 'property', 'steam:110000141f3a16f', '{}'),
(1142, 'user_glasses', 'steam:110000141f3a16f', '{}'),
(1146, 'property', 'steam:1100001416b16df', '{}'),
(1147, 'user_glasses', 'steam:1100001416b16df', '{}'),
(1148, 'user_helmet', 'steam:1100001416b16df', '{}'),
(1158, 'property', 'steam:110000136df9ba3', '{}'),
(1159, 'user_ears', 'steam:110000136df9ba3', '{}'),
(1160, 'user_glasses', 'steam:110000136df9ba3', '{}'),
(1161, 'user_helmet', 'steam:110000136df9ba3', '{}'),
(1173, 'property', 'steam:11000013e8d34e0', '{}'),
(1176, 'user_helmet', 'steam:11000013e8d34e0', '{}'),
(1178, 'property', 'steam:110000133f666d5', '{}'),
(1180, 'user_glasses', 'steam:110000133f666d5', '{}'),
(1188, 'property', 'steam:11000013fb70943', '{}'),
(1198, 'property', 'steam:110000145b88913', '{}'),
(1200, 'user_glasses', 'steam:110000145b88913', '{}'),
(1203, 'property', 'steam:1100001469c5625', '{}'),
(1206, 'user_helmet', 'steam:1100001469c5625', '{}'),
(1208, 'property', 'steam:11000013f80c10a', '{}'),
(1209, 'user_ears', 'steam:11000013f80c10a', '{}'),
(1210, 'user_helmet', 'steam:11000013f80c10a', '{}'),
(1213, 'property', 'steam:1100001475d0dc9', '{}'),
(1218, 'property', 'steam:11000013ce75f07', '{}'),
(1224, 'property', 'steam:11000014764fa5a', '{}'),
(1225, 'user_glasses', 'steam:11000014764fa5a', '{}'),
(1233, 'property', 'steam:1100001417a6a6e', '{}'),
(1238, 'property', 'steam:11000011328bdf5', '{}'),
(1273, 'property', 'steam:110000114045344', '{}'),
(1278, 'property', 'steam:110000131da2de5', '{}'),
(1283, 'property', 'steam:11000010ef4fa27', '{}'),
(1286, 'user_helmet', 'steam:11000010ef4fa27', '{}'),
(1288, 'property', 'steam:110000109adb6fc', '{}'),
(1300, 'user_glasses', 'steam:11000013e7b3b65', '{}'),
(1313, 'property', 'steam:1100001429aab9d', '{}'),
(1315, 'user_glasses', 'steam:1100001429aab9d', '{}'),
(1328, 'property', 'steam:11000014778b1ca', '{}'),
(1343, 'property', 'steam:1100001453f29e6', '{}'),
(1383, 'property', 'steam:11000014642b85c', '{}'),
(1386, 'user_helmet', 'steam:11000014642b85c', '{}'),
(1388, 'property', 'steam:1100001373344fd', '{}'),
(1391, 'user_helmet', 'steam:1100001373344fd', '{}'),
(1702, 'barber', NULL, '{}'),
(1703, 'society_ambulance', NULL, '{}'),
(1704, 'society_avocat', NULL, '{}'),
(1705, 'society_burgershot', NULL, '{}'),
(1706, 'society_fbi', NULL, '{}'),
(1707, 'society_fishing', NULL, '{}'),
(1708, 'society_fueler', NULL, '{}'),
(1709, 'society_journaliste', NULL, '{}'),
(1710, 'society_kfc', NULL, '{}'),
(1711, 'society_lumberjack', NULL, '{}'),
(1712, 'society_mafia', NULL, '{}'),
(1713, 'society_miner', NULL, '{}'),
(1714, 'society_qlf', NULL, '{}'),
(1715, 'society_slaughterer', NULL, '{}'),
(1716, 'society_speedrap', NULL, '{}'),
(1717, 'society_tabac', NULL, '{}'),
(1718, 'society_tailer', NULL, '{}'),
(1719, 'society_taxi', NULL, '{}'),
(1720, 'society_tequilala', NULL, '{}'),
(1721, 'society_vagos', NULL, '{}'),
(1722, 'society_vigne', NULL, '{}'),
(1723, 'tattooshop', NULL, '{}'),
(1724, 'property', 'steam:110000134661f32', '{}'),
(1725, 'user_ears', 'steam:110000134661f32', '{}'),
(1726, 'user_glasses', 'steam:110000134661f32', '{}'),
(1727, 'user_helmet', 'steam:110000134661f32', '{}'),
(1728, 'user_mask', 'steam:110000134661f32', '{}'),
(1729, 'property', 'steam:11000013e1a3942', '{}'),
(1730, 'user_ears', 'steam:11000013e1a3942', '{}'),
(1731, 'user_glasses', 'steam:11000013e1a3942', '{}'),
(1732, 'user_helmet', 'steam:11000013e1a3942', '{}'),
(1733, 'user_mask', 'steam:11000013e1a3942', '{}'),
(1734, 'user_ears', 'steam:11000013e8d34e0', '{}'),
(1735, 'user_glasses', 'steam:11000013e8d34e0', '{}'),
(1736, 'user_mask', 'steam:11000013e8d34e0', '{}'),
(1740, 'user_ears', 'steam:1100001337317d2', '{}'),
(1741, 'user_glasses', 'steam:1100001337317d2', '{}'),
(1742, 'user_ears', 'steam:110000141646959', '{}'),
(1743, 'user_mask', 'steam:110000141646959', '{}'),
(1744, 'user_mask', 'steam:1100001373d95d7', '{}'),
(1745, 'user_ears', 'steam:110000140d2267c', '{}'),
(1746, 'user_glasses', 'steam:110000140d2267c', '{}'),
(1747, 'user_mask', 'steam:110000140d2267c', '{}'),
(1748, 'user_mask', 'steam:110000136df9ba3', '{}'),
(1749, 'property', 'steam:110000133f8f4fc', '{}'),
(1750, 'user_ears', 'steam:110000133f8f4fc', '{}'),
(1751, 'user_glasses', 'steam:110000133f8f4fc', '{}'),
(1752, 'user_helmet', 'steam:110000133f8f4fc', '{}'),
(1753, 'user_mask', 'steam:110000133f8f4fc', '{}'),
(1754, 'user_ears', 'steam:110000143cbf8d7', '{}'),
(1755, 'user_glasses', 'steam:110000143cbf8d7', '{}'),
(1756, 'user_mask', 'steam:110000143cbf8d7', '{}'),
(1757, 'property', 'steam:110000143a5e8cc', '{}'),
(1758, 'user_helmet', 'steam:110000143a5e8cc', '{}'),
(1759, 'user_ears', 'steam:110000143a5e8cc', '{}'),
(1760, 'user_glasses', 'steam:110000143a5e8cc', '{}'),
(1761, 'user_mask', 'steam:110000143a5e8cc', '{}'),
(1762, 'user_mask', 'steam:110000141bd87ab', '{}'),
(1763, 'user_ears', 'steam:110000141bd87ab', '{}'),
(1766, 'user_helmet', 'steam:11000011328bdf5', '{}'),
(1767, 'user_ears', 'steam:11000011328bdf5', '{}'),
(1768, 'user_glasses', 'steam:11000011328bdf5', '{}'),
(1769, 'user_mask', 'steam:11000011328bdf5', '{}'),
(1770, 'property', 'steam:1100001361915f4', '{}'),
(1771, 'user_ears', 'steam:1100001361915f4', '{}'),
(1772, 'user_glasses', 'steam:1100001361915f4', '{}'),
(1773, 'user_helmet', 'steam:1100001361915f4', '{}'),
(1774, 'user_mask', 'steam:1100001361915f4', '{}'),
(1775, 'user_helmet', 'steam:110000133f666d5', '{}'),
(1776, 'user_mask', 'steam:110000133f666d5', '{}'),
(1777, 'user_ears', 'steam:110000133f666d5', '{}'),
(1778, 'property', 'steam:110000145026598', '{}'),
(1779, 'user_ears', 'steam:110000145026598', '{}'),
(1780, 'user_glasses', 'steam:110000145026598', '{}'),
(1781, 'user_helmet', 'steam:110000145026598', '{}'),
(1782, 'user_mask', 'steam:110000145026598', '{}'),
(1785, 'user_mask', 'steam:110000119dd0187', '{}'),
(1786, 'user_helmet', 'steam:110000119dd0187', '{}'),
(1787, 'property', 'steam:110000119dd0187', '{}'),
(1788, 'user_glasses', 'steam:110000119dd0187', '{}'),
(1789, 'user_ears', 'steam:110000119dd0187', '{}'),
(1799, 'user_ears', 'steam:11000013ca1f270', '{}'),
(1800, 'user_glasses', 'steam:11000013ca1f270', '{}'),
(1801, 'property', 'steam:11000013ca1f270', '{}'),
(1802, 'user_helmet', 'steam:11000013ca1f270', '{}'),
(1803, 'user_mask', 'steam:11000013ca1f270', '{}'),
(1804, 'user_ears', 'steam:1100001417a6a6e', '{}'),
(1805, 'user_helmet', 'steam:1100001417a6a6e', '{}'),
(1806, 'user_mask', 'steam:1100001417a6a6e', '{}'),
(1807, 'user_glasses', 'steam:1100001417a6a6e', '{}'),
(1808, 'user_glasses', 'steam:110000136fbf2b2', '{}'),
(1809, 'user_ears', 'steam:110000136fbf2b2', '{}'),
(1810, 'user_mask', 'steam:110000136fbf2b2', '{}'),
(1811, 'property', 'steam:1100001430938be', '{}'),
(1812, 'user_ears', 'steam:1100001430938be', '{}'),
(1813, 'user_glasses', 'steam:1100001430938be', '{}'),
(1814, 'user_helmet', 'steam:1100001430938be', '{}'),
(1815, 'user_mask', 'steam:1100001430938be', '{}'),
(1816, 'user_mask', 'steam:11000011bce8bb5', '{}'),
(1817, 'user_glasses', 'steam:11000011bce8bb5', '{}'),
(1818, 'user_ears', 'steam:11000011a156483', '{}'),
(1819, 'property', 'steam:11000011a156483', '{}'),
(1820, 'user_glasses', 'steam:11000011a156483', '{}'),
(1821, 'user_helmet', 'steam:11000011a156483', '{}'),
(1822, 'user_mask', 'steam:11000011a156483', '{}'),
(1823, 'property', 'steam:110000107320f68', '{}'),
(1824, 'user_ears', 'steam:110000107320f68', '{}'),
(1825, 'user_glasses', 'steam:110000107320f68', '{}'),
(1826, 'user_helmet', 'steam:110000107320f68', '{}'),
(1827, 'user_mask', 'steam:110000107320f68', '{}'),
(1828, 'property', 'steam:110000146462de4', '{}'),
(1829, 'user_ears', 'steam:110000146462de4', '{}'),
(1830, 'user_glasses', 'steam:110000146462de4', '{}'),
(1831, 'user_mask', 'steam:110000146462de4', '{}'),
(1832, 'user_helmet', 'steam:110000146462de4', '{}'),
(1833, 'property', 'steam:110000141ec0a57', '{}'),
(1834, 'user_ears', 'steam:110000141ec0a57', '{}'),
(1835, 'user_glasses', 'steam:110000141ec0a57', '{}'),
(1836, 'user_helmet', 'steam:110000141ec0a57', '{}'),
(1837, 'user_mask', 'steam:110000141ec0a57', '{}'),
(1838, 'user_ears', 'steam:11000013cfd632d', '{}'),
(1839, 'property', 'steam:11000013cfd632d', '{}'),
(1840, 'user_glasses', 'steam:11000013cfd632d', '{}'),
(1841, 'user_helmet', 'steam:11000013cfd632d', '{}'),
(1842, 'user_mask', 'steam:11000013cfd632d', '{}'),
(1843, 'user_ears', 'steam:11000013d03b50a', '{}'),
(1844, 'user_helmet', 'steam:11000013d03b50a', '{}'),
(1845, 'user_mask', 'steam:11000013d03b50a', '{}'),
(1846, 'property', 'steam:11000013d03b50a', '{}'),
(1847, 'user_glasses', 'steam:11000013d03b50a', '{}'),
(1848, 'property', 'steam:11000013c168d39', '{}'),
(1849, 'user_ears', 'steam:11000013c168d39', '{}'),
(1850, 'user_glasses', 'steam:11000013c168d39', '{}'),
(1851, 'user_helmet', 'steam:11000013c168d39', '{}'),
(1852, 'user_mask', 'steam:11000013c168d39', '{}'),
(1853, 'user_glasses', 'steam:11000014642b85c', '{}'),
(1854, 'user_ears', 'steam:11000014642b85c', '{}'),
(1855, 'user_mask', 'steam:11000014642b85c', '{}'),
(1856, 'property', 'steam:11000014084b1c5', '{}'),
(1857, 'user_ears', 'steam:11000014084b1c5', '{}'),
(1858, 'user_glasses', 'steam:11000014084b1c5', '{}'),
(1859, 'user_helmet', 'steam:11000014084b1c5', '{}'),
(1860, 'user_mask', 'steam:11000014084b1c5', '{}'),
(1861, 'property', 'steam:1100001206834df', '{}'),
(1862, 'user_ears', 'steam:1100001206834df', '{}'),
(1863, 'user_glasses', 'steam:1100001206834df', '{}'),
(1864, 'user_helmet', 'steam:1100001206834df', '{}'),
(1865, 'user_mask', 'steam:1100001206834df', '{}'),
(1866, 'property', 'steam:1100001417888bb', '{}'),
(1867, 'user_ears', 'steam:1100001417888bb', '{}'),
(1868, 'user_glasses', 'steam:1100001417888bb', '{}'),
(1869, 'user_helmet', 'steam:1100001417888bb', '{}'),
(1870, 'user_mask', 'steam:1100001417888bb', '{}'),
(1871, 'property', 'steam:110000145c3e4b6', '{}'),
(1872, 'user_ears', 'steam:110000145c3e4b6', '{}'),
(1873, 'user_glasses', 'steam:110000145c3e4b6', '{}'),
(1874, 'user_helmet', 'steam:110000145c3e4b6', '{}'),
(1875, 'user_mask', 'steam:110000145c3e4b6', '{}'),
(1876, 'property', 'steam:11000013da98b98', '{}'),
(1877, 'user_ears', 'steam:11000013da98b98', '{}'),
(1878, 'user_glasses', 'steam:11000013da98b98', '{}'),
(1879, 'user_helmet', 'steam:11000013da98b98', '{}'),
(1880, 'user_mask', 'steam:11000013da98b98', '{}'),
(1884, 'user_ears', 'steam:11000013e1a8133', '{}'),
(1885, 'property', 'steam:11000013e1a8133', '{}'),
(1886, 'user_glasses', 'steam:11000013e1a8133', '{}'),
(1887, 'user_helmet', 'steam:11000013e1a8133', '{}'),
(1888, 'user_mask', 'steam:11000013e1a8133', '{}'),
(1889, 'property', 'steam:110000140c0cece', '{}'),
(1890, 'user_ears', 'steam:110000140c0cece', '{}'),
(1891, 'user_glasses', 'steam:110000140c0cece', '{}'),
(1892, 'user_helmet', 'steam:110000140c0cece', '{}'),
(1893, 'user_mask', 'steam:110000140c0cece', '{}'),
(1894, 'property', 'steam:11000013b7fe2c9', '{}'),
(1895, 'user_ears', 'steam:11000013b7fe2c9', '{}'),
(1896, 'user_glasses', 'steam:11000013b7fe2c9', '{}'),
(1897, 'user_helmet', 'steam:11000013b7fe2c9', '{}'),
(1898, 'user_mask', 'steam:11000013b7fe2c9', '{}'),
(1899, 'property', 'steam:110000141e731fe', '{}'),
(1900, 'user_ears', 'steam:110000141e731fe', '{}'),
(1901, 'user_glasses', 'steam:110000141e731fe', '{}'),
(1902, 'user_helmet', 'steam:110000141e731fe', '{}'),
(1903, 'user_mask', 'steam:110000141e731fe', '{}'),
(1904, 'property', 'steam:1100001124e463f', '{}'),
(1905, 'user_ears', 'steam:1100001124e463f', '{}'),
(1906, 'user_glasses', 'steam:1100001124e463f', '{}'),
(1907, 'user_helmet', 'steam:1100001124e463f', '{}'),
(1908, 'user_mask', 'steam:1100001124e463f', '{}'),
(1909, 'user_ears', 'steam:110000145a81bcd', '{}'),
(1910, 'property', 'steam:110000145a81bcd', '{}'),
(1911, 'user_glasses', 'steam:110000145a81bcd', '{}'),
(1912, 'user_helmet', 'steam:110000145a81bcd', '{}'),
(1913, 'user_mask', 'steam:110000145a81bcd', '{}'),
(1914, 'property', 'steam:110000143ba004d', '{}'),
(1915, 'user_glasses', 'steam:110000143ba004d', '{}'),
(1916, 'user_helmet', 'steam:110000143ba004d', '{}'),
(1917, 'user_mask', 'steam:110000143ba004d', '{}'),
(1918, 'user_ears', 'steam:110000143ba004d', '{}'),
(1919, 'property', 'steam:110000146bf6a8f', '{}'),
(1920, 'user_ears', 'steam:110000146bf6a8f', '{}'),
(1921, 'user_glasses', 'steam:110000146bf6a8f', '{}'),
(1922, 'user_helmet', 'steam:110000146bf6a8f', '{}'),
(1923, 'user_mask', 'steam:110000146bf6a8f', '{}'),
(1924, 'property', 'steam:1100001471c2b6a', '{}'),
(1925, 'user_ears', 'steam:1100001471c2b6a', '{}'),
(1926, 'user_glasses', 'steam:1100001471c2b6a', '{}'),
(1927, 'user_helmet', 'steam:1100001471c2b6a', '{}'),
(1928, 'user_mask', 'steam:1100001471c2b6a', '{}'),
(1929, 'property', 'steam:11000013ebfc53d', '{}'),
(1930, 'user_ears', 'steam:11000013ebfc53d', '{}'),
(1931, 'user_glasses', 'steam:11000013ebfc53d', '{}'),
(1932, 'user_helmet', 'steam:11000013ebfc53d', '{}'),
(1933, 'user_mask', 'steam:11000013ebfc53d', '{}'),
(1934, 'user_mask', 'steam:11000013727fd62', '{}'),
(1935, 'property', 'steam:1100001453eeda5', '{}'),
(1936, 'user_ears', 'steam:1100001453eeda5', '{}'),
(1937, 'user_glasses', 'steam:1100001453eeda5', '{}'),
(1938, 'user_helmet', 'steam:1100001453eeda5', '{}'),
(1939, 'user_mask', 'steam:1100001453eeda5', '{}'),
(1940, 'user_ears', 'steam:1100001429aab9d', '{}'),
(1941, 'user_mask', 'steam:1100001429aab9d', '{}'),
(1942, 'user_helmet', 'steam:1100001429aab9d', '{}'),
(1943, 'property', 'steam:11000013c698f5a', '{}'),
(1944, 'user_ears', 'steam:11000013c698f5a', '{}'),
(1945, 'user_glasses', 'steam:11000013c698f5a', '{}'),
(1946, 'user_helmet', 'steam:11000013c698f5a', '{}'),
(1947, 'user_mask', 'steam:11000013c698f5a', '{}'),
(1948, 'property', 'steam:110000146398e63', '{}'),
(1949, 'user_ears', 'steam:110000146398e63', '{}'),
(1950, 'user_glasses', 'steam:110000146398e63', '{}'),
(1951, 'user_helmet', 'steam:110000146398e63', '{}'),
(1952, 'user_mask', 'steam:110000146398e63', '{}'),
(1953, 'property', 'steam:1100001199c2baa', '{}'),
(1954, 'user_ears', 'steam:1100001199c2baa', '{}'),
(1955, 'user_glasses', 'steam:1100001199c2baa', '{}'),
(1956, 'user_helmet', 'steam:1100001199c2baa', '{}'),
(1957, 'user_mask', 'steam:1100001199c2baa', '{}'),
(1958, 'user_ears', 'steam:110000132b1e172', '{}'),
(1959, 'user_glasses', 'steam:110000132b1e172', '{}'),
(1960, 'property', 'steam:11000014765bc73', '{}'),
(1961, 'user_ears', 'steam:11000014765bc73', '{}'),
(1962, 'user_glasses', 'steam:11000014765bc73', '{}'),
(1963, 'user_helmet', 'steam:11000014765bc73', '{}'),
(1964, 'user_mask', 'steam:11000014765bc73', '{}'),
(1965, 'property', 'steam:110000146544985', '{}'),
(1966, 'user_ears', 'steam:110000146544985', '{}'),
(1967, 'user_glasses', 'steam:110000146544985', '{}'),
(1968, 'user_mask', 'steam:110000146544985', '{}'),
(1969, 'user_helmet', 'steam:110000146544985', '{}'),
(1970, 'property', 'steam:1100001461e356b', '{}'),
(1971, 'user_ears', 'steam:1100001461e356b', '{}'),
(1972, 'user_glasses', 'steam:1100001461e356b', '{}'),
(1973, 'user_helmet', 'steam:1100001461e356b', '{}'),
(1974, 'user_mask', 'steam:1100001461e356b', '{}'),
(1975, 'property', 'steam:1100001402c0657', '{}'),
(1976, 'user_ears', 'steam:1100001402c0657', '{}'),
(1977, 'user_glasses', 'steam:1100001402c0657', '{}'),
(1978, 'user_helmet', 'steam:1100001402c0657', '{}'),
(1979, 'user_mask', 'steam:1100001402c0657', '{}'),
(1980, 'property', 'steam:11000011449fc52', '{}'),
(1981, 'user_ears', 'steam:11000011449fc52', '{}'),
(1982, 'user_helmet', 'steam:11000011449fc52', '{}'),
(1983, 'user_glasses', 'steam:11000011449fc52', '{}'),
(1984, 'user_mask', 'steam:11000011449fc52', '{}'),
(1985, 'society_unemployed2', NULL, '{}'),
(1986, 'property', 'steam:110000145e4e695', '{}'),
(1987, 'user_ears', 'steam:110000145e4e695', '{}'),
(1988, 'user_glasses', 'steam:110000145e4e695', '{}'),
(1989, 'user_helmet', 'steam:110000145e4e695', '{}'),
(1990, 'user_mask', 'steam:110000145e4e695', '{}');

-- --------------------------------------------------------

--
-- Structure de la table `dpkeybinds`
--

CREATE TABLE `dpkeybinds` (
  `id` varchar(50) DEFAULT NULL,
  `keybind1` varchar(50) DEFAULT 'num4',
  `emote1` varchar(255) DEFAULT '',
  `keybind2` varchar(50) DEFAULT 'num5',
  `emote2` varchar(255) DEFAULT '',
  `keybind3` varchar(50) DEFAULT 'num6',
  `emote3` varchar(255) DEFAULT '',
  `keybind4` varchar(50) DEFAULT 'num7',
  `emote4` varchar(255) DEFAULT '',
  `keybind5` varchar(50) DEFAULT 'num8',
  `emote5` varchar(255) DEFAULT '',
  `keybind6` varchar(50) DEFAULT 'num9',
  `emote6` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `fine_types`
--

CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `fine_types`
--

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Usage abusif du klaxon', 20, 0),
(2, 'Franchir une ligne continue', 40, 0),
(3, 'Circulation à contresens', 60, 0),
(4, 'Demi-tour non autorisé', 60, 0),
(5, 'Circulation hors-route', 90, 0),
(6, 'Non-respect des distances de sécurité', 15, 0),
(7, 'Arrêt dangereux / interdit', 100, 0),
(8, 'Stationnement gênant / interdit', 100, 0),
(9, 'Non respect  de la priorité à droite', 20, 0),
(10, 'Non-respect à un véhicule prioritaire', 20, 0),
(11, 'Non-respect d\'un stop', 10, 0),
(12, 'Non-respect d\'un feu rouge', 10, 0),
(13, 'Dépassement dangereux', 90, 0),
(14, 'Véhicule non en état', 150, 0),
(15, 'Conduite sans permis', 2000, 0),
(16, 'Délit de fuite', 7500, 0),
(17, 'Excès de vitesse < 5 kmh', 25, 0),
(18, 'Excès de vitesse 5-15 kmh', 50, 0),
(19, 'Excès de vitesse 15-30 kmh', 75, 0),
(20, 'Excès de vitesse > 30 kmh', 100, 0),
(21, 'Entrave de la circulation', 75, 1),
(22, 'Dégradation de la voie publique', 200, 1),
(23, 'Trouble à l\'ordre publique', 100, 1),
(24, 'Entrave opération de police', 300, 1),
(25, 'Insulte envers / entre civils', 80, 1),
(27, 'Menace verbale ou intimidation envers civil', 100, 1),
(28, 'Menace verbale ou intimidation envers policier', 500, 1),
(29, 'Manifestation illégale', 5000, 1),
(30, 'Tentative de corruption', 1500, 1),
(31, 'Arme blanche sortie en ville', 250, 2),
(32, 'Arme léthale sortie en ville', 500, 2),
(33, 'Port d\'arme non autorisé (défaut de license)', 2500, 2),
(34, 'Port d\'arme illégal', 4000, 2),
(35, 'Prise en flag lockpick', 500, 2),
(36, 'Vol de voiture', 4000, 2),
(37, 'Vente de drogue', 3000, 2),
(38, 'Fabriquation de drogue', 4500, 2),
(39, 'Possession de drogue', 500, 2),
(40, 'Prise d\'ôtage civil', 15000, 2),
(41, 'Prise d\'ôtage agent de l\'état', 30000, 2),
(42, 'Braquage de supérette', 2500, 2),
(43, 'Braquage de fleeca', 15000, 2),
(44, 'Braquage de banque', 100000, 2),
(45, 'Tir sur civil', 20000, 3),
(46, 'Tir sur agent de l\'état', 35000, 3),
(47, 'Tentative de meurtre sur civil', 30000, 3),
(48, 'Tentative de meurtre sur agent de l\'état', 50000, 3),
(49, 'Meurtre sur civil', 75000, 3),
(50, 'Meurte sur agent de l\'état', 100000, 3),
(51, 'Meurtre involontaire', 20000, 3),
(52, 'Escroquerie à l\'entreprise', 15000, 2);

-- --------------------------------------------------------

--
-- Structure de la table `fine_types_ballas`
--

CREATE TABLE `fine_types_ballas` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `fine_types_ballas`
--

INSERT INTO `fine_types_ballas` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Structure de la table `fine_types_blanchisseur`
--

CREATE TABLE `fine_types_blanchisseur` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `fine_types_blanchisseur`
--

INSERT INTO `fine_types_blanchisseur` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Structure de la table `fine_types_families`
--

CREATE TABLE `fine_types_families` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `fine_types_families`
--

INSERT INTO `fine_types_families` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Structure de la table `fine_types_marabunta`
--

CREATE TABLE `fine_types_marabunta` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `fine_types_marabunta`
--

INSERT INTO `fine_types_marabunta` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Structure de la table `fine_types_ms13`
--

CREATE TABLE `fine_types_ms13` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `fine_types_ms13`
--

INSERT INTO `fine_types_ms13` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Structure de la table `fine_types_surenos`
--

CREATE TABLE `fine_types_surenos` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `fine_types_surenos`
--

INSERT INTO `fine_types_surenos` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Structure de la table `fine_types_thelost`
--

CREATE TABLE `fine_types_thelost` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `fine_types_thelost`
--

INSERT INTO `fine_types_thelost` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Structure de la table `fine_types_unemployed2`
--

CREATE TABLE `fine_types_unemployed2` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `fine_types_unemployed2`
--

INSERT INTO `fine_types_unemployed2` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Structure de la table `fine_types_vagos`
--

CREATE TABLE `fine_types_vagos` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `fine_types_vagos`
--

INSERT INTO `fine_types_vagos` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Structure de la table `h4ci_item`
--

CREATE TABLE `h4ci_item` (
  `id` int(11) NOT NULL,
  `identifier` varchar(100) NOT NULL,
  `nom` varchar(100) NOT NULL DEFAULT 'Nom tenue non attribué',
  `contenu` longtext,
  `type` varchar(100) NOT NULL DEFAULT 'Vetement'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `inventories`
--

CREATE TABLE `inventories` (
  `name` varchar(255) NOT NULL,
  `owner` varchar(64) DEFAULT NULL,
  `items` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `items`
--

CREATE TABLE `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `limit` int(11) NOT NULL DEFAULT '-1',
  `rare` int(11) NOT NULL DEFAULT '0',
  `can_remove` int(11) NOT NULL DEFAULT '1',
  `weight` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `items`
--

INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
('acier', 'Acier', 1000, 0, 1, 1000),
('bagofjewels', 'Sac de Bijoux', 1000, 0, 1, 1000),
('bandage', 'Bandage', 1000, 0, 1, 1000),
('beer', 'Bière', 1000, 0, 1, 1000),
('binoculars', 'Binoculars', 1000, 0, 1, 1000),
('blowpipe', 'Chalumeaux', 1000, 0, 1, 1000),
('bolcacahuetes', 'Bol de cacahuètes', 1000, 0, 1, 1000),
('bolchips', 'Bol de chips', 1000, 0, 1, 1000),
('bolnoixcajou', 'Bol de noix de cajou', 1000, 0, 1, 1000),
('bolpistache', 'Bol de pistaches', 1000, 0, 1, 1000),
('bracelet', 'Bracelet', 1000, 0, 1, 1000),
('braceletgps', 'Bracelet GPS', 1000, 1, 0, 1000),
('bread', 'Pain', 1000, 0, 1, 1000),
('bulletproof', 'Gilet Par-Balle', 1000, 0, 1, 1000),
('burger', 'Hamburger', 1000, 0, 1, 1000),
('caisseketchup', 'Caisse de Ketchup', 1000, 0, 1, 1000),
('carbon', 'Carbone', 1000, 0, 1, 1000),
('carokit', 'Kit carosserie', 1000, 0, 1, 1000),
('carotool', 'Outils Carrosserie', 1000, 0, 1, 1000),
('cartebanque', 'Carte Bancaire', 1000, 0, 1, 1000),
('ccheese', 'Tranches de fromage', 1000, 0, 1, 1000),
('cheese', 'Fromage', 1000, 0, 1, 1000),
('chips', 'Paquet de Chips', 1000, 0, 1, 1000),
('chocolate', 'Chocolat', 1000, 0, 1, 1000),
('cigarett', 'Cigarette', 1000, 0, 1, 1000),
('cles', 'Clés véhicules', 1000, 0, 1, 1000),
('clettuce', 'Laitue hachée', 1000, 0, 1, 1000),
('clip', 'Chargeur', 1000, 0, 1, 1000),
('cocacola', 'Coca-cola', 1000, 0, 1, 1000),
('coffe', 'Café', 1000, 0, 1, 1000),
('coke', 'Coke', 1000, 0, 1, 1000),
('coke_pooch', 'Pochon de coke', 1000, 0, 1, 1000),
('copper', 'Cuivre', 1000, 0, 1, 1000),
('croquettes', 'Croquettes', 1000, 0, 1, 1000),
('ctomato', 'Tomate hachée', 1000, 0, 1, 1000),
('cupcake', 'Cupcake', 1000, 0, 1, 1000),
('defib', 'Defib', 1000, 0, 1, 1000),
('douille', 'Boite de douille', 1000, 0, 1, 1000),
('drill', 'Drill', 1000, 0, 1, 1000),
('drpepper', 'Dr. Pepper', 1000, 0, 1, 1000),
('energy', 'RedBull', 1000, 0, 1, 1000),
('essence', 'Essence', 1000, 0, 1, 1000),
('fburger', 'Galette de bœuf surgelée', 1000, 0, 1, 1000),
('firework', 'Feu d\'artifice', 1000, 0, 1, 1000),
('firstaidkit', 'Trousse de premiers secours', 1000, 0, 1, 1000),
('fish', 'Poisson', 1000, 0, 1, 1000),
('fishandchips', 'Fish And Chips', 1000, 0, 1, 1000),
('fishd', 'Poisson Abattu', 1000, 0, 1, 1000),
('fixkit', 'Kit réparation', 1000, 0, 1, 1000),
('fixtool', 'Outils Réparation', 1000, 0, 1, 1000),
('frites', 'Barquette de frites', 1000, 0, 1, 1000),
('fromage', 'Morceau de fromage', 1000, 0, 1, 1000),
('fvburger', 'Burger végétarien surgelé', 1000, 0, 1, 1000),
('gazbottle', 'Bouteille de Gaz', 1000, 0, 1, 1000),
('gitanes', 'Gitanes', 1000, 0, 1, 1000),
('gps', 'GPS', 1000, 0, 1, 1000),
('grand_cru', 'Grand cru', 1000, 0, 1, 1000),
('grapperaisin', 'Grappe de raisin', 1000, 0, 1, 1000),
('hifi', 'HiFi', 1000, 0, 1, 1000),
('ice', 'Glaçon', 1000, 0, 1, 1000),
('icetea', 'Ice-tea', 1000, 0, 1, 1000),
('jager', 'Jägermeister', 1000, 0, 1, 1000),
('jagerbomb', 'Jägerbomb', 1000, 0, 1, 1000),
('jagercerbere', 'Jäger Cerbère', 1000, 0, 1, 1000),
('jeton', 'Jeton', 1000, 0, 1, 1000),
('jewels', 'Bijoux', 1000, 0, 1, 1000),
('jumelles', 'Jumelles', 1000, 0, 1, 1000),
('jusfruit', 'Jus de fruits', 1000, 0, 1, 1000),
('jus_raisin', 'Jus de raisin', 1000, 0, 1, 1000),
('lettuce', 'Laitue', 1000, 0, 1, 1000),
('lighter', 'Briquet', 1000, 0, 1, 1000),
('limonade', 'Limonade', 1000, 0, 1, 1000),
('lockpick', 'Crocheteur', 1000, 0, 1, 1000),
('malbora', 'Malbora', 1000, 0, 1, 1000),
('martini', 'Martini blanc', 1000, 0, 1, 1000),
('Masque1', 'Cochon', 1000, 0, 1, 1000),
('Masque10', 'Bonhomme de Neige', 1000, 0, 1, 1000),
('Masque10_1', 'Bonhomme de Neige 2', 1000, 0, 1, 1000),
('Masque10_2', 'Bonhomme de Neige 3', 1000, 0, 1, 1000),
('Masque11', 'Lunettes', 1000, 0, 1, 1000),
('Masque11_1', 'Lunettes 2', 1000, 0, 1, 1000),
('Masque11_2', 'Lunettes 3', 1000, 0, 1, 1000),
('Masque12', 'Masque de Venise', 1000, 0, 1, 1000),
('Masque12_1', 'Masque de Venise 2', 1000, 0, 1, 1000),
('Masque12_2', 'Masque de Venise 3', 1000, 0, 1, 1000),
('Masque13', 'Bébé', 1000, 0, 1, 1000),
('Masque13_1', 'Bébé 2', 1000, 0, 1, 1000),
('Masque13_2', 'Bébé 3', 1000, 0, 1, 1000),
('Masque14', 'Hockey sur Glace', 1000, 0, 1, 1000),
('Masque14_1', 'Hockey sur Glace 2', 1000, 0, 1, 1000),
('Masque14_2', 'Hockey sur Glace 3', 1000, 0, 1, 1000),
('Masque15', 'Hockey Sale', 1000, 0, 1, 1000),
('Masque15_1', 'Hockey Sale 2', 1000, 0, 1, 1000),
('Masque15_2', 'Hockey Sale 3', 1000, 0, 1, 1000),
('Masque16', 'Terminator', 1000, 0, 1, 1000),
('Masque16_1', 'Terminator 2', 1000, 0, 1, 1000),
('Masque16_2', 'Terminator 3', 1000, 0, 1, 1000),
('Masque17', 'Chat', 1000, 0, 1, 1000),
('Masque17_1', 'Chat 2', 1000, 0, 1, 1000),
('Masque17_2', 'Chat 3', 1000, 0, 1, 1000),
('Masque18', 'Renard', 1000, 0, 1, 1000),
('Masque18_1', 'Renard 2', 1000, 0, 1, 1000),
('Masque18_2', 'Renard 3', 1000, 0, 1, 1000),
('Masque19', 'Hibou', 1000, 0, 1, 1000),
('Masque19_1', 'Hibou 2', 1000, 0, 1, 1000),
('Masque19_2', 'Hibou 3', 1000, 0, 1, 1000),
('Masque1_2', 'Cochon 2', 1000, 0, 1, 1000),
('Masque1_3', 'Cochon 3', 1000, 0, 1, 1000),
('Masque2', 'Squelette', 1000, 0, 1, 1000),
('Masque20', 'Raton Laveur', 1000, 0, 1, 1000),
('Masque20_1', 'Raton Laveur 2', 1000, 0, 1, 1000),
('Masque20_2', 'Raton Laveur 3', 1000, 0, 1, 1000),
('Masque21', 'Ours', 1000, 0, 1, 1000),
('Masque21_1', 'Ours 2', 1000, 0, 1, 1000),
('Masque21_2', 'Ours 3', 1000, 0, 1, 1000),
('Masque22', 'Boeuf', 1000, 0, 1, 1000),
('Masque22_1', 'Boeuf 2', 1000, 0, 1, 1000),
('Masque22_2', 'Boeuf 3', 1000, 0, 1, 1000),
('Masque23', 'Taureau', 1000, 0, 1, 1000),
('Masque23_1', 'Taureau 2', 1000, 0, 1, 1000),
('Masque23_2', 'Taureau', 1000, 0, 1, 1000),
('Masque24', 'Aigle', 1000, 0, 1, 1000),
('Masque24_1', 'Aigle 2', 1000, 0, 1, 1000),
('Masque24_2', 'Aigle ', 1000, 0, 1, 1000),
('Masque25', 'Vautour', 1000, 0, 1, 1000),
('Masque25_1', 'Vautour 2', 1000, 0, 1, 1000),
('Masque25_2', 'Vautour 3', 1000, 0, 1, 1000),
('Masque26', 'Loup', 1000, 0, 1, 1000),
('Masque26_1', 'Loup 2', 1000, 0, 1, 1000),
('Masque26_2', 'Loup 3', 1000, 0, 1, 1000),
('Masque27', 'Casque d\'Aviation', 1000, 0, 1, 1000),
('Masque27_1', 'Casque d\'Aviation 2', 1000, 0, 1, 1000),
('Masque27_2', 'Casque d\'Aviation 3', 1000, 0, 1, 1000),
('Masque28', 'Braqueur', 1000, 0, 1, 1000),
('Masque28_1', 'Braqueur 2', 1000, 0, 1, 1000),
('Masque28_2', 'Braqueur 3', 1000, 0, 1, 1000),
('Masque29', 'Monstre', 1000, 0, 1, 1000),
('Masque29_1', 'Monstre 2', 1000, 0, 1, 1000),
('Masque29_2', 'Monstre 3', 1000, 0, 1, 1000),
('Masque2_1', 'Squelette 2', 1000, 0, 1, 1000),
('Masque2_2', 'Squelette 3', 1000, 0, 1, 1000),
('Masque3', 'Singe', 1000, 0, 1, 1000),
('Masque30', 'Hockey Purge', 1000, 0, 1, 1000),
('Masque30_1', 'Hockey Purge 2', 1000, 0, 1, 1000),
('Masque30_2', 'Hockey Purge 3', 1000, 0, 1, 1000),
('Masque31', 'Pingouin', 1000, 0, 1, 1000),
('Masque31_1', 'Pingouin 2', 1000, 0, 1, 1000),
('Masque31_2', 'Pingouin 3', 1000, 0, 1, 1000),
('Masque32', 'Cagoule Noël', 1000, 0, 1, 1000),
('Masque32_1', 'Cagoule Noël 2', 1000, 0, 1, 1000),
('Masque32_2', 'Cagoule Noël 3', 1000, 0, 1, 1000),
('Masque33', 'Tibiscuit', 1000, 0, 1, 1000),
('Masque33_1', 'Tibiscuit 2', 1000, 0, 1, 1000),
('Masque33_2', 'Tibiscuit 3', 1000, 0, 1, 1000),
('Masque34', 'SDF', 1000, 0, 1, 1000),
('Masque34_1', 'SDF 2', 1000, 0, 1, 1000),
('Masque34_2', 'SDF 3', 1000, 0, 1, 1000),
('Masque35', 'Cagoule', 1000, 0, 1, 1000),
('Masque35_1', 'Cagoule 2', 1000, 0, 1, 1000),
('Masque35_2', 'Cagoule 3', 1000, 0, 1, 1000),
('Masque36', 'Masque à Oxygène', 1000, 0, 1, 1000),
('Masque36_1', 'Masque à Oxygène 2', 1000, 0, 1, 1000),
('Masque36_2', 'Masque à Oxygène 3', 1000, 0, 1, 1000),
('Masque37', 'Cagoule Déchirée', 1000, 0, 1, 1000),
('Masque37_1', 'Cagoule Déchirée 2', 1000, 0, 1, 1000),
('Masque37_2', 'Cagoule Déchirée 3', 1000, 0, 1, 1000),
('Masque38', 'Masque à Oxygène Intégrale', 1000, 0, 1, 1000),
('Masque38_1', 'Masque à Oxygène Intégrale 2', 1000, 0, 1, 1000),
('Masque38_2', 'Masque à Oxygène Intégrale 3', 1000, 0, 1, 1000),
('Masque39', 'Zombie', 1000, 0, 1, 1000),
('Masque39_1', 'Zombie 2', 1000, 0, 1, 1000),
('Masque39_2', 'Zombie 3', 1000, 0, 1, 1000),
('Masque4', 'Hockey', 1000, 0, 1, 1000),
('Masque40', 'Mort Vivant', 1000, 0, 1, 1000),
('Masque40_1', 'Mort Vivant 2', 1000, 0, 1, 1000),
('Masque40_2', 'Mort Vivant 3', 1000, 0, 1, 1000),
('Masque41', 'Masque41', 1000, 0, 1, 1000),
('Masque41_1', 'Masque41_1', 1000, 0, 1, 1000),
('Masque41_2', 'Masque41_2', 1000, 0, 1, 1000),
('Masque42', 'Masque42', 1000, 0, 1, 1000),
('Masque42_1', 'Masque42_1', 1000, 0, 1, 1000),
('Masque42_2', 'Masque42_2', 1000, 0, 1, 1000),
('Masque43', 'Masque43', 1000, 0, 1, 1000),
('Masque43_1', 'Masque43_1', 1000, 0, 1, 1000),
('Masque43_2', 'Masque43_2', 1000, 0, 1, 1000),
('Masque44', 'Masque44', 1000, 0, 1, 1000),
('Masque44_1', 'Masque44_1', 1000, 0, 1, 1000),
('Masque44_2', 'Masque44_2', 1000, 0, 1, 1000),
('Masque45', 'Masque45', 1000, 0, 1, 1000),
('Masque45_1', 'Masque45_1', 1000, 0, 1, 1000),
('Masque45_2', 'Masque45_2', 1000, 0, 1, 1000),
('Masque46', 'Masque46', 1000, 0, 1, 1000),
('Masque46_1', 'Masque46_1', 1000, 0, 1, 1000),
('Masque46_2', 'Masque46_2', 1000, 0, 1, 1000),
('Masque47', 'Masque47', 1000, 0, 1, 1000),
('Masque47_1', 'Masque47_1', 1000, 0, 1, 1000),
('Masque47_2', 'Masque47_2', 1000, 0, 1, 1000),
('Masque48', 'Masque48', 1000, 0, 1, 1000),
('Masque48_1', 'Masque48_1', 1000, 0, 1, 1000),
('Masque48_2', 'Masque48_2', 1000, 0, 1, 1000),
('Masque49', 'Masque49', 1000, 0, 1, 1000),
('Masque49_1', 'Masque49_1', 1000, 0, 1, 1000),
('Masque49_2', 'Masque49_2', 1000, 0, 1, 1000),
('Masque4_1', 'Hockey 2', 1000, 0, 1, 1000),
('Masque4_2', 'Hockey 3', 1000, 0, 1, 1000),
('Masque5', 'Gorille', 1000, 0, 1, 1000),
('Masque50', 'Masque50', 1000, 0, 1, 1000),
('Masque50_1', 'Masque50_1', 1000, 0, 1, 1000),
('Masque50_2', 'Masque50_2', 1000, 0, 1, 1000),
('Masque50_3', 'Masque50_3', 1000, 0, 1, 1000),
('Masque50_4', 'Masque50_4', 1000, 0, 1, 1000),
('Masque50_5', 'Masque50_5', 1000, 0, 1, 1000),
('Masque50_6', 'Masque50_6', 1000, 0, 1, 1000),
('Masque50_7', 'Masque50_7', 1000, 0, 1, 1000),
('Masque50_8', 'Masque50_8', 1000, 0, 1, 1000),
('Masque50_9', 'Masque50_9', 1000, 0, 1, 1000),
('Masque51', 'Masque1', 1000, 0, 1, 1000),
('Masque51_1', 'Masque51_1', 1000, 0, 1, 1000),
('Masque51_2', 'Masque51_2', 1000, 0, 1, 1000),
('Masque51_3', 'Masque51_3', 1000, 0, 1, 1000),
('Masque51_4', 'Masque51_4', 1000, 0, 1, 1000),
('Masque51_5', 'Masque51_5', 1000, 0, 1, 1000),
('Masque51_6', 'Masque51_6', 1000, 0, 1, 1000),
('Masque51_7', 'Masque51_7', 1000, 0, 1, 1000),
('Masque51_8', 'Masque51_8', 1000, 0, 1, 1000),
('Masque51_9', 'Masque51_9', 1000, 0, 1, 1000),
('Masque52', 'Masque52', 1000, 0, 1, 1000),
('Masque52_1', 'Masque52_1', 1000, 0, 1, 1000),
('Masque52_2', 'Masque52_2', 1000, 0, 1, 1000),
('Masque52_3', 'Masque52_3', 1000, 0, 1, 1000),
('Masque52_4', 'Masque52_4', 1000, 0, 1, 1000),
('Masque52_5', 'Masque52_5', 1000, 0, 1, 1000),
('Masque52_6', 'Masque52_6', 1000, 0, 1, 1000),
('Masque52_7', 'Masque52_7', 1000, 0, 1, 1000),
('Masque52_8', 'Masque52_8', 1000, 0, 1, 1000),
('Masque52_9', 'Masque52_9', 1000, 0, 1, 1000),
('Masque53', 'Masque53', 1000, 0, 1, 1000),
('Masque53_1', 'Masque53_1', 1000, 0, 1, 1000),
('Masque53_2', 'Masque53_2', 1000, 0, 1, 1000),
('Masque53_3', 'Masque53_3', 1000, 0, 1, 1000),
('Masque53_4', 'Masque53_4', 1000, 0, 1, 1000),
('Masque53_5', 'Masque53_5', 1000, 0, 1, 1000),
('Masque53_6', 'Masque53_6', 1000, 0, 1, 1000),
('Masque53_7', 'Masque53_7', 1000, 0, 1, 1000),
('Masque53_8', 'Masque53_8', 1000, 0, 1, 1000),
('Masque53_9', 'Masque53_9', 1000, 0, 1, 1000),
('Masque54', 'Masque54', 1000, 0, 1, 1000),
('Masque54_1', 'Masque54_1', 1000, 0, 1, 1000),
('Masque54_2', 'Masque54_2', 1000, 0, 1, 1000),
('Masque54_3', 'Masque54_3', 1000, 0, 1, 1000),
('Masque54_4', 'Masque54_4', 1000, 0, 1, 1000),
('Masque54_5', 'Masque54_5', 1000, 0, 1, 1000),
('Masque54_6', 'Masque54_6', 1000, 0, 1, 1000),
('Masque54_7', 'Masque54_7', 1000, 0, 1, 1000),
('Masque54_8', 'Masque54_8', 1000, 0, 1, 1000),
('Masque54_9', 'Masque54_9', 1000, 0, 1, 1000),
('Masque55', 'Masque55', 1000, 0, 1, 1000),
('Masque55_1', 'Masque55_1', 1000, 0, 1, 1000),
('Masque55_2', 'Masque55_2', 1000, 0, 1, 1000),
('Masque56', 'Masque56', 1000, 0, 1, 1000),
('Masque56_1', 'Masque56_1', 1000, 0, 1, 1000),
('Masque56_2', 'Masque56_2', 1000, 0, 1, 1000),
('Masque57', 'Masque57', 1000, 0, 1, 1000),
('Masque57_1', 'Masque57_1', 1000, 0, 1, 1000),
('Masque57_2', 'Masque57_2', 1000, 0, 1, 1000),
('Masque58', 'Masque58', 1000, 0, 1, 1000),
('Masque58_1', 'Masque58_1', 1000, 0, 1, 1000),
('Masque58_2', 'Masque58_2', 1000, 0, 1, 1000),
('Masque59', 'Masque59', 1000, 0, 1, 1000),
('Masque59_1', 'Masque59_1', 1000, 0, 1, 1000),
('Masque59_2', 'Masque59_2', 1000, 0, 1, 1000),
('Masque5_1', 'Gorille 2', 1000, 0, 1, 1000),
('Masque5_2', 'Gorille 3', 1000, 0, 1, 1000),
('Masque6', 'Clown', 1000, 0, 1, 1000),
('Masque60', 'Masque60', 1000, 0, 1, 1000),
('Masque60_1', 'Masque60_1', 1000, 0, 1, 1000),
('Masque60_2', 'Masque60_2', 1000, 0, 1, 1000),
('Masque6_1', 'Clown 2', 1000, 0, 1, 1000),
('Masque6_2', 'Clown 3', 1000, 0, 1, 1000),
('Masque7', 'Diable', 1000, 0, 1, 1000),
('Masque7_1', 'Diable 2', 1000, 0, 1, 1000),
('Masque7_2', 'Diable 3', 1000, 0, 1, 1000),
('Masque8', 'Père Noël', 1000, 0, 1, 1000),
('Masque8_1', 'Père Noël 2', 1000, 0, 1, 1000),
('Masque8_2', 'Père Noël 3', 1000, 0, 1, 1000),
('Masque9', 'Cerf', 1000, 0, 1, 1000),
('Masque9_1', 'Cerf 2', 1000, 0, 1, 1000),
('Masque9_2', 'Cerf 3', 1000, 0, 1, 1000),
('medikit', 'Kit de Soin', 1000, 0, 1, 1000),
('menthe', 'Feuille de menthe', 1000, 0, 1, 1000),
('meth', 'Meth', 1000, 0, 1, 1000),
('meth_pooch', 'Pochon de meth', 1000, 0, 1, 1000),
('metreshooter', 'Mètre de shooter', 1000, 0, 1, 1000),
('milk', 'Lait', 1000, 0, 1, 1000),
('mixapero', 'Mix Apéritif', 1000, 0, 1, 1000),
('mojito', 'Mojito', 1000, 0, 1, 1000),
('net_cracker', 'Cracker de banque', 1000, 0, 1, 1000),
('nugget', 'Nuggets de poulet', 1000, 0, 1, 1000),
('nuggets10', 'Nuggets x10', 1000, 0, 1, 1000),
('nuggets4', 'Nuggets x4', 1000, 0, 1, 1000),
('opium', 'Opium', 1000, 0, 1, 1000),
('opium_pooch', 'Pochon de opium', 1000, 0, 1, 1000),
('oxygenmask', 'Masque d\'oxygène', 1000, 0, 1, 1000),
('packaged_chicken', 'Poulet en barquette', 1000, 0, 1, 1000),
('packaged_plank', 'Paquet de Planches', 1000, 0, 1, 1000),
('patate', 'Pomme de terre', 1000, 0, 1, 1000),
('patatefrie', 'Pomme de terre frit', 1000, 0, 1, 1000),
('petrol', 'Pétrole', 1000, 0, 1, 1000),
('petrol_raffin', 'Pétrole Raffiné', 1000, 0, 1, 1000),
('phone', 'Téléphone', 1000, 0, 1, 1000),
('potato', 'Pomme de terre', 1000, 0, 1, 1000),
('poudre', 'Boite de poudre', 1000, 0, 1, 1000),
('raisin', 'Raisin', 1000, 0, 1, 1000),
('repairkit', 'Kit de réparation', 1000, 0, 1, 1000),
('rhum', 'Rhum', 1000, 0, 1, 1000),
('rhumcoca', 'Rhum-coca', 1000, 0, 1, 1000),
('rhumfruit', 'Rhum-jus de fruits', 1000, 0, 1, 1000),
('ring', 'Bague en Or', 1000, 0, 1, 1000),
('rolex', 'Rolex', 1000, 0, 1, 1000),
('sachetketchup', 'Sachet de Ketchup', 1000, 0, 1, 1000),
('saladp', 'Feuille de salade', 1000, 0, 1, 1000),
('salads', 'Salade sale', 1000, 0, 1, 1000),
('sandwich', 'Sandwich', 1000, 0, 1, 1000),
('saucisson', 'Saucisson', 1000, 0, 1, 1000),
('sim', 'Sim', 1000, 0, 1, 1000),
('slaughtered_chicken', 'Poulet abattu', 1000, 0, 1, 1000),
('soda', 'Soda', 1000, 0, 1, 1000),
('steakc', 'Steak cru', 1000, 0, 1, 1000),
('steakcui', 'Steak cuit', 1000, 0, 1, 1000),
('stone', 'Pierre', 1000, 0, 1, 1000),
('tabacblond', 'Tabac Blond', 1000, 0, 1, 1000),
('tabacblondsec', 'Tabac Blond Séché', 1000, 0, 1, 1000),
('tabacbrun', 'Tabac Brun', 1000, 0, 1, 1000),
('tabacbrunsec', 'Tabac Brun Séché', 1000, 0, 1, 1000),
('teqpaf', 'Teq\'paf', 1000, 0, 1, 1000),
('tequila', 'Tequila', 1000, 0, 1, 1000),
('thermite', 'Bombe thermite', 1000, 0, 1, 1000),
('tirekit', 'Kit de pneu', 1000, 0, 1, 1000),
('tissu', 'Tissu', 1000, 0, 1, 1000),
('tomatec', 'Rondelle de tomate', 1000, 0, 1, 1000),
('tomater', 'Tomate entière', 1000, 0, 1, 1000),
('tomato', 'Tomate', 1000, 0, 1, 1000),
('vbread', 'Pain sans gluten', 1000, 0, 1, 1000),
('vhamburger', 'Burger végétarien', 1000, 0, 1, 1000),
('vine', 'Vin', 1000, 0, 1, 1000),
('vodka', 'Vodka', 1000, 0, 1, 1000),
('vodkaenergy', 'Vodka-energy', 1000, 0, 1, 1000),
('vodkafruit', 'Vodka-jus de fruits', 1000, 0, 1, 1000),
('water', 'Eau', 1000, 0, 1, 1000),
('weakit', 'Kit d\'arme', 1000, 0, 1, 1000),
('weed', 'Weed', 1000, 0, 1, 1000),
('weed_pooch', 'Pochon de weed', 1000, 0, 1, 1000),
('whisky', 'Whisky', 1000, 0, 1, 1000),
('whiskycoca', 'Whisky-coca', 1000, 0, 1, 1000),
('wine', 'Vin', 1000, 0, 1, 1000);

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `SecondaryJob` tinyint(1) NOT NULL DEFAULT '0',
  `whitelisted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `SecondaryJob`, `whitelisted`) VALUES
('ambulance', 'Ambulance', 0, 1),
('ammunation', 'Ammunation', 0, 1),
('avocat', 'Avocat', 0, 1),
('ballas', 'Ballas', 1, 1),
('banker', 'Banquier', 0, 1),
('barber', 'Coiffeur', 0, 1),
('blanchisseur', 'Blanchisseur', 1, 1),
('burgershot', 'Uber Eats', 0, 1),
('cardealer', 'Concessionnaire', 0, 1),
('families', 'Families', 1, 1),
('gouvernement', 'Gouvernement', 0, 1),
('ltd', 'LTD', 0, 1),
('marabunta', 'Marabunta', 1, 1),
('mecano', 'Mécano', 0, 1),
('motorcycle', 'Concess Moto', 0, 1),
('ms13', 'MS13', 1, 1),
('offpolice', 'Hors-Service', 0, 1),
('police', 'LSPD', 0, 1),
('realestateagent', 'Agent immobilier', 0, 1),
('speedrap', 'Speed Rap', 0, 1),
('surenos', 'Sureños', 1, 1),
('tabac', 'Tabac', 0, 1),
('tattoo', 'Tatoueur', 0, 1),
('taxi', 'Taxi', 0, 1),
('thelost', 'The Lost', 1, 1),
('unemployed', 'Sans Emploi', 0, 0),
('unemployed2', 'Civil', 0, 0),
('unicorn', 'Unicorn', 0, 1),
('vagos', 'Vagos', 1, 1),
('vigne', 'Vigneron', 0, 1),
('weazelnews', 'Weazel News', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Chômeur', 20, '{}', '{}'),
(12, 'ambulance', 0, 'ambulance', 'Ambulancier', 50, '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":249,\"torso_2\":1,\"pants_1\":96,\"pants_2\":1,\"shoes\":9,\"decals_1\":57,\"decals_2\":0,\"helmet_1\":122,\"helmet_2\":1,\"arms\":90}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(13, 'ambulance', 1, 'doctor', 'Médecin', 100, '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":249,\"torso_2\":1,\"pants_1\":96,\"pants_2\":1,\"shoes\":9,\"decals_1\":57,\"decals_2\":0,\"helmet_1\":122,\"helmet_2\":1,\"arms\":90}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(14, 'ambulance', 2, 'chief_doctor', 'Médecin-chef', 150, '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":249,\"torso_2\":1,\"pants_1\":96,\"pants_2\":1,\"shoes\":9,\"decals_1\":57,\"decals_2\":0,\"helmet_1\":122,\"helmet_2\":1,\"arms\":90}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(15, 'ambulance', 3, 'boss', 'Chirurgien', 200, '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":249,\"torso_2\":1,\"pants_1\":96,\"pants_2\":1,\"shoes\":9,\"decals_1\":57,\"decals_2\":0,\"helmet_1\":122,\"helmet_2\":1,\"arms\":90}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(16, 'cardealer', 0, 'recruit', 'Recrue', 50, '{}', '{}'),
(17, 'cardealer', 1, 'novice', 'Novice', 100, '{}', '{}'),
(18, 'cardealer', 2, 'experienced', 'Experimenté', 150, '{}', '{}'),
(19, 'cardealer', 3, 'boss', 'Patron', 2000, '{}', '{}'),
(20, 'mecano', 0, 'recrue', 'Recrue', 50, '{}', '{}'),
(21, 'mecano', 1, 'novice', 'Novice', 100, '{}', '{}'),
(22, 'mecano', 2, 'experimente', 'Experimenté', 150, '{}', '{}'),
(23, 'mecano', 3, 'chief', 'Chef d\'équipe', 200, '{}', '{}'),
(24, 'mecano', 4, 'boss', 'Patron', 250, '{}', '{}'),
(64, 'ballas', 1, 'soldato', 'Homie', 0, '{}', '{}'),
(65, 'ballas', 2, 'capo', 'Hustler', 0, '{}', '{}'),
(66, 'ballas', 3, 'consigliere', 'Y.G', 0, '{}', '{}'),
(67, 'ballas', 4, 'boss', 'O.G', 0, '{}', '{}'),
(69, 'taxi', 0, 'recrue', 'Recrue', 50, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(70, 'taxi', 1, 'novice', 'Novice', 100, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(71, 'taxi', 2, 'experimente', 'Experimenté', 150, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(72, 'taxi', 3, 'uber', 'Uber', 200, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(73, 'taxi', 4, 'boss', 'Patron', 250, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":29,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":1,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":4,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(77, 'families', 1, 'soldato', 'Habitant', 0, '{}', '{}'),
(78, 'families', 2, 'capo', 'Soldat', 0, '{}', '{}'),
(79, 'families', 3, 'consigliere', 'Grand', 0, '{}', '{}'),
(80, 'families', 4, 'boss', 'O.G', 0, '{}', '{}'),
(82, 'vagos', 1, 'soldato', 'Pequeno', 0, '{}', '{}'),
(83, 'vagos', 2, 'capo', 'Soldado', 0, '{}', '{}'),
(84, 'vagos', 3, 'consigliere', 'Grande', 0, '{}', '{}'),
(85, 'vagos', 4, 'boss', 'Jefe', 0, '{}', '{}'),
(87, 'vigne', 0, 'recrue', 'Intérimaire', 25, '{\"tshirt_1\":59,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(88, 'vigne', 1, 'novice', 'Vigneron', 50, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(89, 'vigne', 2, 'cdisenior', 'Chef de chai', 75, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(90, 'vigne', 3, 'boss', 'Patron', 100, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":14,\"torso_2\":15,\"shoes_1\":12,\"shoes_2\":0,\"pants_1\":9, \"pants_2\":5, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(99, 'realestateagent', 0, 'location', 'Location', 50, '{}', '{}'),
(100, 'realestateagent', 1, 'vendeur', 'Vendeur', 100, '{}', '{}'),
(101, 'realestateagent', 2, 'gestion', 'Gestion', 150, '{}', '{}'),
(102, 'realestateagent', 3, 'boss', 'Patron', 200, '{}', '{}'),
(128, 'unicorn', 0, 'barman', 'Barman', 50, '{}', '{}'),
(129, 'unicorn', 1, 'ambianceur', 'Ambianceur', 100, '{}', '{}'),
(130, 'unicorn', 2, 'secu', 'Securité', 150, '{}', '{}'),
(131, 'unicorn', 3, 'chefsecu', 'Chef-Securité', 200, '{}', '{}'),
(132, 'unicorn', 4, 'viceboss', 'Co-gérant', 250, '{}', '{}'),
(133, 'unicorn', 5, 'boss', 'Gérant', 300, '{}', '{}'),
(134, 'ms13', 1, 'soldato', 'Soldado', 0, '{}', '{}'),
(135, 'ms13', 2, 'capo', 'Sargento', 0, '{}', '{}'),
(136, 'ms13', 3, 'consigliere', 'Teniente', 0, '{}', '{}'),
(137, 'ms13', 4, 'boss', 'Jefe', 0, '{}', '{}'),
(139, 'avocat', 0, 'recrue', 'stagiaire', 100, '{}', '{}'),
(140, 'avocat', 1, 'novice', 'Juriste', 150, '{}', '{}'),
(141, 'avocat', 2, 'experimente', 'Notaire', 200, '{}', '{}'),
(142, 'avocat', 3, 'viceboss', 'Avocat', 250, '{}', '{}'),
(143, 'avocat', 4, 'boss', 'Ténor du barreau', 300, '{}', '{}'),
(144, 'realestateagent', 0, 'location', 'Location', 50, '{}', '{}'),
(145, 'realestateagent', 1, 'vendeur', 'Vendeur', 100, '{}', '{}'),
(146, 'realestateagent', 2, 'gestion', 'Gestion', 150, '{}', '{}'),
(147, 'realestateagent', 3, 'boss', 'Patron', 200, '{}', '{}'),
(167, 'ammunation', 0, 'stagiaire', 'Stagiaire', 50, '{}', '{}'),
(168, 'ammunation', 1, 'employé', 'Employé', 100, '{}', '{}'),
(169, 'ammunation', 2, 'professionnel', 'Professionnel', 150, '{}', '{}'),
(170, 'ammunation', 3, 'second', 'Second', 200, '{}', '{}'),
(171, 'ammunation', 4, 'boss', 'Patron', 250, '{}', '{}'),
(172, 'thelost', 1, 'soldato', 'Motard', 0, '{}', '{}'),
(173, 'thelost', 2, 'capo', 'Biker', 0, '{}', '{}'),
(174, 'thelost', 3, 'consigliere', 'Sous-Présidente', 0, '{}', '{}'),
(175, 'thelost', 4, 'boss', 'Présidente', 0, '{}', '{}'),
(176, 'blanchisseur', 1, 'soldato', 'P\'tite Frappe', 0, '{}', '{}'),
(177, 'blanchisseur', 2, 'capo', 'Dealer', 0, '{}', '{}'),
(178, 'blanchisseur', 3, 'consigliere', 'Sous-Boss', 0, '{}', '{}'),
(179, 'blanchisseur', 4, 'boss', 'Boss', 0, '{}', '{}'),
(185, 'ms13', 1, 'soldato', 'Soldado', 0, '{}', '{}'),
(186, 'ms13', 2, 'capo', 'Sargento', 0, '{}', '{}'),
(187, 'ms13', 3, 'consigliere', 'Teniente', 0, '{}', '{}'),
(188, 'ms13', 4, 'boss', 'Jefe', 0, '{}', '{}'),
(197, 'marabunta', 1, 'soldato', 'Pequeno', 0, '{}', '{}'),
(198, 'marabunta', 2, 'capo', 'Soldado', 0, '{}', '{}'),
(199, 'marabunta', 3, 'consigliere', 'Grande', 0, '{}', '{}'),
(200, 'marabunta', 4, 'boss', 'Jefe', 0, '{}', '{}'),
(201, 'motorcycle', 0, 'recruit', 'Recrue', 50, '{}', '{}'),
(202, 'motorcycle', 1, 'novice', 'Novice', 100, '{}', '{}'),
(203, 'motorcycle', 2, 'experienced', 'Experimente', 150, '{}', '{}'),
(204, 'motorcycle', 3, 'boss', 'Patron', 200, '{}', '{}'),
(205, 'weazelnews', 0, 'stagiaire', 'Stagiaire', 75, '{}', '{}'),
(206, 'weazelnews', 1, 'reporter', 'Reporter', 150, '{}', '{}'),
(207, 'weazelnews', 2, 'investigator', 'Enquêteur', 225, '{}', '{}'),
(208, 'weazelnews', 3, 'boss', 'Rédac\' chef', 300, '{}', '{}'),
(213, 'banker', 0, 'advisor', 'Conseiller', 10, '{}', '{}'),
(214, 'banker', 1, 'banker', 'Banquier', 20, '{}', '{}'),
(215, 'banker', 2, 'business_banker', 'Banquier d\'affaire', 30, '{}', '{}'),
(216, 'banker', 3, 'trader', 'Trader', 40, '{}', '{}'),
(217, 'banker', 4, 'boss', 'Patron', 0, '{}', '{}'),
(218, 'speedrap', 0, 'recrue', 'BeatMaker', 100, '{}', '{}'),
(219, 'speedrap', 1, 'novice', 'Preneur de son', 150, '{}', '{}'),
(220, 'speedrap', 2, 'experimente', 'Cadreur', 150, '{}', '{}'),
(221, 'speedrap', 3, 'viceboss', 'Manager', 200, '{}', '{}'),
(222, 'speedrap', 4, 'boss', 'Patron', 250, '{}', '{}'),
(257, 'surenos', 1, 'soldato', 'Boquilla', 0, '{}', '{}'),
(258, 'surenos', 2, 'capo', 'Lamedor', 0, '{}', '{}'),
(259, 'surenos', 3, 'consigliere', 'Confidente', 0, '{}', '{}'),
(260, 'surenos', 4, 'boss', 'El Patrón', 0, '{}', '{}'),
(261, 'surenos', 1, 'soldato', 'Boquilla', 0, '{}', '{}'),
(262, 'surenos', 2, 'capo', 'Lamedor', 0, '{}', '{}'),
(263, 'surenos', 3, 'consigliere', 'Confidente', 0, '{}', '{}'),
(264, 'surenos', 4, 'boss', 'El Patrón', 0, '{}', '{}'),
(269, 'police', 0, 'recruit', 'Cadet', 50, '{}', '{}'),
(270, 'police', 1, 'officer', 'Officier', 100, '{}', '{}'),
(271, 'police', 2, 'sergeanti', 'Sergent-I', 150, '{}', '{}'),
(272, 'police', 3, 'sergeantii', 'Sergent-II', 200, '{}', '{}'),
(273, 'police', 4, 'sergeantiii', 'Sergent-III', 250, '{}', '{}'),
(274, 'police', 5, 'lieutenant', 'Lieutenant', 300, '{}', '{}'),
(275, 'police', 6, 'lieutenantf', 'Lieutenant Formateur', 350, '{}', '{}'),
(276, 'police', 7, 'capitaine', 'Capitaine', 400, '{}', '{}'),
(277, 'police', 8, 'boss', 'Commandant', 450, '{}', '{}'),
(278, 'offpolice', 0, 'recruit', 'Cadet', 20, '{}', '{}'),
(279, 'offpolice', 1, 'officer', 'Officier', 40, '{}', '{}'),
(280, 'offpolice', 2, 'sergeanti', 'Sergent-I', 60, '{}', '{}'),
(281, 'offpolice', 3, 'sergeantii', 'Sergent-II', 80, '{}', '{}'),
(282, 'offpolice', 4, 'sergeantiii', 'Sergent-III', 100, '{}', '{}'),
(283, 'offpolice', 5, 'lieutenant', 'Lieutenant', 120, '{}', '{}'),
(284, 'offpolice', 6, 'lieutenantf', 'Lieutenant Formateur', 140, '{}', '{}'),
(285, 'offpolice', 7, 'capitaine', 'Capitaine', 160, '{}', '{}'),
(286, 'offpolice', 8, 'boss', 'Commandant', 180, '{}', '{}'),
(287, 'gouvernement', 0, 'assistant', 'Assistant', 100, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(288, 'gouvernement', 1, 'assistante', 'Secrétaire', 200, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(289, 'gouvernement', 2, 'garde', 'Garde Du Corps', 300, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(290, 'gouvernement', 3, 'juge', 'Juge', 400, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(291, 'gouvernement', 4, 'ministre', 'Misnistre', 500, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":29,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":1,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":4,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(292, 'gouvernement', 5, 'premierministre', 'Premier Ministre', 600, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":29,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":1,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":4,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(293, 'gouvernement', 6, 'boss', 'Gouverneur', 700, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":29,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":1,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":4,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(297, 'tabac', 0, 'recrue', 'Tabagiste', 50, '{}', '{}'),
(298, 'tabac', 1, 'gerant', 'Gérant', 100, '{}', '{}'),
(299, 'tabac', 2, 'boss', 'Patron', 150, '{}', '{}'),
(300, 'ltd', 0, 'recruit', 'Stagiaire', 50, '{}', '{}'),
(301, 'ltd', 1, 'fou', 'Employé', 100, '{}', '{}'),
(302, 'ltd', 2, 'boss', 'Patron', 150, '{}', '{}'),
(304, 'tattoo', 0, 'stagiaire', 'Stagiaire', 50, '{}', '{}'),
(305, 'tattoo', 2, 'boss', 'Patron', 150, '{}', '{}'),
(306, 'tattoo', 1, 'employe', 'Employé', 100, '{}', '{}'),
(307, 'barber', 0, 'stagiaire', 'Stagiaire', 50, '{}', '{}'),
(308, 'barber', 1, 'employe', 'Employé', 100, '{}', '{}'),
(309, 'barber', 2, 'boss', 'Patron', 150, '{}', '{}'),
(310, 'burgershot', 0, 'recruit', 'Recrue', 50, '{}', '{}'),
(311, 'burgershot', 1, 'employed', 'Employé', 100, '{}', '{}'),
(312, 'burgershot', 2, 'viceboss', 'Co-gérant', 150, '{}', '{}'),
(313, 'burgershot', 3, 'boss', 'Gérant', 200, '{}', '{}'),
(314, 'unemployed2', 0, 'rsa', 'Civil', 0, '{}', '{}');

-- --------------------------------------------------------

--
-- Structure de la table `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('dmv', 'Code de la route'),
('drive', 'Permis de conduire'),
('drive_bike', 'Permis moto'),
('drive_truck', 'Permis camion'),
('weapon', 'Permis de port d\'arme');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(11) NOT NULL,
  `module` varchar(64) DEFAULT NULL,
  `last` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `migrations`
--

INSERT INTO `migrations` (`id`, `module`, `last`) VALUES
(1, 'skin', 0),
(2, 'society', 0);

-- --------------------------------------------------------

--
-- Structure de la table `motorcycle_bike`
--

CREATE TABLE `motorcycle_bike` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `motor_sold`
--

CREATE TABLE `motor_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `open_car`
--

CREATE TABLE `open_car` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  `got` varchar(50) DEFAULT NULL,
  `NB` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `owned_properties`
--

CREATE TABLE `owned_properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `owner` varchar(40) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'State of the car',
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) DEFAULT NULL,
  `stored` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `phone_app_chat`
--

CREATE TABLE `phone_app_chat` (
  `id` int(11) NOT NULL,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `phone_calls`
--

CREATE TABLE `phone_calls` (
  `id` int(11) NOT NULL,
  `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `phone_messages`
--

CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isRead` int(11) NOT NULL DEFAULT '0',
  `owner` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `phone_users_contacts`
--

CREATE TABLE `phone_users_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `properties`
--

INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{\"y\":564.89,\"z\":182.959,\"x\":119.384}', '{\"x\":117.347,\"y\":559.506,\"z\":183.304}', '{\"y\":557.032,\"z\":183.301,\"x\":118.037}', '{\"y\":567.798,\"z\":182.131,\"x\":119.249}', '[]', NULL, 1, 1, 0, '{\"x\":118.748,\"y\":566.573,\"z\":175.697}', 1500000),
(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{\"x\":372.796,\"y\":428.327,\"z\":144.685}', '{\"x\":373.548,\"y\":422.982,\"z\":144.907},', '{\"y\":420.075,\"z\":145.904,\"x\":372.161}', '{\"x\":372.454,\"y\":432.886,\"z\":143.443}', '[]', NULL, 1, 1, 0, '{\"x\":377.349,\"y\":429.422,\"z\":137.3}', 1500000),
(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{\"y\":-379.165,\"z\":37.961,\"x\":-936.363}', '{\"y\":-365.476,\"z\":113.274,\"x\":-913.097}', '{\"y\":-367.637,\"z\":113.274,\"x\":-918.022}', '{\"y\":-382.023,\"z\":37.961,\"x\":-943.626}', '[]', NULL, 1, 1, 0, '{\"x\":-927.554,\"y\":-377.744,\"z\":112.674}', 1700000),
(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{\"y\":440.8,\"z\":146.702,\"x\":346.964}', '{\"y\":437.456,\"z\":148.394,\"x\":341.683}', '{\"y\":435.626,\"z\":148.394,\"x\":339.595}', '{\"x\":350.535,\"y\":443.329,\"z\":145.764}', '[]', NULL, 1, 1, 0, '{\"x\":337.726,\"y\":436.985,\"z\":140.77}', 1500000),
(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{\"y\":502.696,\"z\":136.421,\"x\":-176.003}', '{\"y\":497.817,\"z\":136.653,\"x\":-174.349}', '{\"y\":495.069,\"z\":136.666,\"x\":-173.331}', '{\"y\":506.412,\"z\":135.0664,\"x\":-177.927}', '[]', NULL, 1, 1, 0, '{\"x\":-174.725,\"y\":493.095,\"z\":129.043}', 1500000),
(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{\"y\":596.58,\"z\":142.641,\"x\":-686.554}', '{\"y\":591.988,\"z\":144.392,\"x\":-681.728}', '{\"y\":590.608,\"z\":144.392,\"x\":-680.124}', '{\"y\":599.019,\"z\":142.059,\"x\":-689.492}', '[]', NULL, 1, 1, 0, '{\"x\":-680.46,\"y\":588.6,\"z\":136.769}', 1500000),
(7, 'LowEndApartment', 'Appartement de base', '{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}', '{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}', '{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}', '{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}', '[]', NULL, 1, 1, 0, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 562500),
(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{\"y\":454.955,\"z\":96.462,\"x\":-1294.433}', '{\"x\":-1289.917,\"y\":449.541,\"z\":96.902}', '{\"y\":446.322,\"z\":96.899,\"x\":-1289.642}', '{\"y\":455.453,\"z\":96.517,\"x\":-1298.851}', '[]', NULL, 1, 1, 0, '{\"x\":-1287.306,\"y\":455.901,\"z\":89.294}', 1500000),
(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{\"x\":-853.346,\"y\":696.678,\"z\":147.782}', '{\"y\":690.875,\"z\":151.86,\"x\":-859.961}', '{\"y\":688.361,\"z\":151.857,\"x\":-859.395}', '{\"y\":701.628,\"z\":147.773,\"x\":-855.007}', '[]', NULL, 1, 1, 0, '{\"x\":-858.543,\"y\":697.514,\"z\":144.253}', 1500000),
(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{\"y\":620.494,\"z\":141.588,\"x\":-752.82}', '{\"y\":618.62,\"z\":143.153,\"x\":-759.317}', '{\"y\":617.629,\"z\":143.153,\"x\":-760.789}', '{\"y\":621.281,\"z\":141.254,\"x\":-750.919}', '[]', NULL, 1, 1, 0, '{\"x\":-762.504,\"y\":618.992,\"z\":135.53}', 1500000),
(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{\"y\":37.025,\"z\":42.58,\"x\":-618.299}', '{\"y\":58.898,\"z\":97.2,\"x\":-603.301}', '{\"y\":58.941,\"z\":97.2,\"x\":-608.741}', '{\"y\":30.603,\"z\":42.524,\"x\":-620.017}', '[]', NULL, 1, 1, 0, '{\"x\":-622.173,\"y\":54.585,\"z\":96.599}', 1700000),
(12, 'MiltonDrive', 'Milton Drive', '{\"x\":-775.17,\"y\":312.01,\"z\":84.658}', NULL, NULL, '{\"x\":-775.346,\"y\":306.776,\"z\":84.7}', '[]', NULL, 0, 0, 1, NULL, 0),
(13, 'Modern1Apartment', 'Appartement Moderne 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_01_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.661,\"y\":327.672,\"z\":210.396}', 1300000),
(14, 'Modern2Apartment', 'Appartement Moderne 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_01_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.735,\"y\":326.757,\"z\":186.313}', 1300000),
(15, 'Modern3Apartment', 'Appartement Moderne 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_01_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.386,\"y\":330.782,\"z\":195.08}', 1300000),
(16, 'Mody1Apartment', 'Appartement Mode 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_02_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.615,\"y\":327.878,\"z\":210.396}', 1300000),
(17, 'Mody2Apartment', 'Appartement Mode 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_02_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.297,\"y\":327.092,\"z\":186.313}', 1300000),
(18, 'Mody3Apartment', 'Appartement Mode 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_02_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.303,\"y\":330.932,\"z\":195.085}', 1300000),
(19, 'Vibrant1Apartment', 'Appartement Vibrant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_03_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.885,\"y\":327.641,\"z\":210.396}', 1300000),
(20, 'Vibrant2Apartment', 'Appartement Vibrant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_03_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.607,\"y\":327.344,\"z\":186.313}', 1300000),
(21, 'Vibrant3Apartment', 'Appartement Vibrant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_03_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.525,\"y\":330.851,\"z\":195.085}', 1300000),
(22, 'Sharp1Apartment', 'Appartement Persan 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_04_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.527,\"y\":327.89,\"z\":210.396}', 1300000),
(23, 'Sharp2Apartment', 'Appartement Persan 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_04_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.642,\"y\":326.497,\"z\":186.313}', 1300000),
(24, 'Sharp3Apartment', 'Appartement Persan 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_04_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.503,\"y\":331.318,\"z\":195.085}', 1300000),
(25, 'Monochrome1Apartment', 'Appartement Monochrome 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_05_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.289,\"y\":328.086,\"z\":210.396}', 1300000),
(26, 'Monochrome2Apartment', 'Appartement Monochrome 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_05_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.692,\"y\":326.762,\"z\":186.313}', 1300000),
(27, 'Monochrome3Apartment', 'Appartement Monochrome 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_05_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.094,\"y\":330.976,\"z\":195.085}', 1300000),
(28, 'Seductive1Apartment', 'Appartement Séduisant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_06_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.263,\"y\":328.104,\"z\":210.396}', 1300000),
(29, 'Seductive2Apartment', 'Appartement Séduisant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_06_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.655,\"y\":326.611,\"z\":186.313}', 1300000),
(30, 'Seductive3Apartment', 'Appartement Séduisant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_06_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.3,\"y\":331.414,\"z\":195.085}', 1300000),
(31, 'Regal1Apartment', 'Appartement Régal 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_07_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.956,\"y\":328.257,\"z\":210.396}', 1300000),
(32, 'Regal2Apartment', 'Appartement Régal 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_07_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.545,\"y\":326.659,\"z\":186.313}', 1300000),
(33, 'Regal3Apartment', 'Appartement Régal 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_07_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.087,\"y\":331.429,\"z\":195.123}', 1300000),
(34, 'Aqua1Apartment', 'Appartement Aqua 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_08_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.187,\"y\":328.47,\"z\":210.396}', 1300000),
(35, 'Aqua2Apartment', 'Appartement Aqua 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_08_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.658,\"y\":326.563,\"z\":186.313}', 1300000),
(36, 'Aqua3Apartment', 'Appartement Aqua 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_08_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.287,\"y\":331.084,\"z\":195.086}', 1300000),
(37, 'IntegrityWay', '4 Integrity Way', '{\"x\":-47.804,\"y\":-585.867,\"z\":36.956}', NULL, NULL, '{\"x\":-54.178,\"y\":-583.762,\"z\":35.798}', '[]', NULL, 0, 0, 1, NULL, 0),
(38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{\"x\":-31.409,\"y\":-594.927,\"z\":79.03}', '{\"x\":-26.098,\"y\":-596.909,\"z\":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-11.923,\"y\":-597.083,\"z\":78.43}', 1700000),
(39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{\"x\":-17.702,\"y\":-588.524,\"z\":89.114}', '{\"x\":-16.21,\"y\":-582.569,\"z\":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-26.327,\"y\":-588.384,\"z\":89.123}', 1700000),
(40, 'DellPerroHeights', 'Dell Perro Heights', '{\"x\":-1447.06,\"y\":-538.28,\"z\":33.74}', NULL, NULL, '{\"x\":-1440.022,\"y\":-548.696,\"z\":33.74}', '[]', NULL, 0, 0, 1, NULL, 0),
(41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{\"x\":-1452.125,\"y\":-540.591,\"z\":73.044}', '{\"x\":-1455.435,\"y\":-535.79,\"z\":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1467.058,\"y\":-527.571,\"z\":72.443}', 1700000),
(42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{\"x\":-1451.562,\"y\":-523.535,\"z\":55.928}', '{\"x\":-1456.02,\"y\":-519.209,\"z\":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1457.026,\"y\":-530.219,\"z\":55.937}', 1700000),
(43, 'MazeBankBuilding', 'Maze Bank Building', '{\"x\":-79.18,\"y\":-795.92,\"z\":43.35}', NULL, NULL, '{\"x\":-72.50,\"y\":-786.92,\"z\":43.40}', '[]', NULL, 0, 0, 1, NULL, 0),
(44, 'OldSpiceWarm', 'Old Spice Warm', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(45, 'OldSpiceClassical', 'Old Spice Classical', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(46, 'OldSpiceVintage', 'Old Spice Vintage', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(47, 'ExecutiveRich', 'Executive Rich', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(48, 'ExecutiveCool', 'Executive Cool', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(49, 'ExecutiveContrast', 'Executive Contrast', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(50, 'PowerBrokerIce', 'Power Broker Ice', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(51, 'PowerBrokerConservative', 'Power Broker Conservative', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(52, 'PowerBrokerPolished', 'Power Broker Polished', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(53, 'LomBank', 'Lom Bank', '{\"x\":-1581.36,\"y\":-558.23,\"z\":34.07}', NULL, NULL, '{\"x\":-1583.60,\"y\":-555.12,\"z\":34.07}', '[]', NULL, 0, 0, 1, NULL, 0),
(54, 'LBOldSpiceWarm', 'LB Old Spice Warm', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(55, 'LBOldSpiceClassical', 'LB Old Spice Classical', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(56, 'LBOldSpiceVintage', 'LB Old Spice Vintage', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(57, 'LBExecutiveRich', 'LB Executive Rich', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(58, 'LBExecutiveCool', 'LB Executive Cool', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(59, 'LBExecutiveContrast', 'LB Executive Contrast', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(60, 'LBPowerBrokerIce', 'LB Power Broker Ice', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(61, 'LBPowerBrokerConservative', 'LB Power Broker Conservative', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(62, 'LBPowerBrokerPolished', 'LB Power Broker Polished', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(63, 'MazeBankWest', 'Maze Bank West', '{\"x\":-1379.58,\"y\":-499.63,\"z\":32.22}', NULL, NULL, '{\"x\":-1378.95,\"y\":-502.82,\"z\":32.22}', '[]', NULL, 0, 0, 1, NULL, 0),
(64, 'MBWOldSpiceWarm', 'MBW Old Spice Warm', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(65, 'MBWOldSpiceClassical', 'MBW Old Spice Classical', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(66, 'MBWOldSpiceVintage', 'MBW Old Spice Vintage', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(67, 'MBWExecutiveRich', 'MBW Executive Rich', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(68, 'MBWExecutiveCool', 'MBW Executive Cool', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(69, 'MBWExecutive Contrast', 'MBW Executive Contrast', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(70, 'MBWPowerBrokerIce', 'MBW Power Broker Ice', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(71, 'MBWPowerBrokerConvservative', 'MBW Power Broker Convservative', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(72, 'MBWPowerBrokerPolished', 'MBW Power Broker Polished', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000);

-- --------------------------------------------------------

--
-- Structure de la table `rented_motor`
--

CREATE TABLE `rented_motor` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `rented_vehicles`
--

CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `sim`
--

CREATE TABLE `sim` (
  `identifier` varchar(50) NOT NULL,
  `phone_number` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `truck_inventory2`
--

CREATE TABLE `truck_inventory2` (
  `id` int(11) NOT NULL,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `twitter_accounts`
--

CREATE TABLE `twitter_accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Contenu de la table `twitter_accounts`
--

INSERT INTO `twitter_accounts` (`id`, `username`, `password`, `avatar_url`) VALUES
(7, 'anonyme', '123123', 'https://image.flaticon.com/icons/png/512/149/149071.png'),
(8, 'Braks', 'Dertix91', 'https://image.flaticon.com/icons/png/512/149/149071.png'),
(9, 'toufik', 'serhat', 'https://i.imgur.com/'),
(10, 'anonymous', 'Onepiece9', 'https://image.flaticon.com/icons/png/512/149/149071.png'),
(11, 'weed shop', 'surenos', 'https://image.flaticon.com/icons/png/512/149/149071.png'),
(12, 'Rodrigo ', 'Mafiaayyildiz0', 'https://i.imgur.com/'),
(13, 'Diego Ojo', 'Diego2007@', 'https://image.flaticon.com/icons/png/512/149/149071.png'),
(14, 'EDOUARD', 'IMEV13GM', 'https://i.imgur.com/'),
(17, 'VicAno', 'TiMinou2015', NULL),
(18, 'Antonio', 'Titi974', 'https://image.flaticon.com/icons/png/512/149/149071.png'),
(19, 'WI8LLY', 'ZAYD.WILLY', 'https://image.flaticon.com/icons/png/512/149/149071.png'),
(20, 'Victoire_Rodri', 'victoirelebg', 'https://image.flaticon.com/icons/png/512/149/149071.png'),
(21, 'tom wilson', 'tomwilson', 'https://image.flaticon.com/icons/png/512/149/149071.png'),
(24, 'Sweenz', 'maximevegeta59', 'https://image.flaticon.com/icons/png/512/149/149071.png'),
(25, 'Anthony Fernandez', 'jetestdurp31', 'https://image.flaticon.com/icons/png/512/149/149071.png'),
(26, 'Anthony.F', 'jetestdurp31', 'https://image.flaticon.com/icons/png/512/149/149071.png'),
(27, 'John Corte', 'tototo', 'https://image.flaticon.com/icons/png/512/149/149071.png'),
(28, 'Etienne Rigaud', 'etienne2', 'https://i.imgur.com/');

-- --------------------------------------------------------

--
-- Structure de la table `twitter_likes`
--

CREATE TABLE `twitter_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `twitter_tweets`
--

CREATE TABLE `twitter_tweets` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `likes` int(11) NOT NULL DEFAULT '0',
  `image` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `skin` longtext COLLATE utf8mb4_bin,
  `job` varchar(50) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT '0',
  `job2` varchar(255) COLLATE utf8mb4_bin DEFAULT 'unemployed2',
  `job2_grade` int(11) DEFAULT '0',
  `loadout` longtext COLLATE utf8mb4_bin,
  `position` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  `isDead` bit(1) DEFAULT b'0',
  `status` longtext COLLATE utf8mb4_bin,
  `tattoos` longtext COLLATE utf8mb4_bin,
  `jail` int(11) NOT NULL DEFAULT '0',
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `phone_number` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `accounts` longtext COLLATE utf8mb4_bin,
  `inventory` longtext COLLATE utf8mb4_bin,
  `is_dead` int(11) DEFAULT '0',
  `last_name` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `dob` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `is_male` int(11) DEFAULT '1',
  `accessories` mediumtext COLLATE utf8mb4_bin,
  `first_name` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `jeton` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `user_accessories`
--

CREATE TABLE `user_accessories` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `mask` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin DEFAULT 'Masque',
  `type` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `index` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `user_accounts`
--

CREATE TABLE `user_accounts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) NOT NULL,
  `name` varchar(50) NOT NULL,
  `money` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `user_inventory`
--

CREATE TABLE `user_inventory` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) NOT NULL,
  `item` varchar(50) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) NOT NULL,
  `owner` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `user_tenue`
--

CREATE TABLE `user_tenue` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `tenue` longtext COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `vehicles`
--

CREATE TABLE `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
('Camaro', '21camaro', 75000, 'import'),
('Adder', 'adder', 600000, 'super'),
('Alpha', 'alpha', 9000, 'sports'),
('Asbo', 'asbo', 2000, 'compacts'),
('Asea', 'asea', 1000, 'sedans'),
('Autarch', 'autarch', 120000, 'super'),
('Baller', 'baller2', 15000, 'suvs'),
('Baller Sport', 'baller3', 25000, 'suvs'),
('Banshee', 'banshee', 10000, 'sports'),
('Banshee 900R', 'banshee2', 16000, 'super'),
('Bestia GTS', 'bestiagts', 20000, 'sports'),
('Bf Injection', 'bfinjection', 2000, 'offroad'),
('Bifta', 'bifta', 8000, 'offroad'),
('Bison', 'bison', 15000, 'vans'),
('Blade', 'blade', 3550, 'muscle'),
('Blazer', 'blazer', 2500, 'offroad'),
('Blazer Sport', 'blazer4', 6200, 'offroad'),
('Blista', 'blista', 1500, 'compacts'),
('Bobcat XL', 'bobcatxl', 8550, 'vans'),
('Brioso R/A', 'brioso', 3425, 'compacts'),
('Btype', 'btype', 40000, 'sportsclassics'),
('Btype Hotroad', 'btype2', 75000, 'sportsclassics'),
('Btype Luxe', 'btype3', 50000, 'sportsclassics'),
('Buccaneer', 'buccaneer', 6000, 'muscle'),
('Buccaneer Rider', 'buccaneer2', 7500, 'muscle'),
('Buffalo', 'buffalo', 7500, 'sports'),
('Buffalo S', 'buffalo2', 8500, 'sports'),
('Bullet', 'bullet', 80000, 'super'),
('Burrito', 'burrito3', 3500, 'vans'),
('Camper', 'camper', 35000, 'vans'),
('Casco', 'casco', 38000, 'sportsclassics'),
('Cavalcade', 'cavalcade2', 10000, 'suvs'),
('Cheetah', 'cheetah', 275000, 'super'),
('Chino', 'chino', 4500, 'muscle'),
('Chino Luxe', 'chino2', 6000, 'muscle'),
('CLS', 'cls53', 300000, 'import'),
('Cognoscenti Cabrio', 'cogcabrio', 18500, 'coupes'),
('Cognoscenti', 'cognoscenti', 20000, 'sedans'),
('Comet', 'comet2', 100000, 'sports'),
('Comet 5', 'comet5', 184200, 'sports'),
('Contender', 'contender', 12000, 'suvs'),
('Coquette', 'coquette', 40000, 'sports'),
('Coquette Classic', 'coquette2', 45000, 'sportsclassics'),
('Coquette BlackFin', 'coquette3', 100000, 'muscle'),
('Dominator', 'dominator', 20000, 'muscle'),
('8f Drafter', 'drafter', 100000, 'sports'),
('Dubsta', 'dubsta', 10000, 'suvs'),
('Dubsta Luxuary', 'dubsta2', 21000, 'suvs'),
('Dukes', 'dukes', 21000, 'muscle'),
('Dune Buggy', 'dune', 8000, 'offroad'),
('Elegy', 'elegy2', 12000, 'sports'),
('Emerus', 'emerus', 100000, 'super'),
('Emperor', 'emperor', 8000, 'sedans'),
('Entity XF', 'entityxf', 305000, 'super'),
('Everon', 'everon', 50000, 'offroad'),
('Exemplar', 'exemplar', 20000, 'coupes'),
('F620', 'f620', 26000, 'coupes'),
('Faction', 'faction', 18000, 'muscle'),
('Faction Rider', 'faction2', 26000, 'muscle'),
('Faction XL', 'faction3', 10000, 'muscle'),
('Felon', 'felon', 20000, 'coupes'),
('Felon GT', 'felon2', 25410, 'coupes'),
('Feltzer', 'feltzer2', 50346, 'sports'),
('Stirling GT', 'feltzer3', 65413, 'sportsclassics'),
('FMJ', 'fmj', 112530, 'super'),
('Fhantom', 'fq2', 17000, 'suvs'),
('Fugitive', 'fugitive', 12000, 'sedans'),
('Furia', 'furia', 80000, 'super'),
('Furore GT', 'furoregt', 30000, 'sports'),
('Fusilade', 'fusilade', 17500, 'sports'),
('G65', 'g65amg', 500000, 'import'),
('718', 'game718', 500000, 'import'),
('A45', 'gamea45', 250000, 'import'),
('430s', 'gamef430s', 300000, 'import'),
('Gauntlet', 'gauntlet', 20000, 'muscle'),
('Golf 7r', 'golf75r', 400000, 'import'),
('Grabger', 'granger', 25000, 'suvs'),
('Gresley', 'gresley', 30000, 'suvs'),
('GT 500', 'gt500', 212450, 'sportsclassics'),
('Guardian', 'guardian', 20000, 'offroad'),
('Hotknife', 'hotknife', 100451, 'muscle'),
('Huntley S', 'huntley', 60000, 'suvs'),
('Hustler', 'hustler', 15000, 'muscle'),
('Infernus', 'infernus', 150010, 'super'),
('Intruder', 'intruder', 8000, 'sedans'),
('Issi', 'issi2', 9510, 'compacts'),
('Issi Sport', 'issi7', 50000, 'sports'),
('Jackal', 'jackal', 21000, 'coupes'),
('Jester', 'jester', 30000, 'sports'),
('Jester(Racecar)', 'jester2', 30000, 'sports'),
('Jugular', 'jugular', 100000, 'sports'),
('Kamacho', 'kamacho', 8000, 'offroad'),
('Kanjo', 'kanjo', 3000, 'compacts'),
('Khamelion', 'khamelion', 15000, 'sports'),
('Komoda', 'komoda', 30000, 'sports'),
('Kuruma', 'kuruma', 12000, 'sports'),
('Landstalker', 'landstalker', 60000, 'suvs'),
('RE-7B', 'le7b', 280140, 'super'),
('Locust', 'locust', 50000, 'sports'),
('Lynx', 'lynx', 35000, 'sports'),
('M2', 'm2f22', 200000, 'import'),
('Ford Mustang Mach E', 'mache', 400000, 'import'),
('Classe A', 'macla', 200000, 'import'),
('Mamba', 'mamba', 30000, 'sports'),
('Manana', 'manana', 3500, 'sportsclassics'),
('Massacro', 'massacro', 20000, 'sports'),
('Massacro(Racecar)', 'massacro2', 25000, 'sports'),
('Mesa', 'mesa', 15000, 'suvs'),
('Mesa Trail', 'mesa3', 20000, 'suvs'),
('Minivan', 'minivan', 3000, 'vans'),
('Tesla Model S', 'models', 150000, 'import'),
('Monroe', 'monroe', 25000, 'sportsclassics'),
('Moonbeam', 'moonbeam', 5000, 'vans'),
('Moonbeam Rider', 'moonbeam2', 4000, 'vans'),
('Neo', 'neo', 20000, 'sports'),
('Neon', 'neon', 25000, 'sports'),
('Nightshade', 'nightshade', 10000, 'muscle'),
('9F', 'ninef', 18000, 'sports'),
('9F Cabrio', 'ninef2', 22000, 'sports'),
('Novak', 'novak', 30000, 'suvs'),
('Omnis', 'omnis', 10000, 'sports'),
('Oracle XS', 'oracle2', 5000, 'coupes'),
('Osiris', 'osiris', 200000, 'super'),
('Outlaw', 'outlaw', 30000, 'offroad'),
('Panto', 'panto', 1000, 'compacts'),
('Paradise', 'paradise', 3500, 'vans'),
('Paragon R', 'paragon', 30000, 'sports'),
('Pariah', 'pariah', 200000, 'sports'),
('Patriot', 'patriot', 60000, 'suvs'),
('Penumbra', 'penumbra', 7500, 'sports'),
('Pfister', 'pfister811', 50000, 'super'),
('Phoenix', 'phoenix', 12000, 'muscle'),
('Picador', 'picador', 4000, 'muscle'),
('Pigalle', 'pigalle', 3000, 'sportsclassics'),
('Prairie', 'prairie', 3000, 'compacts'),
('Premier', 'premier', 2000, 'sedans'),
('Primo Custom', 'primo2', 10000, 'sedans'),
('Q7', 'Q7', 200000, 'import'),
('Radius', 'radi', 3000, 'suvs'),
('raiden', 'raiden', 60000, 'sports'),
('Rapid GT', 'rapidgt', 6000, 'sports'),
('Rapid GT Convertible', 'rapidgt2', 8000, 'sports'),
('Rapid GT3', 'rapidgt3', 25000, 'sportsclassics'),
('Reaper', 'reaper', 100000, 'super'),
('Rebel', 'rebel2', 10000, 'offroad'),
('Rebla GTS', 'rebla', 50000, 'suvs'),
('Regina', 'regina', 1500, 'sedans'),
('Retinue', 'retinue', 3500, 'sportsclassics'),
('Revolter', 'revolter', 30000, 'sports'),
('riata', 'riata', 10000, 'offroad'),
('GT63', 'rmodgt63', 500000, 'import'),
('Rocoto', 'rocoto', 20000, 'suvs'),
('RS3', 'rs318', 600000, 'import'),
('RS5', 'rs5r', 300000, 'import'),
('RS6', 'rs6avant20', 800000, 'import'),
('Ruiner 2', 'ruiner2', 7000, 'muscle'),
('Rumpo', 'rumpo', 5000, 'vans'),
('Rumpo Trail', 'rumpo3', 10000, 'vans'),
('Sabre Turbo', 'sabregt', 30000, 'muscle'),
('Sabre GT', 'sabregt2', 20000, 'muscle'),
('Sandking', 'sandking', 35000, 'offroad'),
('Savestra', 'savestra', 15000, 'sportsclassics'),
('SC 1', 'sc1', 100000, 'super'),
('Schafter', 'schafter2', 35000, 'sedans'),
('Schafter V12', 'schafter3', 40000, 'sports'),
('Schlagen GT', 'schlagen', 150000, 'super'),
('Seminole', 'seminole', 20000, 'suvs'),
('Sentinel', 'sentinel', 27500, 'coupes'),
('Sentinel XS', 'sentinel2', 70000, 'coupes'),
('Sentinel3', 'sentinel3', 30000, 'sports'),
('Seven 70', 'seven70', 70000, 'sports'),
('ETR1', 'sheava', 100000, 'super'),
('Slam Van', 'slamvan3', 10000, 'muscle'),
('Stinger', 'stinger', 50000, 'sportsclassics'),
('Stinger GT', 'stingergt', 75000, 'sportsclassics'),
('Stretch', 'stretch', 2000, 'sedans'),
('Sugoi', 'sugoi', 20000, 'sports'),
('Sultan', 'sultan', 1500, 'sports'),
('Sultan Classique', 'sultan2', 30000, 'sports'),
('Sultan RS', 'sultanrs', 15000, 'super'),
('Super Diamond', 'superd', 50000, 'sedans'),
('Surano', 'surano', 40000, 'sports'),
('Surfer', 'surfer', 3500, 'vans'),
('T20', 't20', 200000, 'super'),
('Tailgater', 'tailgater', 8000, 'sedans'),
('Drift Tampa', 'tampa2', 20000, 'sports'),
('Thrax', 'thrax', 200000, 'super'),
('Tropos', 'tropos', 90000, 'sports'),
('Turismo R', 'turismor', 90000, 'super'),
('Tyrus', 'tyrus', 110000, 'super'),
('Vacca', 'vacca', 80000, 'super'),
('Vagrant', 'vagrant', 30000, 'offroad'),
('Verlierer', 'verlierer2', 20000, 'sports'),
('Vigero', 'vigero', 12500, 'muscle'),
('Virgo', 'virgo', 40000, 'muscle'),
('Viseris', 'viseris', 30000, 'sportsclassics'),
('Visione', 'visione', 500000, 'super'),
('Voltic', 'voltic', 28000, 'super'),
('Voodoo', 'voodoo', 6000, 'muscle'),
('V-STR', 'vstr', 30000, 'sports'),
('Warrener', 'warrener', 2000, 'sedans'),
('Washington', 'washington', 8000, 'sedans'),
('Windsor', 'windsor', 65000, 'coupes'),
('Windsor Drop', 'windsor2', 80000, 'coupes'),
('XLS', 'xls', 15000, 'suvs'),
('Yosemite', 'yosemite', 10000, 'muscle'),
('Youga', 'youga', 2750, 'vans'),
('Youga Luxuary', 'youga2', 3500, 'vans'),
('Z190', 'z190', 25000, 'sportsclassics'),
('Zentorno', 'zentorno', 250000, 'super'),
('Zion', 'zion', 10000, 'coupes'),
('Zion Cabrio', 'zion2', 14500, 'coupes'),
('Z-Type', 'ztype', 70000, 'sportsclassics');

-- --------------------------------------------------------

--
-- Structure de la table `vehicles_for_sale`
--

CREATE TABLE `vehicles_for_sale` (
  `id` int(11) NOT NULL,
  `seller` varchar(50) NOT NULL,
  `vehicleProps` longtext NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
('compacts', 'Compacts'),
('coupes', 'Coupés'),
('import', 'Véhicules importés'),
('muscle', 'Muscle'),
('offroad', 'Off Road'),
('sedans', 'Sedans'),
('sports', 'Sports'),
('sportsclassics', 'Sports Classics'),
('super', 'Super'),
('suvs', 'SUVs'),
('vans', 'Vans');

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_sold`
--

CREATE TABLE `vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `yellow_tweets`
--

CREATE TABLE `yellow_tweets` (
  `id` int(11) NOT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `firstname` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  ADD KEY `index_addon_account_data_account_name` (`account_name`);

--
-- Index pour la table `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  ADD KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  ADD KEY `index_addon_inventory_inventory_name` (`inventory_name`);

--
-- Index pour la table `baninfo`
--
ALTER TABLE `baninfo`
  ADD PRIMARY KEY (`identifier`);

--
-- Index pour la table `bank_transfer`
--
ALTER TABLE `bank_transfer`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Index pour la table `banlist`
--
ALTER TABLE `banlist`
  ADD PRIMARY KEY (`identifier`);

--
-- Index pour la table `banlisthistory`
--
ALTER TABLE `banlisthistory`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `bike`
--
ALTER TABLE `bike`
  ADD PRIMARY KEY (`model`);

--
-- Index pour la table `bike_categories`
--
ALTER TABLE `bike_categories`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `datastores`
--
ALTER TABLE `datastores`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  ADD KEY `index_datastore_data_name` (`name`);

--
-- Index pour la table `fine_types`
--
ALTER TABLE `fine_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fine_types_ballas`
--
ALTER TABLE `fine_types_ballas`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fine_types_blanchisseur`
--
ALTER TABLE `fine_types_blanchisseur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fine_types_families`
--
ALTER TABLE `fine_types_families`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fine_types_marabunta`
--
ALTER TABLE `fine_types_marabunta`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fine_types_ms13`
--
ALTER TABLE `fine_types_ms13`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fine_types_surenos`
--
ALTER TABLE `fine_types_surenos`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fine_types_thelost`
--
ALTER TABLE `fine_types_thelost`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fine_types_unemployed2`
--
ALTER TABLE `fine_types_unemployed2`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fine_types_vagos`
--
ALTER TABLE `fine_types_vagos`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `h4ci_item`
--
ALTER TABLE `h4ci_item`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `motorcycle_bike`
--
ALTER TABLE `motorcycle_bike`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `motor_sold`
--
ALTER TABLE `motor_sold`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `open_car`
--
ALTER TABLE `open_car`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `owned_properties`
--
ALTER TABLE `owned_properties`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phone_calls`
--
ALTER TABLE `phone_calls`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phone_messages`
--
ALTER TABLE `phone_messages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rented_motor`
--
ALTER TABLE `rented_motor`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `rented_vehicles`
--
ALTER TABLE `rented_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `sim`
--
ALTER TABLE `sim`
  ADD PRIMARY KEY (`phone_number`);

--
-- Index pour la table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `truck_inventory2`
--
ALTER TABLE `truck_inventory2`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plate` (`plate`);

--
-- Index pour la table `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
  ADD KEY `FK_twitter_likes_twitter_tweets` (`tweetId`);

--
-- Index pour la table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_tweets_twitter_accounts` (`authorId`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`identifier`);

--
-- Index pour la table `user_accessories`
--
ALTER TABLE `user_accessories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_inventory`
--
ALTER TABLE `user_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_tenue`
--
ALTER TABLE `user_tenue`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`model`);

--
-- Index pour la table `vehicles_for_sale`
--
ALTER TABLE `vehicles_for_sale`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `vehicle_sold`
--
ALTER TABLE `vehicle_sold`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `yellow_tweets`
--
ALTER TABLE `yellow_tweets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=805;
--
-- AUTO_INCREMENT pour la table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `bank_transfer`
--
ALTER TABLE `bank_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `banlisthistory`
--
ALTER TABLE `banlisthistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT pour la table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1991;
--
-- AUTO_INCREMENT pour la table `fine_types`
--
ALTER TABLE `fine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT pour la table `fine_types_ballas`
--
ALTER TABLE `fine_types_ballas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `fine_types_blanchisseur`
--
ALTER TABLE `fine_types_blanchisseur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `fine_types_families`
--
ALTER TABLE `fine_types_families`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `fine_types_marabunta`
--
ALTER TABLE `fine_types_marabunta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `fine_types_ms13`
--
ALTER TABLE `fine_types_ms13`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `fine_types_surenos`
--
ALTER TABLE `fine_types_surenos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `fine_types_thelost`
--
ALTER TABLE `fine_types_thelost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `fine_types_unemployed2`
--
ALTER TABLE `fine_types_unemployed2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `fine_types_vagos`
--
ALTER TABLE `fine_types_vagos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `h4ci_item`
--
ALTER TABLE `h4ci_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=315;
--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `motorcycle_bike`
--
ALTER TABLE `motorcycle_bike`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `open_car`
--
ALTER TABLE `open_car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `owned_properties`
--
ALTER TABLE `owned_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `phone_calls`
--
ALTER TABLE `phone_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `phone_messages`
--
ALTER TABLE `phone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT pour la table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `truck_inventory2`
--
ALTER TABLE `truck_inventory2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT pour la table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;
--
-- AUTO_INCREMENT pour la table `user_accessories`
--
ALTER TABLE `user_accessories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT pour la table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `user_inventory`
--
ALTER TABLE `user_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `user_tenue`
--
ALTER TABLE `user_tenue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `vehicles_for_sale`
--
ALTER TABLE `vehicles_for_sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `yellow_tweets`
--
ALTER TABLE `yellow_tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
  ADD CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
